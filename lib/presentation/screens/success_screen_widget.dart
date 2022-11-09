import 'package:flutter/material.dart';

class SuccessScreenWidget extends StatelessWidget {
  const SuccessScreenWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Congratulations!')),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          Image(image: AssetImage('assets/images/success.jpg')),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Text('Dance, please!', style: TextStyle(color: Color.fromRGBO(40, 52, 80, 1), fontSize: 20, fontWeight: FontWeight.bold)),
          )
        ],
      ),
    );
  }
}