part of '../_index.dart';

class AddPrice extends StatelessWidget {
  const AddPrice({
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
            controller: _dt.rxPrice.controller,
            focusNode: _dt.rxPrice.focusNode,
            onEditingComplete: () => _dt.rxQuantity.focusNode.requestFocus(),
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              labelText: 'Product Price',
              hintText: 'Input Price',
              errorText: _dt.rxPrice.error,
              isDense: true,
            ),
          ),
        ],
      ),
    );
  }
}
