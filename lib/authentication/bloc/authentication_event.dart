part of "authentication_bloc.dart";

@freezed
class AuthenticationEvent with _$AuthenticationEvent {
  const factory AuthenticationEvent.onAuthStateChanged() = _AuthStateChanged;
  const factory AuthenticationEvent.onSignOutRequested() = _SignOutRequested;

}
