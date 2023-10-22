import "package:demo_app/app/service_locator.dart";
import "package:demo_app/firebase_options.dart";
import "package:demo_app/router/routers.dart";
import "package:firebase_core/firebase_core.dart";
import "package:flutter/material.dart";
import "package:logger/logger.dart";

final logger = Logger(
  // Customize the printer.
  printer: PrettyPrinter(methodCount: 0, lineLength: 1000),
);

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  setupReisterService();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      title: "Demo",
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
    );
  }
}
