import "package:bloc/bloc.dart";
import "package:demo_app/authentication/repository/authenticatiom_repository.dart";
import "package:demo_app/form_inputs/email.dart";
import "package:demo_app/form_inputs/password.dart";
import "package:firebase_auth/firebase_auth.dart";
import "package:formz/formz.dart";
import "package:freezed_annotation/freezed_annotation.dart";

part "login_bloc.freezed.dart";
part "login_event.dart";
part "login_state.dart";

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc({required this.authenticationRepository})
      : super(const _LoginState()) {
    on<_EmailTextChanged>(_onEmailTextChanged);
    on<_PasswordTextChanged>(_onPasswordTextChanged);
    on<_Login>(_onLogin);
  }
  final AuthenticationRepository authenticationRepository;

  Future<void> _onEmailTextChanged(
    _EmailTextChanged event,
    Emitter<LoginState> emit,
  ) async {
    final email = Email.dirty(event.value);
    emit(
      state.copyWith(
        email: email,
        isLoginFormValid: Formz.validate(
          [email, state.password],
        ),
      ),
    );
  }

  Future<void> _onPasswordTextChanged(
    _PasswordTextChanged event,
    Emitter<LoginState> emit,
  ) async {
    final password = Password.dirty(value: event.value);
    emit(
      state.copyWith(
        password: password,
        isLoginFormValid: Formz.validate(
          [password, state.email],
        ),
      ),
    );
  }

  Future<void> _onLogin(
    _Login event,
    Emitter<LoginState> emit,
  ) async {
    try {
      if (!state.isLoginFormValid) {
        event.onError("Login forms is not valid");
        return;
      }
      final resp = await authenticationRepository.signInWithEmailAndPassword(
        email: state.email.value,
        password: state.password.value,
      );
      resp.when(
        (success) {
          event.onSuccess(success);
          return;
        },
        (error) {
          event.onError(error.message);

          return null;
        },
      );
    } catch (e) {
      event.onError("Connection failed, try again");
      return;
    }
  }
}
