import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/models/signup_request_body.dart';
import '../../data/repos/signup_repo.dart';
import 'sign_up_state.dart';

class SignUpCubit extends Cubit<SignupState> {
  SignUpCubit(this._signupRepo) : super(SignupState.initial());

  final SignupRepo _signupRepo;

  final TextEditingController nameCotroller = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController genderController = TextEditingController();
  final TextEditingController passwordConfirmationController =
      TextEditingController();
  final formKey = GlobalKey<FormState>();

  void emitSignUpState() async {
    emit(const SignupState.signupLoading());

    final response = await _signupRepo.signup(
      SignUpRequestBody(
        nameCotroller.text,
        emailController.text,
        phoneController.text,
        int.parse(genderController.text),
        passwordController.text,
        passwordConfirmationController.text,
      ),
    );
    response.when(
      success:
          (signUpResponse) => emit(SignupState.signupSuccess(signUpResponse)),
      failure:
          (error) => emit(
            SignupState.signupError(error: error.apiErrorModel.message ?? ''),
          ),
    );
  }
}
