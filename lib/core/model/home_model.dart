class HomeModel {
  final String icon;
  final String title;
  HomeModel({required this.icon, required this.title});
}

List<HomeModel> homeList = [
  HomeModel(icon: "assets/maths.png", title: "Math Puzzle"),
  HomeModel(icon: "assets/memo.png", title: "Memory Puzzle"),
  HomeModel(icon: "assets/bü.png", title: "Train Your Brain"),
];
