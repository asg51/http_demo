class Category {
  late int categoryId;
  late String categoryName;

  Category(this.categoryId, this.categoryName);
  Category.fromJson(Map json) {
    this.categoryId = json["categoryId"];
    this.categoryName = json["categoryName"];
  }
  Map toJson() {
    return {"categoryId": categoryId, "categoryName": categoryName,};
  }
}
