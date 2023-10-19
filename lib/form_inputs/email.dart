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

import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

class Email extends FormzInput<String, EmailValidationError> {
  const Email.pure() : super.pure("");
  const Email.dirty([super.value = ""]) : super.dirty();

  static final _emailRegExp = RegExp(
    r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$",
  );

  @override
  EmailValidationError? validator(String? value) {
    return _emailRegExp.hasMatch(value ?? "")
        ? null
        : EmailValidationError.invalid;
  }
}

class EmailJsonConverter implements JsonConverter<Email, String> {
  const EmailJsonConverter();

  @override
  Email fromJson(String json) {
    return Email.dirty(json);
  }

  @override
  String toJson(Email object) {
    return object.value;
  }
}

enum EmailValidationError {
  invalid("Email is not valid");

  const EmailValidationError(this.message);

  final String message;
}
