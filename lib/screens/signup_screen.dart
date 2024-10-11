import 'package:flutter/material.dart';
import 'package:oxy_boots/constants/constants.dart';
import 'package:oxy_boots/screens/login_screen.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Center(
              child: Text(
                'Create Account',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
            ),
            const Center(
              child: Text(
                "Let's Create Account Together",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Colors.black54),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 50, right: 270),
              child: Text(
                'Your Name',
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 15),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
              child: inputDecoration(),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 30, right: 240),
              child: Text(
                'Email Address ',
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 15),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
              child: inputDecoration(),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 30, right: 270),
              child: Text(
                'Password  ',
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 15),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
              child: inputDecoration(),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Container(
                height: 53,
                width: size.width * .9,
                decoration: BoxDecoration(
                    color: Constants().kColor,
                    borderRadius: BorderRadius.circular(39)),
                child: const Center(
                  child: Text(
                    'Sign Up ',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Container(
                height: 53,
                width: size.width * .9,
                decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.circular(39)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('lib/assets/google.png'),
                    const Text(
                      'Sign up with google ',
                      style: TextStyle(
                          color: Colors.black54,
                          fontSize: 20,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 39),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Already Have An Account?",
                    style: TextStyle(color: Colors.black54),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginScreen()));
                    },
                    child: const Text(
                      'Sign In',
                      style: TextStyle(color: Colors.black),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  TextFormField inputDecoration() {
    return TextFormField(
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.white70),
          borderRadius: BorderRadius.circular(30),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.white70),
          borderRadius: BorderRadius.circular(30),
        ),
        filled: true,
        fillColor: Colors.black12,
      ),
    );
  }
}
