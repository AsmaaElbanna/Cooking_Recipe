import 'package:cooking_recipe_app/screens/register/register_screen.dart';
import 'package:cooking_recipe_app/screens/sign_in/sign_in_screen.dart';
import 'package:flutter/material.dart';
import 'components/custom_button.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          fit: StackFit.loose,
          children: [
            Image.asset(
              'asset/images/background.png',
              fit: BoxFit.fill,
              width: double.infinity,
              height: double.infinity,
            ),
            Positioned(
              child: Container(
                alignment: Alignment.topCenter,
                padding: const EdgeInsets.only(top: 10),
                width: 120,
                height: 120,
                decoration: BoxDecoration(
                  shape: BoxShape.circle, color: Colors.white.withOpacity(0.2),
                  // image: DecorationImage(
                  //   image: ExactAssetImage('asset/images/Mask_Group_8.png'),
                  // ),
                ),
                child: Image.asset('asset/images/Mask_Group_8.png'),
              ),
              top: 230,
              left: 150,
            ),
            const Positioned(
              child: Text(
                'Daily Recipe',
                style: TextStyle(fontSize: 45, color: Colors.white),
              ),
              top: 290,
              left: 85,
            ),
            const Positioned(
              child: Text(
                'Cooking Done The Easy Way',
                style: TextStyle(fontSize: 18, color: Colors.grey),
              ),
              top: 360,
              left: 95,
            ),
            Positioned(
              child: CustomButton('Register', () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const RegisterScreen()));
              }),
              bottom: 100,
              left: 20,
              right: 20,
            ),
            Positioned(
              child: TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignInScreen()));
                },
                child: const Text(
                  'Sign In',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
              bottom: 30,
              left: 150,
              right: 150,
            )
          ],
        ),
      ),
    );
  }
}
