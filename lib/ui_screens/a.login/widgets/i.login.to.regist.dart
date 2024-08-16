part of '../_index.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        nav.toReplacement(Routes.register);
      },
      child: const Text("Don't have any account ? Sign Up"),
    );
  }
}
