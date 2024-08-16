part of '../_index.dart';

class RegistEmail extends StatelessWidget {
  const RegistEmail({super.key});

  @override
  Widget build(BuildContext context) {
    return OnFormBuilder(
      listenTo: _dt.rxForm,
      builder: () => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller: _dt.rxEmail.controller,
            focusNode: _dt.rxEmail.focusNode,
            onEditingComplete: () => _dt.rxPassword.focusNode.requestFocus(),
            keyboardType: TextInputType.name,
            decoration: InputDecoration(
              labelText: 'Email',
              hintText: 'Input email',
              errorText: _dt.rxEmail.error,
              isDense: true,
              prefixIcon: const Icon(Icons.email),
            ),
          ),
        ],
      ),
    );
  }
}
