import 'package:bloc_tutorial/core/constants/app_dimensions.dart';
import 'package:flutter/material.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
      ),
      body: _buildUi(context),
    );
  }

  Widget _buildUi(context) {
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
              validator: (value){
                if(value!.isEmpty){
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
              validator: (value){
                if(value!.isEmpty){
                  return "Please enter your password";
                }
                return null;
              },
            ),

            mediumHeightSizedBox,
            MaterialButton(
              color: Colors.purple,
              child: const Text(
                "Login",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onPressed: () {
                if(_formKey.currentState?.validate() ?? false){

                }
              },
            )
          ],
        ),
      ),
    );
  }
}
