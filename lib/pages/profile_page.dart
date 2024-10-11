import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          title: const Text(
            'Profile',
            style: TextStyle(fontWeight: FontWeight.w400),
          ),
        ),
        backgroundColor: Colors.white,
        body: Column(
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Container(
                height: 140,
                width: 140,
                decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(140)),
                child: Image.asset(
                  'lib/assets/profile.png',
                  fit: BoxFit.fill,
                ),
              ),
            ),
            const Text(
              'Ali hassan',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.black54),
            ),
            const SizedBox(
              height: 50,
            ),
            // ignore: avoid_unnecessary_containers
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    ' Full Name ',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Container(
                    height: 48,
                    width: size.width * .9,
                    decoration: BoxDecoration(
                        color: Colors.black12,
                        borderRadius: BorderRadius.circular(40)),
                    child: const Padding(
                      padding: EdgeInsets.only(left: 10, top: 10),
                      child: Text(
                        'Ali Hassan',
                        style: TextStyle(
                            color: Colors.black54,
                            fontSize: 20,
                            letterSpacing: 0,
                            fontWeight: FontWeight.normal),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    ' Email Address ',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Container(
                    height: 48,
                    width: size.width * .9,
                    decoration: BoxDecoration(
                        color: Colors.black12,
                        borderRadius: BorderRadius.circular(40)),
                    child: const Padding(
                      padding: EdgeInsets.only(left: 10, top: 10),
                      child: Text(
                        'hassan@gmail.com',
                        style: TextStyle(
                            color: Colors.black54,
                            fontSize: 20,
                            letterSpacing: 0,
                            fontWeight: FontWeight.normal),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    ' Password',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Container(
                    height: 48,
                    width: size.width * .9,
                    decoration: BoxDecoration(
                        color: Colors.black12,
                        borderRadius: BorderRadius.circular(40)),
                    child: const Padding(
                      padding: EdgeInsets.only(left: 10, top: 12),
                      child: Text(
                        '* * * * * * * *',
                        style: TextStyle(
                            color: Colors.black54,
                            fontSize: 20,
                            letterSpacing: 0,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
