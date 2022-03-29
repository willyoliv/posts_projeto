import 'package:flutter/material.dart';
import 'package:projeto01/components/login/custom_login_button_component.dart';
import 'package:projeto01/controllers/login_controller.dart';
import 'package:projeto01/widgets/custom_text_field_widget.dart';

class LoginPage extends StatelessWidget {
  final LoginController _controller = LoginController();
  LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(28),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Icons.people,
              size: MediaQuery.of(context).size.width * 0.3,
            ),
            CustomTextFieldWidget(
              label: 'Login',
              onChanged: _controller.setLogin,
            ),
            CustomTextFieldWidget(
              label: 'Senha',
              onChanged: _controller.setPass,
              obscureText: true,
            ),
            const SizedBox(height: 15),
            CustomLoginButtonComponent(loginController: _controller)
          ],
        ),
      ),
    );
  }
}
