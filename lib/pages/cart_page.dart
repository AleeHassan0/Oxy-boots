import 'package:flutter/material.dart';
import 'package:oxy_boots/models/container_widget.dart';
import 'package:oxy_boots/pages/home_page.dart';

final List<Container1> addToCartShoe = [];

class CartPage extends StatefulWidget {
  const CartPage({
    super.key,
  });

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  // ContainerWidget cntnr = ContainerWidget();
  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: const Text(
          'My Cart',
          style: TextStyle(fontWeight: FontWeight.w400),
        ),
      ),
      body: addToCartShoe.isEmpty
          ? Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 100,
                    child: Image.asset('lib/assets/cartlogo.png'),
                  ),
                  const Text(
                    'Your Cart Is Empty',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black54,
                        fontWeight: FontWeight.w500),
                  )
                ],
              ),
            )
          // ignore: avoid_unnecessary_containers
          : Container(
              child: Column(
                children: [
                  GridView.builder(
                      itemCount: addToCartShoe.length,
                      scrollDirection: Axis.vertical,
                      physics: const BouncingScrollPhysics(),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              mainAxisSpacing: 10,
                              crossAxisSpacing: 10),
                      itemBuilder: (BuildContext context, int index) {
                        return ContainerWidget(
                          image: listOfContainer[index].image,
                          name: listOfContainer[index].name,
                          price: listOfContainer[index].price,
                        );
                      })
                ],
              ),
            ),
    );
  }
}
