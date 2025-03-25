import 'package:bloc_tutorial/bloc/login/login_bloc.dart';
import 'package:bloc_tutorial/core/constants/app_dimensions.dart';
import 'package:bloc_tutorial/core/constants/enum.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/components/text_fields/custom_text_field.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  final FocusNode emailFocusNode = FocusNode();
  final FocusNode passwordFocusNode = FocusNode();

  late LoginBloc _loginBloc;

  @override
  void initState() {
    _loginBloc = LoginBloc();
    super.initState();
  }

  @override
  void dispose() {
    _loginBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    debugPrint("Building");
    return BlocProvider(
      create: (_) => _loginBloc,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Login"),
        ),
        body: _buildUi(context),
      ),
    );
  }

  Widget _buildUi(context) {
    debugPrint("Re-Building");
    return Padding(
      padding: kPadding,
      child: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            /// email
            CustomTextField(
              controller: emailController,
              focusNode: emailFocusNode,
              nextFocusNode: passwordFocusNode,
              icon: Icons.mark_email_read_rounded,
              labelText: "Email",
              hintText: "Enter your email",
              validator: (value) {
                if (value!.isEmpty) {
                  return "Please enter your email";
                }
                return null;
              },
            ),
            mediumHeightSizedBox,

            /// password
            CustomTextField(
              controller: passwordController,
              focusNode: passwordFocusNode,
              nextFocusNode: null,
              obscureText: false,
              icon: Icons.password,
              labelText: "Password",
              hintText: "Enter your password",
              validator: (value) {
                if (value!.isEmpty) {
                  return "Please enter your password";
                }
                return null;
              },
            ),

            mediumHeightSizedBox,

            BlocListener<LoginBloc, LoginState>(
              listener: (context, state) {
                if (state.apiStatus == ApiStatus.loading ||
                    state.apiStatus == ApiStatus.error ||
                    state.apiStatus == ApiStatus.success) {
                  ScaffoldMessenger.of(context)
                    ..hideCurrentSnackBar()
                    ..showSnackBar(
                      SnackBar(
                        content: Text(state.message),
                      ),
                    );
                }
              },
              child: BlocBuilder<LoginBloc, LoginState>(
                builder: (context, state) {
                  return MaterialButton(
                    color: Colors.purple,
                    child: state.apiStatus == ApiStatus.loading
                        ? const Center(
                            child: CupertinoActivityIndicator(
                              color: Colors.white,
                            ),
                          )
                        : const Text(
                            "Login",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                    onPressed: () {
                      if (_formKey.currentState?.validate() ?? false) {
                        context.read<LoginBloc>().add(
                              LoginButtonEvent(
                                email: emailController.text,
                                password: passwordController.text,
                              ),
                            );
                      }
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
