class FeaturedProductModel {
  String img;
  String title;
  String discount;
  String redtitle;
  String code;
  String price;
  String crossprice;
  FeaturedProductModel(this.img, this.title, this.discount, this.redtitle,
      this.code, this.price, this.crossprice);
  static List<FeaturedProductModel> generatedMySourecList() {
    return [
      FeaturedProductModel("images/m1.jpg", "Men`s Pandeing Shirt", '50.00%',
          'Out of Stock', 'P00038', '300.00', '600.00'),
      FeaturedProductModel("images/m2.jpg", "Mens Denim Shirt", '30.00%',
          'Out of Stock', 'P036560', '1960.00', '2800.00'),
      FeaturedProductModel("images/m3.jpg", "Men`s Pandeing Jacket", '40.00%',
          'Out of Stock', 'P00011', '300.00', '600.00'),
      FeaturedProductModel("images/m4.jpg", "Ladis Long White Skit", '70.00%',
          'Out of Stock', 'P00320', '900.00', '1600.00'),
      FeaturedProductModel("images/m5.jpg", "Ladis Long White Skit", '30.00%',
          'Out of Stock', 'P045038', '800.00', '900.00'),
      FeaturedProductModel("images/m6.jpg", "Ladis Long White Skit", '60.00%',
          'Out of Stock', 'P00010', '600.00', '1200.00'),
    ];
  }
}
