import 'package:flutter/material.dart';
import 'package:oxy_boots/constants/constants.dart';
import 'package:oxy_boots/models/container_widget.dart';
import 'package:oxy_boots/models/size.dart';
import 'package:oxy_boots/pages/cart_page.dart';
import 'package:oxy_boots/screens/login_screen.dart';

int _selectedSizeIndex = 0;

class ShowdetailPage extends StatefulWidget {
  final String image;
  final String name;
  final String price;
  const ShowdetailPage(
      {super.key,
      required this.image,
      required this.name,
      required this.price});

  @override
  State<ShowdetailPage> createState() => _ShowdetailPageState();
}

class _ShowdetailPageState extends State<ShowdetailPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: Colors.white,
        title: const Text('Shoes Detail'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // ignore: sized_box_for_whitespace
            Container(
                height: size.height * .3,
                width: size.width,
                child: Image.asset(widget.image)),
            const Text(
              'Best Seller',
              style: TextStyle(
                  color: Colors.blue, fontSize: 18, letterSpacing: -1),
            ),
            Text(
              widget.name,
              style: const TextStyle(
                  fontWeight: FontWeight.w500, fontSize: 25, letterSpacing: -1),
            ),
            Text(
              widget.price,
              style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'These shoes have held up incredibly well through regular wear and tear. The materials feel sturdy, and the stitching is tight.',
              style: TextStyle(color: Colors.black54),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Gallery',
              style: TextStyle(
                  fontSize: 20, fontWeight: FontWeight.w500, letterSpacing: -1),
            ),

            ///gallery of shoes
            Padding(
              padding: const EdgeInsets.only(top: 10, right: 5, bottom: 10),
              child: Row(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Image.asset('lib/assets/shoe8.png'),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Image.asset('lib/assets/shoe8.png'),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Image.asset('lib/assets/shoe8.png'),
                  ),
                ],
              ),
            ),
            const Text(
              'Size',
              style: TextStyle(
                  fontSize: 20, fontWeight: FontWeight.w500, letterSpacing: -1),
            ),
            const SizedBox(
              height: 5,
            ),

            ///shoe size list
            // ignore: sized_box_for_whitespace
            Container(
              height: 50,
              child: ListView.builder(
                  itemCount: sizeOfShoe.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: GestureDetector(
                        onTap: () {
                          _selectedSizeIndex = index;
                          setState(() {});
                        },
                        child: Container(
                          height: 30,
                          width: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: index == _selectedSizeIndex
                                  ? const Color(0xff5B9EE1)
                                  : Colors.black12),
                          child: Center(
                              child: Text(
                            sizeOfShoe[index].size,
                            style: TextStyle(
                                color: index == _selectedSizeIndex
                                    ? Colors.white
                                    : Colors.black54,
                                fontSize: 20),
                          )),
                        ),
                      ),
                    );
                  }),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ///save price column
                const Column(
                  children: [
                    Text(
                      'Save     ',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          letterSpacing: -1,
                          color: Colors.black54),
                    ),
                    Text(
                      '\$13.00',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          letterSpacing: -1,
                          color: Colors.black),
                    ),
                  ],
                ),

                ///add to cart button
                InkWell(
                  onTap: () {
                    addToCartShoe.add(Container1(
                        image: widget.image,
                        name: widget.name,
                        price: widget.price));
                  },
                  child: MyCustomButton(
                    size: const Size(160, 10),
                    color: Constants().kColor,
                    child: const Center(
                      child: Text(
                        'Add To Cart',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
