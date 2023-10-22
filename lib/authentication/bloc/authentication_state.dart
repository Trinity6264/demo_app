part of "authentication_bloc.dart";

@freezed
class AuthenticationState with _$AuthenticationState {
  const factory AuthenticationState.authenticate({
    required User user,
    @Default(0) int lastSignTime,
  }) = _Authenticate;

  const factory AuthenticationState.unauthenticate() = _Unauthenticate;

  const AuthenticationState._();

  bool get isAuthenticated => this is _Authenticate;

  bool get isUnauthenticated => this is _Unauthenticate;

  User get userDetail {
    return (this as _Authenticate).user;
  }

  int get lastSignInTime {
    return (this as _Authenticate).lastSignInTime;
  }

  String? get userID {
    if (this is _Authenticate) {
      return (this as _Authenticate).user.uid;
    }
    return null;
  }
}
