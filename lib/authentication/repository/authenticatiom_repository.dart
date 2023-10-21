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

import "package:demo_app/authentication/exception/login_exception.dart";
import "package:demo_app/authentication/exception/sign_up_exception.dart";
import "package:demo_app/main.dart";
import "package:firebase_auth/firebase_auth.dart";
import "package:multiple_result/multiple_result.dart";

class AuthenticationRepository {
  const AuthenticationRepository();
  static final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

// Get current user
  User? get user => _firebaseAuth.currentUser;

// User state changes
  Stream<User?> get authStateChanges => _firebaseAuth.authStateChanges();

// Login
  Future<Result<UserCredential, LoginException>> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      final resp = await _firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return Success(resp);
    } on FirebaseAuthException catch (e) {
      logger.e(e);
      return Error(LoginException.fromFirebaseAuthCode(e.code));
    } catch (e) {
      logger.e(e);
      return const Error(LoginException());
    }
  }

  // create account
  Future<Result<UserCredential, SignUpException>>
      createUserWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      final resp = await _firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return Success(resp);
    } on FirebaseAuthException catch (e) {
      return Error(SignUpException.fromFirebaseAuthCode(e.code));
    } catch (e) {
      return const Error(SignUpException());
    }
  }
}
