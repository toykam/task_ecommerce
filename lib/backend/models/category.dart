/// name : ""
/// categoryId : ""
/// categoryImagePath : ""

class Category {
  String? name;
  String? categoryId;
  String? categoryImagePath;

  Category({
      this.name, 
      this.categoryId, 
      this.categoryImagePath});

  Category.fromJson(dynamic json) {
    name = json['name'];
    categoryId = json['categoryId'];
    categoryImagePath = json['categoryImagePath'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['name'] = name;
    map['categoryId'] = categoryId;
    map['categoryImagePath'] = categoryImagePath;
    return map;
  }

}