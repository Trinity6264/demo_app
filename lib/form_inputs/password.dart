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

import "package:formz/formz.dart";
import "package:freezed_annotation/freezed_annotation.dart";

class Password extends FormzInput<String, PasswordValidationError> {
  const Password.pure() : super.pure("");
  const Password.dirty({required String value}) : super.dirty(value);

  static final _passwordRegExp = RegExp(
    r"^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$",
  );

  @override
  PasswordValidationError? validator(String? value) {
    return _passwordRegExp.hasMatch(value ?? "")
        ? null
        : PasswordValidationError.invalid;
  }
}

class PasswordJsonConverter implements JsonConverter<Password, String> {
  const PasswordJsonConverter();

  @override
  Password fromJson(String json) {
    return Password.dirty(value: json);
  }

  @override
  String toJson(Password object) {
    return object.value;
  }
}

enum PasswordValidationError {
  invalid("Password is not valid");

  const PasswordValidationError(this.message);

  final String message;
}
