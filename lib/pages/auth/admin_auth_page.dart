import 'package:dartz/dartz.dart' as dartz;
import 'package:dus_dashboard/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

/// determine which page to show based on if the user is logged in or not
class DetermineAuthPage extends StatelessWidget {
  const DetermineAuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => adminController.isLoggedIn ? const ProfilePage() : const AdminAuthPage(),
    );
  }
}

class AdminAuthPage extends StatefulWidget {
  const AdminAuthPage({super.key});

  @override
  State<AdminAuthPage> createState() => _AdminAuthPageState();
}

class _AdminAuthPageState extends State<AdminAuthPage> {
  /// form key for [FormBuilder]
  final GlobalKey<FormBuilderState> _formKey = GlobalKey<FormBuilderState>();
  bool _isPasswordVisible = false;
  bool _isRegister = false;

  @override
  void initState() {
    _isPasswordVisible = false;
    _isRegister = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Card(
          shadowColor: Colors.black12,
          child: Container(
            // height: MediaQuery.of(context).size.height * 0.7,
            width: !_isRegister ? MediaQuery.of(context).size.width * 0.30 : MediaQuery.of(context).size.width * 0.50,
            padding: const EdgeInsets.symmetric(
              horizontal: 40.0,
              vertical: 20.0,
            ),
            child: _isRegister ? _registerForm() : _loginForm(),
          ),
        ),
      ),
    );
  }

  /// [Register] form
  Widget _registerForm() {
    return FormBuilder(
      key: _formKey,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          const Gap(10.0),
          CustomText(
            "Register Admin".toUpperCase(),
            fontSize: 24.0,
            fontWeight: FontWeight.w600,
            letterSpacing: 1.5,
          ),
          const Gap(30.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    FormBuilderTextField(
                      name: 'first_name',
                      keyboardType: TextInputType.text,
                      textInputAction: TextInputAction.continueAction,
                      decoration: const InputDecoration(
                        labelText: 'First Name',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(12.0),
                          ),
                        ),
                      ),
                      validator: FormBuilderValidators.compose([
                        FormBuilderValidators.required(),
                      ]),
                    ),
                    const Gap(10.0),
                    FormBuilderTextField(
                      name: 'last_name',
                      keyboardType: TextInputType.text,
                      textInputAction: TextInputAction.continueAction,
                      decoration: const InputDecoration(
                        labelText: 'Last Name',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(12.0),
                          ),
                        ),
                      ),
                      validator: FormBuilderValidators.compose([
                        FormBuilderValidators.required(),
                      ]),
                    ),
                    const Gap(10.0),
                    FormBuilderTextField(
                      name: 'user_name',
                      keyboardType: TextInputType.text,
                      textInputAction: TextInputAction.continueAction,
                      decoration: const InputDecoration(
                        labelText: 'User Name',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(12.0),
                          ),
                        ),
                      ),
                      validator: FormBuilderValidators.compose([
                        FormBuilderValidators.required(),
                      ]),
                    ),
                    const Gap(10.0),
                    FormBuilderTextField(
                      name: 'phone_number',
                      keyboardType: TextInputType.phone,
                      textInputAction: TextInputAction.continueAction,
                      decoration: const InputDecoration(
                        labelText: 'Phone Number',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(12.0),
                          ),
                        ),
                      ),
                      validator: FormBuilderValidators.compose([
                        FormBuilderValidators.numeric(),
                      ]),
                    ),
                  ],
                ),
              ),
              const Gap(20.0),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    FormBuilderTextField(
                      name: 'email',
                      keyboardType: TextInputType.emailAddress,
                      textInputAction: TextInputAction.continueAction,
                      decoration: const InputDecoration(
                        labelText: 'Email',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(12.0),
                          ),
                        ),
                      ),
                      validator: FormBuilderValidators.compose([
                        FormBuilderValidators.required(),
                        FormBuilderValidators.email(),
                      ]),
                    ),
                    const Gap(10.0),
                    FormBuilderTextField(
                      name: 'password',
                      keyboardType: TextInputType.text,
                      textInputAction: TextInputAction.continueAction,
                      decoration: InputDecoration(
                        labelText: 'Password',
                        border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(12.0),
                          ),
                        ),
                        suffix: InkWell(
                          onTap: () {
                            setState(() {
                              _isPasswordVisible = !_isPasswordVisible;
                            });
                          },
                          child: Icon(
                            _isPasswordVisible ? LineAwesomeIcons.eye_slash : LineAwesomeIcons.eye,
                          ),
                        ),
                      ),
                      obscureText: !_isPasswordVisible,
                      validator: FormBuilderValidators.compose([
                        FormBuilderValidators.required(),
                        FormBuilderValidators.minLength(6),
                      ]),
                    ),
                    const Gap(10.0),
                    FormBuilderTextField(
                      name: 'confirm_password',
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      keyboardType: TextInputType.text,
                      textInputAction: TextInputAction.continueAction,
                      decoration: InputDecoration(
                        labelText: 'Confirm Password',
                        suffixIcon: (_formKey.currentState?.fields['confirm_password']?.hasError ?? false)
                            ? const Icon(LineAwesomeIcons.info_circle, color: Colors.red)
                            : const Icon(LineAwesomeIcons.check_circle, color: Colors.green),
                        border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(12.0),
                          ),
                        ),
                      ),
                      obscureText: !_isPasswordVisible,
                      validator: (String? value) => _formKey.currentState?.fields['password']?.value != value ? 'No coinciden' : null,
                      onSubmitted: (value) => _registerLogic(),
                    ),
                  ],
                ),
              ),
            ],
          ),

          const Gap(50.0),
          CustomButton(
            height: 55.0,
            width: MediaQuery.of(context).size.width * 0.18,
            buttonColor: Theme.of(context).colorScheme.primary,
            onPressed: () => _registerLogic(),
            child: CustomText(
              'Signup'.toUpperCase(),
              color: Theme.of(context).colorScheme.onPrimary,
              fontSize: 16.0,
              fontWeight: FontWeight.w600,
              letterSpacing: 1.5,
            ),
          ),

          /// login button
          const Gap(20.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              // already have an account
              CustomText(
                'Already have an account?',
                color: Theme.of(context).colorScheme.secondary,
                fontSize: 12.0,
                fontWeight: FontWeight.w600,
                letterSpacing: 1.5,
              ),

              /// [Login] button
              InkWell(
                onTap: () {
                  /// clear form
                  _formKey.currentState?.reset();
                  setState(() {
                    _isRegister = false;
                    _isPasswordVisible = false;
                  });
                },
                child: CustomText(
                  'Login'.toUpperCase(),
                  color: Theme.of(context).colorScheme.primary,
                  fontSize: 12.0,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 1.5,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  /// [Login] form
  Widget _loginForm() {
    return FormBuilder(
      key: _formKey,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          const Gap(20.0),
          CustomText(
            "Login Admin".toUpperCase(),
            fontSize: 24.0,
            fontWeight: FontWeight.w600,
            letterSpacing: 1.5,
          ),
          const Gap(50.0),
          FormBuilderTextField(
            name: 'email',
            keyboardType: TextInputType.emailAddress,
            textInputAction: TextInputAction.continueAction,
            decoration: const InputDecoration(
              labelText: 'Email',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(12.0),
                ),
              ),
            ),
            validator: FormBuilderValidators.compose([
              FormBuilderValidators.required(),
              FormBuilderValidators.email(),
            ]),
          ),
          const Gap(25.0),
          FormBuilderTextField(
            name: 'password',
            keyboardType: TextInputType.text,
            textInputAction: TextInputAction.continueAction,
            decoration: InputDecoration(
              labelText: 'Password',
              border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(12.0),
                ),
              ),
              suffix: InkWell(
                onTap: () {
                  setState(() {
                    _isPasswordVisible = !_isPasswordVisible;
                  });
                },
                child: Icon(
                  _isPasswordVisible ? LineAwesomeIcons.eye_slash : LineAwesomeIcons.eye,
                ),
              ),
            ),
            obscureText: !_isPasswordVisible,
            validator: FormBuilderValidators.compose([
              FormBuilderValidators.required(),
              FormBuilderValidators.minLength(6),
            ]),
            onSubmitted: (value) => _loginLogic(),
          ),
          const Gap(20.0),
          CustomButton(
            height: 50.0,
            width: MediaQuery.of(context).size.width * 0.14,
            buttonColor: Theme.of(context).colorScheme.primary,
            onPressed: () => _loginLogic(),
            child: CustomText(
              'Sign In'.toUpperCase(),
              color: Theme.of(context).colorScheme.onPrimary,
              fontSize: 16.0,
              fontWeight: FontWeight.w600,
              letterSpacing: 1.5,
            ),
          ),

          /// register button
          const Gap(20.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              // already have an account
              CustomText(
                "Don't have an account?",
                color: Theme.of(context).colorScheme.secondary,
                fontSize: 12.0,
                fontWeight: FontWeight.w600,
                letterSpacing: 1.5,
              ),

              /// [Login] button
              InkWell(
                onTap: () {
                  /// clear form
                  _formKey.currentState?.reset();
                  setState(() {
                    _isRegister = true;
                    _isPasswordVisible = false;
                  });
                },
                child: CustomText(
                  'Register'.toUpperCase(),
                  color: Theme.of(context).colorScheme.primary,
                  fontSize: 12.0,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 1.5,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  _registerLogic() async {
    bool? isFormValid = _formKey.currentState?.saveAndValidate();
    if (isFormValid == true) {
      // debugPrint(_formKey.currentState?.value.toString());
      Map<String, dynamic> variables = {
        "email": _formKey.currentState?.fields['email']?.value,
        "firstName": _formKey.currentState?.fields['first_name']?.value,
        "lastName": _formKey.currentState?.fields['last_name']?.value,
        "userName": _formKey.currentState?.fields['user_name']?.value,
        "password": _formKey.currentState?.fields['password']?.value,
        "phone": _formKey.currentState?.fields['phone_number']?.value,
      };
      // debugPrint("variables: $variables");
      dartz.Either<Failure, String> response = await adminRepo.registerAdmin(
        data: variables,
      );
      if (!mounted) return;
      response.fold(
        (Failure error) {
          debugPrint("response $response");
          notificationService.showErrorNotification(
            context: context,
            title: "Error",
            message: error.message.toString(),
          );
        },
        (String accessToken) async {
          /// clear form
          _formKey.currentState?.reset();
          await helperFunctions.storeValue(key: "access_token", value: accessToken);
          await helperMethods.getAdminProfile();
          if (!mounted) return;
          const DashboardRoute().go(context);
        },
      );
    }
  }

  _loginLogic() async {
    bool? isFormValid = _formKey.currentState?.saveAndValidate();
    if (isFormValid == true) {
      Map<String, dynamic> variables = {
        "email": _formKey.currentState?.fields['email']?.value,
        "password": _formKey.currentState?.fields['password']?.value,
      };
      dartz.Either<Failure, String> response = await adminRepo.logInAdmin(
        data: variables,
      );
      debugPrint("response $response");
      if (!mounted) return;
      response.fold(
        (Failure failure) {
          notificationService.showErrorNotification(
            context: context,
            title: "Error",
            message: failure.message.isNotEmpty ? failure.message.toString() : "There was an Error, try again later",
          );
          return;
        },
        (String accessToken) async {
          /// clear form
          _formKey.currentState?.reset();
          await helperFunctions.storeValue(key: "access_token", value: accessToken);
          await helperMethods.getAdminProfile();
          if (!mounted) return;
          const DashboardRoute().go(context);
          notificationService.showSuccessNotification(
            context: context,
            title: "Error",
            message: "Login Successfully",
          );
        },
      );
    }
  }
}
