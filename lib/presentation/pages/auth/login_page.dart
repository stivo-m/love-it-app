import 'package:async_redux/async_redux.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:love_it_app/application/redux/flags/flags.dart';
import 'package:love_it_app/application/redux/states/app_state.dart';
import 'package:love_it_app/application/redux/view_models/auth_view_model.dart';
import 'package:love_it_app/application/utils/utils.dart';
import 'package:love_it_app/domain/objects/email_value_object.dart';
import 'package:love_it_app/domain/objects/password_value_object.dart';
import 'package:love_it_app/domain/objects/strings.dart';
import 'package:love_it_app/domain/objects/widget_keys.dart';
import 'package:love_it_app/presentation/pages/auth/widget/auth_header.dart';
import 'package:love_it_app/presentation/router/routes.dart';
import 'package:love_it_app/presentation/widgets/app_button.dart';
import 'package:love_it_app/presentation/widgets/text_input_widget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool autoValidate = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SafeArea(
        child: StoreConnector<AppState, AuthViewModel>(
          converter: (Store<AppState> store) => AuthViewModel.fromStore(store),
          builder: (BuildContext context, AuthViewModel vm) {
            return SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  // header
                  AuthHeader(),
                  const SizedBox(
                    height: 20,
                  ),

                  Form(
                    key: _formKey,
                    autovalidateMode: autoValidate
                        ? AutovalidateMode.onUserInteraction
                        : AutovalidateMode.disabled,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          // input area
                          Text(
                            loginTitle,
                            style:
                                Theme.of(context).textTheme.headline4?.copyWith(
                                      fontWeight: FontWeight.w700,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onBackground,
                                    ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),

                          TextInputWidget(
                            key: AppKes.emailInputKey,
                            controller: _email,
                            hintText: emailText,
                            keyBoardInputType: TextInputType.emailAddress,
                            leading: Icon(CupertinoIcons.mail),
                            validator: validateFormEmail,
                          ),
                          const SizedBox(
                            height: 20,
                          ),

                          TextInputWidget(
                            key: AppKes.passwordInputKey,
                            controller: _password,
                            hintText: passwordText,
                            leading: Icon(CupertinoIcons.lock),
                            obscureText: true,
                            trailing: GestureDetector(
                              onTap: () {},
                              child: Text(
                                forgotPasswordText,
                                style: Theme.of(context)
                                    .textTheme
                                    .caption
                                    ?.copyWith(
                                      color:
                                          Theme.of(context).colorScheme.primary,
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          AppButton(
                            key: AppKes.submitButtonKey,
                            buttonText: loginTitle,
                            isLoading: checkIfWaiting(
                                flag: AppFlags.loginFlag, context: context),
                            onPressed: () {
                              final bool isValid =
                                  _formKey.currentState!.validate();

                              if (!isValid) {
                                setState(() {
                                  autoValidate = true;
                                });
                                return;
                              }

                              _formKey.currentState!.save();
                              vm.login(
                                context: context,
                                emailAddress: EmailAddress.withValue(
                                  input: _email.text,
                                ),
                                password: Password.withValue(
                                  input: _password.text,
                                ),
                              );
                            },
                          ),

                          const SizedBox(
                            height: 30,
                          ),

                          Center(
                            child: TextButton(
                              onPressed: () => Navigator.of(context)
                                  .pushNamed(AppRoutes.registerRoute),
                              child: Text(registerAccountText),
                            ),
                          ),

                          const SizedBox(
                            height: 30,
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
