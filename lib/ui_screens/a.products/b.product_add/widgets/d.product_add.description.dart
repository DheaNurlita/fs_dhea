part of '../_index.dart';

class AddDescription extends StatelessWidget {
  const AddDescription({
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
            controller: _dt.rxDescription.controller,
            focusNode: _dt.rxDescription.focusNode,
            onEditingComplete: () => _dt.rxPrice.focusNode.requestFocus(),
            keyboardType: TextInputType.name,
            decoration: InputDecoration(
              labelText: 'Description Name',
              hintText: 'Input Description',
              errorText: _dt.rxDescription.error,
              isDense: true,
            ),
          ),
        ],
      ),
    );
  }
}
