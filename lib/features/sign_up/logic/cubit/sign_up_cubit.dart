import 'package:care_book/features/sign_up/data/models/sign_up_request_body.dart';
import 'package:care_book/features/sign_up/data/repo/sign_up_repo.dart';
import 'package:care_book/features/sign_up/logic/cubit/sign_up_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpCubit extends Cubit<SignUpState> {
  final SignUpRepo _signUpRepo;
  SignUpCubit(this._signUpRepo) : super(const SignUpState.initial());

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController passwordConfirmationController =
      TextEditingController();
  final formKey = GlobalKey<FormState>();

  void emitSignUpSate() async {
    emit(const SignUpState.loading());

    final response = await _signUpRepo.signUp(SignUpRequestBody(
      name: nameController.text,
      email: emailController.text,
      phone: phoneController.text,
      gender: 0,
      password: passwordController.text,
      passwordConfirmation: passwordConfirmationController.text,
    ));

    response.when(
      success: (signUpResponse) {
        emit(SignUpState.success(signUpResponse));
      },
      failure: (errorHandler) {
        emit(
            SignUpState.error(error: errorHandler.apiErrorModel.message ?? ''));
      },
    );
  }
}
