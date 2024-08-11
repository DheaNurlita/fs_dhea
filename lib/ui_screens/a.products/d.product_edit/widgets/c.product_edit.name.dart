part of '../_index.dart';

class AddNameProduct extends StatelessWidget {
  const AddNameProduct({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return OnFormBuilder(
      listenTo: _dt.rxForm,
      builder: () => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller: _dt.rxName.controller,
            focusNode: _dt.rxName.focusNode,
            onEditingComplete: () => _dt.rxDescription.focusNode.requestFocus(),
            keyboardType: TextInputType.name,
            decoration: InputDecoration(
              labelText: 'Edit Name',
              hintText: 'Edit Name',
              errorText: _dt.rxName.error,
              isDense: true,
            ),
          ),
        ],
      ),
    );
  }
}
