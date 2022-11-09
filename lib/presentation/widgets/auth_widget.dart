import 'package:flutter/material.dart';

class AuthWidget extends StatefulWidget {
  const AuthWidget({Key? key}) : super(key: key);

  @override
  State<AuthWidget> createState() => _AuthWidgetState();
}

class _AuthWidgetState extends State<AuthWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Authorization')),
      body: const AuthWidgetFields(),
    );
  }
}

class AuthWidgetFields extends StatefulWidget {
  const AuthWidgetFields({Key? key}) : super(key: key);

  @override
  State<AuthWidgetFields> createState() => _AuthWidgetFieldsState();
}

class _AuthWidgetFieldsState extends State<AuthWidgetFields> {
  final _loginTextController = TextEditingController(text: 'admin');
  final _passTextController = TextEditingController(text: 'admin');

  void _auth() {
    final login = _loginTextController.text;
    final pass = _passTextController.text;

    if (login == 'admin' && pass == 'admin') {
      Navigator.of(context).pushNamed('/success_widget');
    } else {
      Navigator.of(context).pushNamed('/errors_widget');
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(
      fontSize: 16,
      color: Color.fromRGBO(40, 52, 80, 1),
    );
    const fieldStyle = InputDecoration(
      border: OutlineInputBorder(),
      focusedBorder: OutlineInputBorder(
          borderSide:
              BorderSide(color: Color.fromRGBO(228, 177, 2, 1), width: 1.0)),
      contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      isCollapsed: true,
    );
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
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
          const Text(
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
              onPressed: _auth,
              child: const Text('Login'),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                      const Color.fromRGBO(228, 177, 2, 1)),
                  foregroundColor: MaterialStateProperty.all(
                      const Color.fromRGBO(40, 52, 80, 1)),
                  padding: MaterialStateProperty.all(
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 10)),
                  textStyle: MaterialStateProperty.all(const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.w800))))
        ],
      ),
    );
  }
}
