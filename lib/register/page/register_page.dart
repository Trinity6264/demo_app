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

import 'package:demo_app/login/page/login_page.dart';
import 'package:demo_app/verify_email/page/verify_email_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});
  static const route = '/register';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        title: const Text(
          "Register",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          const TextField(
            decoration: InputDecoration(
              hintText: "Enter your email here",
            ),
          ),
          const TextField(
            decoration: InputDecoration(
              hintText: "Enter your Password here",
            ),
          ),
          TextButton(
            onPressed: () {
              context.go(VerifyEmailPage.route);
            },
            child: const Text("Register"),
          ),
          TextButton(
            onPressed: () {
              context.go(LoginPage.route);
            },
            child: const Text("Already registered? Login here!"),
          ),
        ],
      ),
    );
  }
}
