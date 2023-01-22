class NewArrivalModel {
  String img;
  String title;
  String discount;
  String redtitle;
  String code;
  String price;
  String crossprice;
  NewArrivalModel(this.img, this.title, this.discount, this.redtitle,
      this.code, this.price, this.crossprice);
  static List<NewArrivalModel> generatedMySourecList() {
    return [
      NewArrivalModel("images/n1.jpg", "Men`s Pandeing Jacket", '50.00%',
          'Out of Stock', 'P00010', '300.00', '600.00'),
      NewArrivalModel("images/n2.jpg", "Mens Denim Jacket", '30.00%',
          'Out of Stock', 'P00011', '1960.00', '2800.00'),
      NewArrivalModel("images/n3.jpg", "Men`s Pandeing Shirt", '40.00%',
          'Out of Stock', 'P00001', '300.00', '600.00'),
      NewArrivalModel("images/n4.jpg", "Mens Long White Skit", '70.00%',
          'Out of Stock', 'P00002', '900.00', '1600.00'),
      NewArrivalModel("images/n5.jpg", "Ladis Long White Skit", '30.00%',
          'Out of Stock', 'P00003', '800.00', '900.00'),
      NewArrivalModel("images/n6.jpg", "Ladis Long Blazer", '60.00%',
          'Out of Stock', 'P00014', '600.00', '1200.00'),
    ];
  }
}
