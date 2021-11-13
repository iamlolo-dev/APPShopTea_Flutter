class Item {
  final String name;
  final String type;
  final String shortDesc;
  final String desc;
  final String image;
  final int rate;
  final String price;

  Item({
      required this.name,
      required this.type,
      required this.shortDesc,
      required this.desc,
      required this.image,
      required this.rate,
      required this.price
      });
}

List<Item> menu = [
  Item(
      name: "Tea green",
      type: 'Infusion',
      shortDesc: "Green tea is a product derived from Camellia sinensis",
      desc:
          "Green tea comes from the Camellia sinensis plant; It is the type of unfermented tea. It is considered to promote muscle recovery after physical activity and as an aid to burn fat",
      image: "assets/images/te_green.jpg",
      rate: 3,
      price: '4 €/ud '),
  Item(
      name: "Tea black",
      type: "Infusion",
      shortDesc: "Black tea is a tea that is oxidized to a greater degree.",
      desc:
          "Black tea is a tea that is oxidized to a greater degree than green tea, oolong tea, and white tea varieties. The four varieties indicated are prepared with Camellia sinensis leaves. Black tea generally has a stronger aroma and contains more caffeine than other teas with lower levels of oxidation.",
      image: "assets/images/te_black.jpg",
      rate: 2,
      price: '7 €/ud'),
  Item(
      name: "Tea white",
      type: "Infusion",
      shortDesc: "A characteristic of white tea is its mild and light taste",
      desc:
          "White tea does not roll or oxidize, thus its flavor characteristics are preserved, and it produces a lighter tea than black or traditional teas. Visually, we are in the presence of a silvery-white tea, with a silky and velvety texture.",
      image: "assets/images/te_white.jpg",
      rate: 5,
      price: '3 €/ud'),
  Item(
      name: "Tea red",
      type: "Hot",
      shortDesc: "Espresso dengan air panas",
      desc:
          "Red tea contains vitamins B, C and D, in addition to providing minerals such as magnesium, potassium, iodine, zinc and fluoride, also having polyphenols, theophylline, caffeine and fiber.",
      image: "assets/images/te_red.jpg",
      rate: 5,
      price: '9 €/ud'),
];
