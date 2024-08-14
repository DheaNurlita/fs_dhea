part of '../_index.dart';

class LoginPassword extends StatelessWidget {
  const LoginPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return OnFormBuilder(
      listenTo: _dt.rxForm,
      builder: () => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller: _dt.rxPassword.controller,
            focusNode: _dt.rxPassword.focusNode,
            keyboardType: TextInputType.name,
            decoration: InputDecoration(
              labelText: 'Password',
              hintText: 'Input Password',
              errorText: _dt.rxPassword.error,
              isDense: true,
              prefixIcon: const Icon(Icons.password),
            ),
          ),
        ],
      ),
    );
  }
}
