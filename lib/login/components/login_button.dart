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
import 'package:demo_app/common/utils.dart';
import 'package:demo_app/login/controller/login_controller.dart';
import 'package:demo_app/login/model/login_state_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LoginButton extends ConsumerWidget {
  const LoginButton({super.key});

  static final loginController =
      StateNotifierProvider<LoginController, LoginStateModel>(
    (ref) => LoginController(),
  );

  static final utils = getIt.get<Utils>();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loadingStatus =
        ref.watch(loginController.select((value) => value.status));

    final loginFormValidated = ref
        .watch(loginController.select((value) => value.isLoginFormValidated));
    return switch (loadingStatus) {
      LoginStatus.loading => const Center(
          child: CircularProgressIndicator.adaptive(),
        ),
      (LoginStatus.success || LoginStatus.failure || LoginStatus.initial) =>
        TextButton(
          onPressed: () {
            if (loginFormValidated) {
              ref.read(loginController.notifier).login();
              return;
            } else {
              utils.showAlertDialog(
                context: context,
                title: "Invalid form",
                info: "Please check your email and password",
              );
            }
          },
          child: const Text("Login"),
        )
    };
  }
}
