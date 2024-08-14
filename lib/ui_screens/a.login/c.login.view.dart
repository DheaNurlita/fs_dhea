part of '_index.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(56),
          child: LoginAppbar(),
        ),
        floatingActionButton: const LoginFab(),
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
                  builder: () => const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Sign In',
                        style: TextStyle(fontSize: 30),
                      ),
                      SizedBox(height: 30),
                      LoginEmail(),
                      SizedBox(height: 30),
                      LoginPassword(),
                      SizedBox(height: 30),
                      LoginSubmit()
                    ],
                  ),
                ),
              ),
            ),
          ),
        ));
  }
}
