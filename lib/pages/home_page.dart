import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:oxy_boots/models/brands_list.dart';
import 'package:oxy_boots/models/container_widget.dart';
import 'package:oxy_boots/models/shoedtlmodel.dart';
import 'package:oxy_boots/pages/notification_page.dart';
import 'package:oxy_boots/pages/settilngs.dart';
import 'package:oxy_boots/pages/showdetail_page.dart';
import 'package:oxy_boots/pages/theme.dart';
import 'package:oxy_boots/pages/title_widget_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedBrandIndex = 0;

  RichText myRichText = RichText(
    text: const TextSpan(
      text: '     Store Location',
      style: TextStyle(
        fontSize: 16,
        color: Colors.black54,
        fontWeight: FontWeight.normal,
      ),
      children: <TextSpan>[
        TextSpan(
          text: '\nLahore, Pakistan',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700,
            color: Colors.black,
          ),
        ),
      ],
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: myRichText,
          // automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
        ),
        drawer: Drawer(
            backgroundColor: Colors.white,
            child: Column(
              children: [
                DrawerHeader(
                  child: Container(
                    height: 140,
                    width: 140,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(140)),
                    child: Image.asset(
                      'lib/assets/profile.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                //const Divider(),
                const ListTile(
                  leading: Icon(CupertinoIcons.person),
                  title: Text('Profile'),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ThemeOfApp()));
                  },
                  child: const ListTile(
                    leading: Icon(CupertinoIcons.brightness),
                    title: Text('Theme'),
                  ),
                ),
                const ListTile(
                  leading: Icon(CupertinoIcons.cart),
                  title: Text('My Cart'),
                ),
                const ListTile(
                  leading: Icon(CupertinoIcons.heart),
                  title: Text('Favourite'),
                ),
                const ListTile(
                  leading: Icon(CupertinoIcons.bus),
                  title: Text('Orders'),
                ),
                const ListTile(
                  leading: Icon(CupertinoIcons.bell),
                  title: Text('Notifications'),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => const Settilngs()));
                  },
                  child: const ListTile(
                    leading: Icon(CupertinoIcons.settings),
                    title: Text('Settings '),
                  ),
                ),
                const Divider(),
                const ListTile(
                  leading: Icon(CupertinoIcons.square_arrow_left),
                  title: Text('Log out'),
                ),
              ],
            )),
        // drawer: ,
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              /// search fields
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Looking for shoes',
                    hintStyle: const TextStyle(color: Colors.black54),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.white70),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.white70),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    // icon: Icon(CupertinoIcons.search),
                    filled: true,
                    fillColor: Colors.black12,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),

              ///brands list ui
              SizedBox(
                height: 70,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: brandsList.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: InkWell(
                          onTap: () {
                            _selectedBrandIndex = index;
                            setState(() {});
                          },
                          child: Container(
                            height: 40,
                            // width: 180,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(90),
                                color: index == _selectedBrandIndex
                                    ? const Color(0xff5B9EE1)
                                    : Colors.transparent),
                            child: Row(
                              children: [
                                const SizedBox(
                                  width: 10,
                                ),
                                Container(
                                    clipBehavior: Clip.antiAlias,
                                    height: 60,
                                    width: 60,
                                    decoration: BoxDecoration(
                                        color: index == _selectedBrandIndex
                                            ? Colors.white
                                            : Colors.black12,
                                        shape: BoxShape.circle),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child:
                                          Image.asset(brandsList[index].image),
                                    )),
                                const SizedBox(
                                  width: 10,
                                ),
                                if (index == _selectedBrandIndex)
                                  Text(
                                    brandsList[index].name,
                                    style: const TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white),
                                  ),
                                const SizedBox(
                                  width: 10,
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    }),
              ),
              const SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    for (int a = 0; a < listOfContainer.length; a++)
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ShowdetailPage(
                                        image: shoedtlmodel[a].image,
                                        name: shoedtlmodel[a].name,
                                        price: shoedtlmodel[a].price,
                                      )));
                        },
                        child: ContainerWidget(
                          image: listOfContainer[a].image,
                          name: listOfContainer[a].name,
                          price: listOfContainer[a].price,
                        ),
                      ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Column(
                  children: [
                    for (int i = 0; i < 3; i++)
                      tileWidget(
                        image: listOfItems[i].image,
                        tile: listOfItems[i].tile,
                        subtilte: listOfItems[i].subtilte,
                        trailing: listOfItems[i].bestChoice,
                      )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}

class ContainerWidget extends StatelessWidget {
  final String image;
  final String name;
  final String price;

  const ContainerWidget({
    super.key,
    required this.image,
    required this.name,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 10),
      child: Container(
        height: 210,
        width: 170,
        decoration: BoxDecoration(
            color: Colors.black12, borderRadius: BorderRadius.circular(15)),
        child: Stack(
          children: [
            Positioned(child: Image.asset(image)),
            const Positioned(
                top: 115,
                left: 10,
                child: Text(
                  'BEST SELLER',
                  style: TextStyle(
                      letterSpacing: -1,
                      color: Color(0xff5B9EE1),
                      fontSize: 15,
                      fontWeight: FontWeight.w500),
                )),
            Positioned(
                top: 138,
                left: 10,
                child: Text(
                  name,
                  style: const TextStyle(
                      letterSpacing: -1,
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 18),
                )),
            Positioned(
                top: 170,
                left: 10,
                child: Text(
                  price,
                  style: const TextStyle(
                      letterSpacing: -1,
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 15),
                )),
            Positioned(
                right: 0,
                bottom: 0,
                child: Container(
                  height: 45,
                  width: 45,
                  decoration: const BoxDecoration(
                      color: Color(0xff5B9EE1),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20))),
                  child: const Center(
                    child: Text(
                      '+',
                      style: TextStyle(fontSize: 30, color: Colors.white),
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
