class ProductSQL {
  String name, description, image;
  int id, price;

  ProductSQL(this.id, this.name, this.description, this.price, this.image);

  factory ProductSQL.fromMap(Map<String, dynamic> data) {
    return ProductSQL(
      data['id'],
      data['name'],
      data['description'],
      data['price'],
      data['image'],
    );
  }

  Map<String, dynamic> toMap() => {
        "id": id,
        "name": name,
        "description": description,
        "price": price,
        "image": image,
      };
}
