import 'package:flutter/material.dart';

class SignForm extends StatelessWidget {
  String email;
  String password;

  SignForm(this.email, this.password, {Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      child: Column(
        children: [
          TextFormField(
            onChanged: (value) {
              email = value;
              print(email);
            },
            keyboardType: TextInputType.emailAddress,
            decoration: const InputDecoration(
              focusColor: Colors.white,
              fillColor: Colors.red,
              prefixIcon: Icon(
                Icons.email_outlined,
                color: Colors.white,
              ),
              hintText: 'Email Address',
              hintStyle: TextStyle(color: Colors.white),
              labelStyle: TextStyle(color: Colors.white),
            ),
          ),
          const SizedBox(height: 20),
          TextFormField(
            onChanged: (value){
              password = value;
              print(password);
            },
            obscureText: true,
            // keyboardType: TextInputType.number,
            decoration: const InputDecoration(
              focusColor: Colors.white,
              fillColor: Colors.red,
              prefixIcon: Icon(
                Icons.lock_outline,
                color: Colors.white,
              ),
              suffixIcon: Icon(
                Icons.remove_red_eye_outlined,
                color: Colors.white,
              ),
              hintText: 'Email Address',
              hintStyle: TextStyle(color: Colors.white),
              labelStyle: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
