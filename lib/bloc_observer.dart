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

import "package:bloc/bloc.dart";
import "package:logger/logger.dart";

final logger = Logger(
  // Customize the printer.
  printer: PrettyPrinter(methodCount: 0, lineLength: 1000),
);

class DemoAppBlocObserver extends BlocObserver {
  @override
  void onEvent(Bloc<dynamic, dynamic> bloc, Object? event) {
    super.onEvent(bloc, event);
    logger.t("$bloc added $event event");
  }

  @override
  void onError(BlocBase<void> bloc, Object error, StackTrace stackTrace) {
    super.onError(bloc, error, stackTrace);
    logger.e(bloc.toString() + error.toString() + stackTrace.toString());
  }

  @override
  void onCreate(BlocBase<void> bloc) {
    super.onCreate(bloc);
    logger.t("${bloc.runtimeType} created");
  }

  @override
  void onClose(BlocBase<void> bloc) {
    super.onClose(bloc);
    logger.t("${bloc.runtimeType} disposed");
  }

  @override
  void onChange(BlocBase<dynamic> bloc, Change<dynamic> change) {
    super.onChange(bloc, change);
    logger.t(
      "The $bloc state changed from ${change.currentState} to ${change.nextState}",
    );
  }

  @override
  void onTransition(
      Bloc<dynamic, dynamic> bloc, Transition<dynamic, dynamic> transition,) {
    super.onTransition(bloc, transition);
    logger.t(
      "The $bloc state transitioned from ${transition.currentState} to ${transition.nextState}",
    );
  }
}
