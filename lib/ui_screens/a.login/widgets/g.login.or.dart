part of '../_index.dart';

class LoginOR extends StatelessWidget {
  const LoginOR({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: Divider()),
        SizedBox(height: 20),
        Text('OR'),
        Expanded(child: Divider()),
        SizedBox(height: 20),
      ],
    );
  }
}
