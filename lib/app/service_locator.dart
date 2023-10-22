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

import "package:demo_app/authentication/repository/authenticatiom_repository.dart";
import "package:demo_app/common/utils.dart";
import "package:demo_app/user/local_user.dart";
import "package:get_it/get_it.dart";

final getIt = GetIt.instance;

void setupReisterService() {
  getIt
    ..registerLazySingleton<AuthenticationRepository>(
      AuthenticationRepository.new,
    )
    ..registerLazySingleton<LocalUser>(
      LocalUser.new,
    )
    ..registerLazySingleton<Utils>(
      Utils.new,
    );
}
