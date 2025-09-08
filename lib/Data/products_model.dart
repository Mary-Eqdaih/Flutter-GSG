  class ProductsModel {
    final int id;
    final String description;
    final String title;
    final double price;
    final String category;
    final String imgPath;
    final double rate;
    final int count;

    ProductsModel({
      required this.id,
      required this.title,
      required this.price,
      required this.category,
      required this.imgPath,
      required this.rate,
      required this.count,
      required this.description,
    });
    // ProductsModel.fromJson →
    // This is a named constructor (extra constructor with a custom name).
    // Its name is fromJson, so we know its job is: “Build a ProductsModel from JSON data.”
    // Map<String, dynamic> json →
    // JSON from APIs is represented in Dart as a Map.
    // String = keys in JSON (like "id", "title", "price").
    // dynamic = values can be any type (number, string, list, object).
    factory ProductsModel.fromJson(Map json) {
      // The job of fromJson is:
      // 👉 Take raw JSON data (from an API or a file) and turn it into a Dart object (ProductsModel).
      // fromJson takes a parameter because it needs the JSON data to build the object.
      // The parameter is a Map<String, dynamic> (decoded JSON).
      // Without that parameter, the constructor wouldn’t know what values to assign to the fields (id, title, etc.).

      // A factory constructor is a special type of constructor in Dart (declared with the factory keyword).
      // Unlike a normal constructor
      // It doesn’t always have to create a new object.
      // It can return an existing object, or even decide to return a different subtype.
      // Very useful when creating objects from external data (like JSON).
      return ProductsModel(
        id: json["id"],
        title: json["title"],
        price: json["price"] * 1.0,
        category: json["category"],
        imgPath: json["image"],
        rate: json["rating"]["rate"] * 1.0,
        count: json["rating"]["count"],
        description: json["description"],
      );
    }
  }
