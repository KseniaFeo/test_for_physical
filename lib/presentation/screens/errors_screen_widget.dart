import 'package:flutter/material.dart';
class ErrorsScreenWidget extends StatelessWidget {
  const ErrorsScreenWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Something wrong', style: TextStyle(color: Colors.white),), backgroundColor: Colors.red,),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          Image(image: AssetImage('assets/images/error.jpg')),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Text('Try again, please', style: TextStyle(color: Colors.red, fontSize: 20, fontWeight: FontWeight.bold)),
          )
        ],
      ),
    );
  }
}