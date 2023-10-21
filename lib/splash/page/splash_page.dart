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

import "dart:async";

import "package:demo_app/login/page/login_page.dart";
import "package:flutter/material.dart";
import "package:flutter_hooks/flutter_hooks.dart";
import "package:go_router/go_router.dart";

class SplashPage extends HookWidget {
  const SplashPage({super.key});
  static const route = "/";

  @override
  Widget build(BuildContext context) {
    useEffect(() {
      Future.delayed(const Duration(seconds: 3), () {
        context.go(LoginPage.route);
      });
      return;
    }, [],);

    return const Scaffold(
      body: Center(
        child: Text(
          "A ver si funciona",
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
