import 'package:flutter/cupertino.dart';

class SettingsModel {
  final String title;
  final IconData mainIcon;
  final IconData backIcon;

  SettingsModel(
      {required this.title, required this.mainIcon, required this.backIcon});
}

List<SettingsModel> itemsList = [
  SettingsModel(
    backIcon: CupertinoIcons.arrow_right,
    title: 'Notification Settings',
    mainIcon: CupertinoIcons.bell,
  ),
  SettingsModel(
    backIcon: CupertinoIcons.arrow_right,
    title: 'Shipping Address',
    mainIcon: CupertinoIcons.shopping_cart,
  ),
  SettingsModel(
    backIcon: CupertinoIcons.arrow_right,
    title: 'Payment Info',
    mainIcon: CupertinoIcons.money_dollar,
  ),
  SettingsModel(
    backIcon: CupertinoIcons.arrow_right,
    title: 'Delete Account',
    mainIcon: CupertinoIcons.delete,
  ),
];
