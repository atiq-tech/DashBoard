class ExploreModel {
  String img;
  String title;

  ExploreModel(this.img, this.title);
  static List<ExploreModel> generatedMySourecList() {
    return [
      ExploreModel("images/mens.png", "Men`s"),
      ExploreModel("images/womens.png", "Women`s"),
      ExploreModel("images/boys.png", "Boys"),
      ExploreModel("images/girls.png", "Girls"),
      ExploreModel("images/kids.png", "Kids"),
      ExploreModel("images/offers.png", "Offers"),
    ];
  }
}
