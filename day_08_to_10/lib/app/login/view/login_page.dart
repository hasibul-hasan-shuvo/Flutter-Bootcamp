import 'package:day_08/app/login/controller/login_controller.dart';
import 'package:day_08/app/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class LoginPage extends StatelessWidget {
  final LoginController _controller = LoginController();
  LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: _getBody(context),
      ),
    );
  }

  Widget _getBody(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _getEmailInputField(),
        const SizedBox(height: 10.0),
        _getPasswordInputField(),
        const SizedBox(height: 40.0),
        _getLoginButton(context),
        _getNoAccountButton(context),
      ],
    );
  }

  Widget _getEmailInputField() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20.0),
      child: TextField(
        controller: _controller.emailController,
        decoration: const InputDecoration(
            prefixIcon: Icon(Icons.email_outlined), hintText: "Email"),
        keyboardType: TextInputType.emailAddress,
        onChanged: (String value) {
          print("OnChanged: $value");
        },
      ),
    );
  }

  Widget _getPasswordInputField() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20.0),
      child: TextField(
        controller: _controller.passwordController,
        decoration: const InputDecoration(
          prefixIcon: Icon(Icons.lock_outline),
          suffixIcon: Icon(
            Icons.remove_red_eye_rounded,
          ),
          hintText: "Password",
        ),
        keyboardType: TextInputType.text,
        obscureText: true,
        obscuringCharacter: "0",
      ),
    );
  }

  Widget _getLoginButton(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20.0),
      child: ElevatedButton(
        onPressed: () {
          if (_controller.isInputDataValid()) {
            Fluttertoast.showToast(
              msg: "Successfully logged in",
            );

            Navigator.of(context).popAndPushNamed(
              AppRoutes.HOME,
              arguments: _controller.emailController.text,
            );
          } else {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text("Invalid input"),
              ),
            );
          }
        },
        child: const Text("Login"),
      ),
    );
  }

  Widget _getNoAccountButton(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(
          context,
          AppRoutes.REGISTRATION,
        );
        // Navigator.push(
        //   context,
        //   MaterialPageRoute(
        //     builder: (context) => const HomePage(),
        //     settings: RouteSettings(
        //       arguments: _controller.emailController.text,
        //     ),
        //   ),
        // );
      },
      child: Center(
        child: Container(
            padding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
            child: const Text("No Account? Register here")),
      ),
    );
  }
}
