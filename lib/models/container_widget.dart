
class Container1 {
  final String image;
  final String name;
  final String price;

  Container1({required this.image, required this.name, required this.price});


}

List<Container1> listOfContainer = [
  Container1(
    image: 'lib/assets/shoe9.png',
    name: 'Nike Air',
    price: '\$55',
  ),
  Container1(image: 'lib/assets/shoe6.png', name: 'Summer best', price: '\$59'),
  Container1(image: 'lib/assets/shoe7.png', name: 'Adidas', price: '\$79'),
  Container1(image: 'lib/assets/puma1.png', name: 'Puma', price: '\$40'),
  Container1(
    image: 'lib/assets/shoe9.png',
    name: 'Gucci',
    price: '\$66',
  ),
];
