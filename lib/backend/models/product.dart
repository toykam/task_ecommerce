/// name : "name"
/// amount : 0
/// categoryId : "id"
/// productId : "id"
/// discountPrice : 0

class Product {
  String? name;
  int? amount;
  String? categoryId;
  String? productId;
  String? productImagePath;
  String? productDescription;
  int? discountPrice;

  Product({
      this.name, 
      this.amount, 
      this.categoryId, 
      this.productImagePath,
      this.productDescription,
      this.productId,
      this.discountPrice});

  Product.fromJson(dynamic json) {
    name = json['name'];
    amount = json['amount'];
    categoryId = json['categoryId'];
    productId = json['productId'];
    discountPrice = json['discountPrice'];
    productImagePath = json['productImagePath'];
    productDescription = json['productDescription'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['name'] = name;
    map['amount'] = amount;
    map['categoryId'] = categoryId;
    map['productId'] = productId;
    map['discountPrice'] = discountPrice;
    map['productImagePath'] = productImagePath;
    return map;
  }

}