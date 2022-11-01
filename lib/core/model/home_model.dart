class HomeModel {
  final String icon;
  final String title;
  HomeModel({required this.icon, required this.title});
}

List<HomeModel> homeList = [
  HomeModel(icon: "assets/mat.png", title: "Math Puzzle"),
  HomeModel(icon: "assets/br.png", title: "Math Puzzle"),
  HomeModel(icon: "assets/brain.png", title: "Math Puzzle"),
];
