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

import "package:flutter/material.dart";
import "package:go_router/go_router.dart";

class Utils {
  const Utils();

  void showAlertDialog({
    required BuildContext context,
    required String title,
    required String info,
    IconData icon = Icons.warning_rounded,
    Color iconColor = Colors.red,
  }) {
    showAdaptiveDialog<void>(
      context: context,
      builder: (context) {
        return AlertDialog.adaptive(
          title: Row(
            children: [
              Icon(icon, color: iconColor),
              const SizedBox(width: 5),
              Text(title),
            ],
          ),
          content: Text(info),
          actions: [
            TextButton(
              onPressed: () {
                context.pop();
              },
              child: const Text("Ok"),
            ),
          ],
        );
      },
    );
  }
}
