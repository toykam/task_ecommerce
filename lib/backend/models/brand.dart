/// name : ""
/// brandId : ""
/// brandImagePath : ""

class Brand {
  String? name;
  String? brandId;
  String? brandImagePath;

  Brand({
      this.name, 
      this.brandId, 
      this.brandImagePath});

  Brand.fromJson(dynamic json) {
    name = json['name'];
    brandId = json['brandId'];
    brandImagePath = json['brandImagePath'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['name'] = name;
    map['brandId'] = brandId;
    map['brandImagePath'] = brandImagePath;
    return map;
  }

}