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

import "package:demo_app/app/service_locator.dart";
import "package:demo_app/authentication/repository/authenticatiom_repository.dart";
import "package:demo_app/login/model/login_state_model.dart";
import "package:demo_app/main.dart";
import "package:firebase_auth/firebase_auth.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";

class LoginController extends StateNotifier<LoginStateModel> {
  LoginController() : super(LoginStateModel());
  final _authRepository = getIt<AuthenticationRepository>();

  void emailChanged(String value) {
    state = state.copyWith(email: value);
    logger.i(state);
  }

  void passwordChanged(String value) {
    state = state.copyWith(password: value);
    logger.i(state);
  }

  Future<void> login({
    required void Function(UserCredential userCredential) onSuccess,
    required void Function(String message) onFailed,
    required void Function(String message) onError,
  }) async {
    state = state.copyWith(status: LoginStatus.loading);
    final email = state.email;
    final password = state.password;
    if (email.isEmpty || password.isEmpty) {
      onError("Email or password is empty");
      state = state.copyWith(
        status: LoginStatus.failure,
      );
      return;
    }
    if (!email.contains("@")) {
      onError("Email is invalid");
      state = state.copyWith(
        status: LoginStatus.failure,
      );
      return;
    }

    if (password.length < 6) {
      onError("Password must be at least 6 characters");
      state = state.copyWith(
        status: LoginStatus.failure,
      );
      return;
    }

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
        onSuccess(userCredential);
      },
      (exception) {
        logger.e(exception.message);
        onFailed(exception.message);
        state = state.copyWith(
          status: LoginStatus.failure,
        );
      },
    );
  }
}
