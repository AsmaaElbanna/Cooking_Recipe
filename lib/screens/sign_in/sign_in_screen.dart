import 'dart:async';
import 'dart:convert';
import 'package:cooking_recipe_app/model/user.dart';
import 'package:cooking_recipe_app/screens/register/register_screen.dart';
import 'package:cooking_recipe_app/screens/splash/components/custom_button.dart';
import 'package:cooking_recipe_app/screens/splash/splash_screen.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';


Future<User> fetchUser() async {
  final response = await http
      .post(Uri.parse('https://run.mocky.io/v3/17083a1e-a2d6-44df-83f8-dd07241bc67e'));

  if (response.statusCode == 200) {
    final data =  User.fromJson(jsonDecode(response.body));
    print(data);
    return data;
  } else {
    throw Exception('Failed to load album');
  }
}

class SignInScreen extends StatefulWidget {

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  String email='';
  String password='';

  late Future<User> futureData;

  @override
  void initState() {
    super.initState();
    futureData=fetchUser();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            Container(
              decoration:  BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('asset/images/background.png'),
                  fit: BoxFit.fill,
                  colorFilter: ColorFilter.mode(
                      Colors.grey.withOpacity(0.9), BlendMode.darken),
                ),
              ),
            ),
            Positioned(
              child: Container(
                alignment: Alignment.topCenter,
                padding: const EdgeInsets.only(top: 10),
                width: 120,
                height: 120,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white.withOpacity(0.2),
                  // image: DecorationImage(
                  //   image: ExactAssetImage('asset/images/Mask_Group_8.png'),
                  // ),
                ),
                child: Image.asset('asset/images/Mask_Group_8.png'),
              ),
              top: 100,
              left: 150,
            ),
            const Positioned(
              child: Text(
                'Daily Recipe',
                style: TextStyle(fontSize: 45, color: Colors.white),
              ),
              top: 160,
              left: 85,
            ),
            const Positioned(
                child: Text(
                  'Sign In',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                top: 250,
                left: 180),
            Positioned(
              top: 300,
              right: 10,
              left: 10,
              child: Container(
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
                       // fillColor: Colors.red,
                        prefixIcon: Icon(
                          Icons.lock_outline,
                          color: Colors.white,
                        ),
                        suffixIcon: Icon(
                          Icons.remove_red_eye_outlined,
                          color: Colors.white,
                        ),
                        hintText: 'Password',
                        hintStyle: TextStyle(color: Colors.white),
                        labelStyle: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              child: TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignInScreen()));
                },
                child: const Text(
                  'Forgot Password?',
                  style: TextStyle(fontSize: 14),
                ),
              ),
              top: 450,
              right: 10,
            ),
            Positioned(
              child: CustomButton('Sign In',(){

                //print(futureData.asStream().contains(new User(name: '', id: 12, email: email, isSeller: true, token: password)));



                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => RegisterScreen()));
              }),
              top: 550,
              left: 20,
              right: 20,
            ),
            Positioned(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Don\'t have an account',
                    style: TextStyle(color: Colors.white),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SplashScreen()));
                    },
                    child: const Text(
                      'Register',
                      style: TextStyle(
                          color: Color(0XFFF55A00),
                          fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
              bottom: 5,
              left: 50,
              right: 50,
            ),

          ],
        ),
      ),
    );
  }
}
/*
  Positioned(child: FutureBuilder<User>(
              future: futureData,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return Text(snapshot.data!.email.toString());
                } else if (snapshot.hasError) {
                  return Text('${snapshot.error}');
                }

                // By default, show a loading spinner.
                return const CircularProgressIndicator();
              },
            ),top: 50,)
 */