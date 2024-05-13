import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_up_state.dart';
part 'sign_up_cubit.freezed.dart';

class SignupCubit extends Cubit<SignUpState> {
  SignupCubit() : super(SignUpState.initial());
}