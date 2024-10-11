class BrandModel {
  final String name;
  final String image;

  BrandModel({required this.name, required this.image});
}

List<BrandModel> brandsList = [
  BrandModel(image: 'lib/assets/nikelogo.png', name: 'Nike'),
  BrandModel(image: 'lib/assets/guccilogo.png', name: 'Gucci'),
  BrandModel(image: 'lib/assets/reeboklogo.png', name: 'Reebok'),
  BrandModel(image: 'lib/assets/adidaslogo.png', name: 'Adidas'),
  BrandModel(image: 'lib/assets/puma.png', name: 'Puma'),
];
