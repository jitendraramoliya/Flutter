class ProductHttp {
  String name, description, image;
  int price;

  ProductHttp(this.name, this.description, this.price, this.image);

  factory ProductHttp.fromMap(Map<String, dynamic> json) {
    return ProductHttp(
      json['name'],
      json['description'],
      json['price'],
      json['image'],
    );
  }
}
