part of '../_index.dart';

class RegistPassword extends StatelessWidget {
  const RegistPassword({super.key});

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
            onEditingComplete: () => _dt.rxRetypePassword.focusNode.requestFocus(),
            keyboardType: TextInputType.name,
            decoration: InputDecoration(
              labelText: 'Passwordd',
              hintText: 'Input password',
              errorText: _dt.rxPassword.error,
              isDense: true,
              prefixIcon: const Icon(Icons.email),
            ),
          ),
        ],
      ),
    );
  }
}
