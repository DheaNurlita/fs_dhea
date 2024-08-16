part of '../_index.dart';

class LoginByGoogle extends StatelessWidget {
  const LoginByGoogle({super.key});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {
        _ct.signInByGoogle();
      },
      child: const Text('Login by-google'),
    );
  }
}
