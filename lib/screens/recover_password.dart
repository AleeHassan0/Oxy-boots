import 'package:flutter/material.dart';
import 'package:oxy_boots/constants/constants.dart';

class RecoverPassword extends StatefulWidget {
  const RecoverPassword({super.key});

  @override
  State<RecoverPassword> createState() => _RecoverPasswordState();
}

class _RecoverPasswordState extends State<RecoverPassword> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Center(
              child: Text(
                'Recover Password',
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 25,
                    letterSpacing: 0),
              ),
            ),
            const Center(
              child: Text(
                'Please Enter Your Email Address To \n     Recieve a Verification Code',
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                    color: Colors.black54),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 40, right: 250),
              child: Text(
                'Email Address',
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 15),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
              child: TextFormField(
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
              ),
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
                    'Continue ',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
