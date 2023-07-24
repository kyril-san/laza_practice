class ProductsModelclass {
  int? id;
  String? title;
  double? discount;
  String? description;
  int? price;
  num? rating;
  int? stock;
  String? brand;
  String? category;
  String? thumbnail;
  List<String>? images;

  ProductsModelclass(
      {required this.id,
      required this.title,
      required this.brand,
      required this.category,
      required this.description,
      required this.discount,
      required this.price,
      required this.rating,
      required this.stock,
      required this.thumbnail,
      required this.images});

  factory ProductsModelclass.fromJson(Map<String, dynamic> json) {
    return ProductsModelclass(
        id: json['id'],
        title: json['title'],
        description: json['description'],
        price: json['price'],
        discount: json['discountPercentage'],
        rating: json['rating'],
        stock: json['stock'],
        brand: json['brand'],
        category: json['category'],
        thumbnail: json['thumbnail'],
        images: json['images'].cast<String>());
  }
}
