import "package:bloc/bloc.dart";
import "package:demo_app/authentication/repository/authenticatiom_repository.dart";
import "package:demo_app/form_inputs/email.dart";
import "package:demo_app/form_inputs/password.dart";
import "package:firebase_auth/firebase_auth.dart";
import "package:formz/formz.dart";
import "package:freezed_annotation/freezed_annotation.dart";

part "register_bloc.freezed.dart";
part "register_event.dart";
part "register_state.dart";

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  RegisterBloc({required this.authenticationRepository})
      : super(const _RegisterState()) {
    on<_EmailTextChanged>(_onEmailTextChanged);
    on<_PasswordTextChanged>(_onPasswordTextChanged);
    on<_Registered>(_onRegister);
  }
  final AuthenticationRepository authenticationRepository;

  Future<void> _onEmailTextChanged(
    _EmailTextChanged event,
    Emitter<RegisterState> emit,
  ) async {
    final email = Email.dirty(event.value);
    emit(
      state.copyWith(
        email: email,
        isRegisterFormValid: Formz.validate(
          [email, state.password],
        ),
      ),
    );
  }

  Future<void> _onPasswordTextChanged(
    _PasswordTextChanged event,
    Emitter<RegisterState> emit,
  ) async {
    final password = Password.dirty(value: event.value);
    emit(
      state.copyWith(
        password: password,
        isRegisterFormValid: Formz.validate(
          [password, state.email],
        ),
      ),
    );
  }

  Future<void> _onRegister(
    _Registered event,
    Emitter<RegisterState> emit,
  ) async {
    try {
      if (!state.isRegisterFormValid) {
        event.onError("Register forms is not valid");
        return;
      }
      final resp =
          await authenticationRepository.createUserWithEmailAndPassword(
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
