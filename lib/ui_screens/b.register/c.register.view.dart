part of '_index.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(56),
          child: RegisterAppbar(),
        ),
        floatingActionButton: const RegisterFab(),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Card(
              child: Container(
                constraints: const BoxConstraints(maxWidth: 500),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: const EdgeInsets.fromLTRB(30, 70, 30, 70),
                child: OnFormBuilder(
                  listenTo: _dt.rxForm,
                  builder: () => Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Sign Up',
                        style: TextStyle(fontSize: 30),
                      ),
                      const RegistEmail(),
                      const SizedBox(height: 10),
                      const RegistPassword(),
                      const SizedBox(height: 10),
                      const RegistRetype(),
                      const SizedBox(height: 10),
                      const RegistSubmit(),
                      const SizedBox(height: 10),
                      const RegisterBack(),
                      ElevatedButton(
                        onPressed: () {
                          Serv.auth.signOut();
                        },
                        child: const Text(
                          "sign out",
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ));
  }
}
