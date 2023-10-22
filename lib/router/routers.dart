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

import "package:demo_app/bloc_observer.dart";
import "package:demo_app/login/page/login_page.dart";
import "package:demo_app/register/page/register_page.dart";
import "package:demo_app/router/go_router_observer.dart";
import "package:demo_app/splash/page/splash_page.dart";
import "package:demo_app/verify_email/page/verify_email_page.dart";
import "package:go_router/go_router.dart";

final router = GoRouter(
  onException: (context, state, router) {
    logger.e("The ${state.uri.path} does not exist");
  },
  observers: [
    DemoAppRouterObserver(),
  ],
  initialLocation: "/",
  debugLogDiagnostics: true,
  routes: <GoRoute>[
    GoRoute(
      path: SplashPage.route,
      builder: (context, state) => const SplashPage(),
    ),
    GoRoute(
      path: LoginPage.route,
      builder: (context, state) => const LoginPage(),
    ),
    GoRoute(
      path: RegisterPage.route,
      builder: (context, state) => const RegisterPage(),
    ),
    GoRoute(
      path: VerifyEmailPage.route,
      builder: (context, state) => const VerifyEmailPage(),
    ),
  ],
);
