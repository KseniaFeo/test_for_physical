import 'package:flutter/material.dart';

class AuthWidget extends StatelessWidget {
  const AuthWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Authorization')),
      body: AuthWidgetFields(),
    );
  }
}

class AuthWidgetFields extends StatelessWidget {
  AuthWidgetFields({Key? key}) : super(key: key);

  final _loginTextController = TextEditingController(text: 'admin');
  final _passTextController = TextEditingController(text: 'admin');

  final textStyle = const TextStyle(
    fontSize: 16,
    color: Color.fromRGBO(40, 52, 80, 1),
  );
  final fieldStyle = const InputDecoration(
    border: OutlineInputBorder(),
    focusedBorder: OutlineInputBorder(
        borderSide:
            BorderSide(color: Color.fromRGBO(228, 177, 2, 1), width: 1.0)),
    contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
    isCollapsed: true,
  );

  void _auth(BuildContext context) {
    final login = _loginTextController.text;
    final pass = _passTextController.text;

    if (login == 'admin' && pass == 'admin') {
      Navigator.of(context).pushNamed('/success_screen');
    } else {
      Navigator.of(context).pushNamed('/errors_screen');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Username',
            style: textStyle,
          ),
          TextField(
            controller: _loginTextController,
            decoration: fieldStyle,
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            'Password',
            style: textStyle,
          ),
          TextField(
            controller: _passTextController,
            decoration: fieldStyle,
            obscureText: true,
          ),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
              onPressed: () => _auth(context),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                      const Color.fromRGBO(228, 177, 2, 1)),
                  foregroundColor: MaterialStateProperty.all(
                      const Color.fromRGBO(40, 52, 80, 1)),
                  padding: MaterialStateProperty.all(
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 10)),
                  textStyle: MaterialStateProperty.all(const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.w800))),
              child: const Text('Login'))
        ],
      ),
    );
  }
}
