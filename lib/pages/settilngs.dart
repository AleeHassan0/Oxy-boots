import 'package:flutter/material.dart';
import 'package:oxy_boots/models/settings_model.dart';

class Settilngs extends StatefulWidget {
  const Settilngs({super.key});

  @override
  State<Settilngs> createState() => _SettilngsState();
}

class _SettilngsState extends State<Settilngs> {
  bool isSelected = false;
  void toggleSwitch(bool value) {
    setState(() {
      isSelected = !isSelected;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: Colors.white,
        title: const Text('Account & Settings'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Account',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
            for (int i = 0; i < itemsList.length; i++)
              SettingsWidget(
                backIcon: itemsList[i].backIcon,
                title: itemsList[i].title,
                mainIcon: itemsList[i].mainIcon,
              ),
          ],
        ),
      ),
    );
  }
}

class SettingsWidget extends StatelessWidget {
  final String title;
  final IconData mainIcon;
  final IconData backIcon;

  const SettingsWidget({
    super.key,
    required this.title,
    required this.mainIcon,
    required this.backIcon,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(mainIcon),
      title: Text(title),
      trailing: Icon(backIcon),
    );
  }
}
