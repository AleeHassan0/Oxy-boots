class TitleWidgetModel {
  final String image;
  final String tile;
  final String subtilte;
  final String trailing;
  final String bestChoice;

  TitleWidgetModel(
      {required this.bestChoice,
      required this.image,
      required this.tile,
      required this.subtilte,
      required this.trailing});
}

List<TitleWidgetModel> listOfItems = [
  TitleWidgetModel(
      image: 'lib/assets/shoe2.png',
      tile: 'Winter shoes\nNike2024',
      subtilte: '\$30',
      trailing: '3 min ago',
      bestChoice: 'Best Choice'),
  TitleWidgetModel(
      image: 'lib/assets/shoe3.png',
      tile: 'Summer shoes\nNike2024',
      subtilte: '\$39',
      trailing: '49 min ago',
      bestChoice: 'Best Choice'),
  TitleWidgetModel(
      image: 'lib/assets/shoe2.png',
      tile: 'Nike special \nNike2024',
      subtilte: '\$60',
      trailing: '56 min ago',
      bestChoice: 'Best Choice'),
  TitleWidgetModel(
      image: 'lib/assets/shoe3.png',
      tile: 'Nike Air Max\nNike2024',
      subtilte: '\$49',
      trailing: '7 h 30 min ago',
      bestChoice: 'Best Choice'),
  TitleWidgetModel(
      image: 'lib/assets/shoe2.png',
      tile: 'Nike Air Jorden\nNike2024',
      subtilte: '\$50',
      trailing: '9 h 3 min ago',
      bestChoice: 'Best Choice'),
];
