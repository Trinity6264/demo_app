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

class SignUpException implements Exception {

  const SignUpException([this.message = "Unknown error"]);

  // firebaseAuth code exceptions in factory constructor
  factory SignUpException.fromFirebaseAuthCode(String code) {
    return switch (code) {
      "invalid-email" => const SignUpException("Invalid email address"),
      "user-disabled" => const SignUpException("User disabled"),
      "user-not-found" => const SignUpException("User not found"),
      "wrong-password" => const SignUpException("Wrong password"),
      "too-many-requests" => const SignUpException("Too many requests"),
      "operation-not-allowed" => const SignUpException("Operation not allowed"),
      "email-already-in-use" => const SignUpException("Email already in use"),
      "weak-password" => const SignUpException("Weak password"),
      "requires-recent-login" => const SignUpException("Requires recent login"),
      "user-mismatch" => const SignUpException("User mismatch"),
      "account-exists-with-different-credential" =>
        const SignUpException("Account exists with different credential"),
      "credential-already-in-use" =>
        const SignUpException("Credential already in use"),
      "firebase-auth" => const SignUpException("Firebase auth error"),
      String() => const SignUpException(""),
    };
  }
  final String message;
}
