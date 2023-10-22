import "package:bloc/bloc.dart";
import "package:demo_app/app/service_locator.dart";
import "package:demo_app/bloc_observer.dart";
import "package:demo_app/demo_app_blocs.dart";
import "package:demo_app/firebase_options.dart";
import "package:demo_app/user/local_user.dart";
import "package:firebase_core/firebase_core.dart";
import "package:flutter/material.dart";

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  setupReisterService();
  await getIt.get<LocalUser>().openBox();
  Bloc.observer = DemoAppBlocObserver();
  runApp(const DemoAppBlocs());
}
