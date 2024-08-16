part of '../_index.dart';

class RegistRetype extends StatelessWidget {
  const RegistRetype({super.key});

  @override
  Widget build(BuildContext context) {
    return OnFormBuilder(
      listenTo: _dt.rxForm,
      builder: () => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller: _dt.rxRetypePassword.controller,
            focusNode: _dt.rxRetypePassword.focusNode,
            onEditingComplete: () => _dt.rxPassword.focusNode.requestFocus(),
            keyboardType: TextInputType.name,
            decoration: InputDecoration(
              labelText: 're-type password',
              hintText: 'Input password',
              errorText: _dt.rxRetypePassword.error,
              isDense: true,
              prefixIcon: const Icon(Icons.email),
            ),
          ),
        ],
      ),
    );
  }
}
