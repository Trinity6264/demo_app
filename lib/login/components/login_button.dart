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
import "package:demo_app/common/utils.dart";
import "package:flutter/material.dart";
import "package:flutter_hooks/flutter_hooks.dart";

class LoginButton extends HookWidget {
  const LoginButton({super.key});

  static final utils = getIt.get<Utils>();

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        
      },
      child: const Text("Login"),
    );
    // return switch (loadingStatus) {
    //   LoginStatus.loading => const Center(
    //       child: CircularProgressIndicator.adaptive(),
    //     ),
    //   (LoginStatus.success || LoginStatus.failure || LoginStatus.initial) =>
    //     TextButton(
    //       onPressed: () async{

    //       },
    //       child: const Text("Login"),
    //     )
    // };
  }
}
