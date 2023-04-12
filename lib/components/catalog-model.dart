class CatalogModel {
  static final items = [
    Item(
        id: 1,
        name: "Panadol Extra",
        desc: "Pain Releif",
        price: 100,
        color: "#33505a",
        image:
            "https://i-cf65.ch-static.com/content/dam/cf-consumer-healthcare/panadol/en_ie/ireland-products/panadol-extra/MGK5158-GSK-Panadol-Extra-455x455.png?auto=format"),
    Item(
        id: 2,
        name: "Anbesol",
        desc: "Gel",
        price: 200,
        color: "#33505a",
        image:
            "https://m.media-amazon.com/images/I/81TrWOuxCxL.jpg"),
    Item(
        id: 3,
        name: "Sleep 3",
        desc: "Tablets",
        price: 300,
        color: "#33505a",
        image:
            "https://m.media-amazon.com/images/I/71l3kzu7E1L.jpg"),
  ];
}

class Item {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.color,
      required this.image});
}
