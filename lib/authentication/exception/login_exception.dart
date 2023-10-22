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

class LoginException implements Exception {
  const LoginException([this.message = "Unknown error"]);

  // firebaseAuth code exceptions in factory constructor
  factory LoginException.fromFirebaseAuthCode(String code) {
    return switch (code) {
      "invalid-email" => const LoginException("Invalid email address"),
      "INVALID_LOGIN_CREDENTIALS" =>
        const LoginException("Email or Password is Invalid"),
      "user-disabled" => const LoginException("User disabled"),
      "user-not-found" => const LoginException("User not found"),
      "wrong-password" => const LoginException("Wrong password"),
      "too-many-requests" => const LoginException("Too many requests"),
      "operation-not-allowed" => const LoginException("Operation not allowed"),
      "email-already-in-use" => const LoginException("Email already in use"),
      "weak-password" => const LoginException("Weak password"),
      "requires-recent-login" => const LoginException("Requires recent login"),
      "user-mismatch" => const LoginException("User mismatch"),
      "account-exists-with-different-credential" =>
        const LoginException("Account exists with different credential"),
      String() => const LoginException(),
    };
  }
  final String message;
}
