class Product {
  late int productId;
  late int categoryId;
  late String productName;
  late int unitPrice;
  late int unitsInStock;

  Product(this.productId, this.categoryId, this.productName,
      this.unitPrice, this.unitsInStock);

  Product.formJson(Map json) {
    this.productId = json["id"];
    this.categoryId = json["categoryId"];
    this.productName = json["productName"];
    this.productName = json["productName"];
    this.unitPrice = json["unitPrice"];
    this.unitsInStock = json["unitsInStock"];
  }

  Map toJson() {
    return {
      "productId": productId,
      "categoryId": categoryId,
      "productName": productName,
      "unitPrice": unitPrice,
      "unitsInStock": unitsInStock
    };
  }
}
