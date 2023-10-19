// Copyright 2023 trinity
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'package:demo_app/app/service_locator.dart';
import 'package:demo_app/authentication/repository/authenticatiom_repository.dart';
import 'package:demo_app/form_inputs/email.dart';
import 'package:demo_app/form_inputs/password.dart';
import 'package:demo_app/login/model/login_state_model.dart';
import 'package:demo_app/main.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:formz/formz.dart';

class LoginController extends StateNotifier<LoginStateModel> {
  LoginController() : super(LoginStateModel());
  final _authRepository = getIt<AuthenticationRepository>();

  void emailChanged(String value) {
    final email = Email.dirty(value: value);
    state = state.copyWith(
      email: email,
      password: state.password,
      isLoginFormValidated: Formz.validate([email, state.password]),
    );
    logger.i(state);
  }

  void passwordChanged(String value) {
    final password = Password.dirty(value);
    state = state.copyWith(
      password: password,
      email: state.email,
      isLoginFormValidated: Formz.validate([state.email, password]),
    );
    logger.i(state);
  }

  Future<void> login() async {
    state = state.copyWith(status: LoginStatus.loading);
    final email = state.email.value;
    final password = state.password.value;
    logger.i("state: $state");
    final result = await _authRepository.signInWithEmailAndPassword(
      email: email,
      password: password,
    );

    result.when(
      (userCredential) {
        logger.i(userCredential);
        state = state.copyWith(
          status: LoginStatus.success,
        );
      },
      (exception) {
        logger.e(exception.message);
        state = state.copyWith(
          status: LoginStatus.failure,
        );
      },
    );
  }
}
