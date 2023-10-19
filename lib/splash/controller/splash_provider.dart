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

import 'package:demo_app/splash/model/splash_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final splashProvider = Provider<String>((ref) {
  ref.state = "AMoah";
  return "Amoah";
});

final splashStateProvider = StateProvider<int>((ref) {
  return 0;
});


class SpalshNotifier extends StateNotifier<SplashModel> {
  SpalshNotifier(): super(SplashModel(label: "Amoah"));


  void increment() {
    state = state.copyWith(count: state.count + 1);
  }

  void decrement() {
    state = state.copyWith(count: state.count - 1);
  }

  void changeLabel(String label) {
    state = state.copyWith(label: label);
  }
  
}