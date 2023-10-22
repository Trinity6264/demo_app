import "dart:async";

import "package:bloc/bloc.dart";
import "package:demo_app/authentication/repository/authenticatiom_repository.dart";
import "package:firebase_auth/firebase_auth.dart";
import "package:freezed_annotation/freezed_annotation.dart";

part "authentication_bloc.freezed.dart";
part "authentication_event.dart";
part "authentication_state.dart";

class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  AuthenticationBloc({
    required this.authenticationRepository,
  }) : super(const _Unauthenticate()) {
    on<_AuthStateChanged>(_onAuthStateChanged);
    on<_SignOutRequested>(_onSignOutRequested);
  }
  final AuthenticationRepository authenticationRepository;

  Future<void> _onAuthStateChanged(
    _AuthStateChanged event,
    Emitter<AuthenticationState> emit,
  ) async {
    await emit.forEach(
      authenticationRepository.authStateChanges,
      onData: (User? data) {
        // logger.d(data);
        if (data != null) {
          return _Authenticate(user: data);
        }

        return const _Unauthenticate();
      },
    );
  }

  Future<void> _onSignOutRequested(
    _SignOutRequested event,
    Emitter<AuthenticationState> emit,
  ) async {
    unawaited(authenticationRepository.signOut());
  }
}
