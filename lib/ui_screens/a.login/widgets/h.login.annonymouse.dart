part of '../_index.dart';

class LoginAnnony extends StatelessWidget {
  const LoginAnnony({super.key});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {
        _ct.signInAnnonimouse();
      },
      child: const Text('Login Annonymouse'),
    );
    // OnFormBuilder(
    //     listenTo: _dt.rxForm,
    //     builder: () =>

    //     OnFormSubmissionBuilder(
    //           listenTo: _dt.rxForm,
    //           onSubmitting: () => const Center(
    //             child: CircularProgressIndicator(),
    //           ),
    //           child: OutlinedButton(
    //             onPressed: () {
    //               _ct.signInAnnonimouse();
    //             },
    //             child: const Text('login Annonymouse'),
    //           ),
    //         ));
  }
}
