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

import "package:demo_app/login/page/login_page.dart";
import "package:flutter/material.dart";
import "package:go_router/go_router.dart";


class VerifyEmailPage extends StatelessWidget {
  const VerifyEmailPage({super.key});
  static const route = "/verify_email";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Verify Email",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text("Please verify your email address"),
            ),
            TextButton(
              onPressed: () {},
              child: const Text("Send email verification"),
            ),
            TextButton(
              onPressed: () async {
                context.go(LoginPage.route);
              },
              child: const Text("Restart"),
            ),
          ],
        ),
      ),
    );
  }
}
