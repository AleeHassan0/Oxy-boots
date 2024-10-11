import 'package:flutter/material.dart';
import 'package:oxy_boots/pages/title_widget_model.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          title: const Text(
            'Notifications',
            style: TextStyle(fontWeight: FontWeight.w400),
          ),
        ),
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    'Today',
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 20),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                for (int i = 0; i < listOfItems.length; i++)
                  tileWidget(
                    image: listOfItems[i].image,
                    tile: listOfItems[i].tile,
                    subtilte: listOfItems[i].subtilte,
                    trailing: listOfItems[i].trailing,
                  )
              ],
            ),
          ),
        ));
  }
}

// ignore: camel_case_types
class tileWidget extends StatelessWidget {
  final String image;
  final String tile;
  final String subtilte;
  final String trailing;
  const tileWidget({
    super.key,
    required this.image,
    required this.tile,
    required this.subtilte,
    required this.trailing,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: ListTile(
        tileColor: Colors.black12,
        hoverColor: Colors.white,
        leading: Image.asset(image),
        title: Text(
          tile,
          style: const TextStyle(
            letterSpacing: 0,
            fontWeight: FontWeight.w500,
          ),
        ),
        subtitle: Text(
          subtilte,
        ),
        isThreeLine: true,
        trailing: Text(
          trailing,
          style: const TextStyle(fontSize: 13),
        ),
        dense: false,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        onTap: () {},
      ),
    );
  }
}
