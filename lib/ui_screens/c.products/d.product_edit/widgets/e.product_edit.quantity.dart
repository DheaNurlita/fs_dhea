part of '../_index.dart';

class AddQuantity extends StatelessWidget {
  const AddQuantity({
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
            controller: _dt.rxQuantity.controller,
            focusNode: _dt.rxQuantity.focusNode,
            onEditingComplete: () => _dt.rxDescription.focusNode.requestFocus(),
            keyboardType: TextInputType.name,
            decoration: InputDecoration(
              labelText: 'Edit Quantity',
              hintText: 'Edit Quantity',
              errorText: _dt.rxQuantity.error,
              isDense: true,
            ),
          ),
        ],
      ),
    );
  }
}
