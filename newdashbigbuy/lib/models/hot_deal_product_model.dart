class HotDealProductModel {
  String img;
  String title;
  String discount;
  String redtitle;
  String code;
  String price;
  String crossprice;
  HotDealProductModel(this.img, this.title, this.discount, this.redtitle,
      this.code, this.price, this.crossprice);
  static List<HotDealProductModel> generatedMySourecList() {
    return [
      HotDealProductModel("images/cat1.jpg", "Ladis Long White Skit", '50.00%',
          'Out of Stock', 'P00038', '300.00', '600.00'),
      HotDealProductModel("images/cat2.jpg", "Mens Denim Jacket", '30.00%',
          'Out of Stock', 'P036560', '1960.00', '2800.00'),
      HotDealProductModel("images/cat3.jpg", "Ladis Long White Skit", '40.00%',
          'Out of Stock', 'P00038', '300.00', '600.00'),
      HotDealProductModel("images/cat4.jpg", "Ladis Long White Skit", '70.00%',
          'Out of Stock', 'P00038', '300.00', '600.00'),
      HotDealProductModel("images/cat5.jpg", "Ladis Long White Skit", '30.00%',
          'Out of Stock', 'P00038', '300.00', '600.00'),
      HotDealProductModel("images/cat6.jpg", "Ladis Long White Skit", '60.00%',
          'Out of Stock', 'P00038', '300.00', '600.00'),
    ];
  }
}
