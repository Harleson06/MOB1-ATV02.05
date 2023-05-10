import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';


class EmailValidatorPage extends StatefulWidget {
  const EmailValidatorPage({Key? key}) : super(key: key);

  @override
  _EmailValidatorPageState createState() => _EmailValidatorPageState();
}

class _EmailValidatorPageState extends State<EmailValidatorPage> {
  late String _email;
  bool _isValid = false;

  void _validateEmail(String value) {
    setState(() {
      _email = value;
      _isValid = EmailValidator.validate(_email);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Validador de E-mail'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Entre com seu E-mail',
              ),
              onChanged: (value) => _validateEmail(value),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(_isValid ? 'Email is valid.' : 'Email is not valid.'),
          ),
        ],
      ),
    );
  }
}




