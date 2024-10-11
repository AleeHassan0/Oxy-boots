class Shoedtlmodel {
  final String image;
  final String name;
  final String price;

  Shoedtlmodel({required this.image, required this.name, required this.price});
}

List<Shoedtlmodel> shoedtlmodel = [
  Shoedtlmodel(image: 'lib/assets/shoe9.png', name: 'Nike Air', price: '\$55'),
  Shoedtlmodel(
      image: 'lib/assets/shoe6.png', name: 'Summer Best', price: '\$59'),
  Shoedtlmodel(image: 'lib/assets/shoe7.png', name: 'Adidas', price: '\$79'),
  Shoedtlmodel(image: 'lib/assets/puma1.png', name: 'Puma', price: '\$40'),
  Shoedtlmodel(image: 'lib/assets/shoe9.png', name: 'Gucci', price: '\$66'),
];
