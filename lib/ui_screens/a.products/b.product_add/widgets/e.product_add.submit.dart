part of '../_index.dart';

class ProductSubmit extends StatelessWidget {
  const ProductSubmit({super.key});

  @override
  Widget build(BuildContext context) {
    return OnFormBuilder(
        listenTo: _dt.rxForm,
        builder: () => OnFormSubmissionBuilder(
              listenTo: _dt.rxForm,
              onSubmitting: () => const Center(
                child: CircularProgressIndicator(),
              ),
              child: OutlinedButton(
                onPressed: _dt.rxForm.isDirty && _dt.rxForm.isValid
                    ? () {
                        _ct.submit();
                      }
                    : null,
                child: const Text('Submit'),
              ),
            ));
  }
}
