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

import "package:demo_app/user/model/local_user_model.dart";
import "package:hive/hive.dart";

class LocalUser {
  static String user = "User";
  static Box<LocalUserModel> userBox = Hive.box<LocalUserModel>(user);

  Future<void> openBox() async {
    await Hive.openBox<LocalUserModel>(user);
  }

  StreamSubscription<BoxEvent> watchUserDetail() {
    return userBox.watch().listen((event) => event.value);
  }

  Future<LocalUserModel?> getUserDetail() async {
    return userBox.get(user);
  }

  Future<void> updateUserDetail({
    required String email,
    required String uid,
    required bool isVerified,
  }) async {
    final value = LocalUserModel(email: email, uid: uid, isVerfied: isVerified);
    await userBox.add(value);
  }
}
