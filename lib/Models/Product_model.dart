class Category {
  final String image;
  final String name;

  Category({required this.image, required this.name});
}

List<Category> categories = [
  Category(image: "drink.png", name: "Drink"),
  Category(image: "hot coffee.png", name: "Hot Coffee"),
  Category(image: "hot tea.png", name: "Hot Tea"),
  Category(image: "bakery.png", name: "Bakery"),
];

class Product {
  final String name;
  final String image;
  final double price;
  final Category category;

  Product({
    required this.name,
    required this.image,
    required this.price,
    required this.category,
  });

  List<Product> products = [

    //hot coffee
    Product(name: "Caffe Americano", image: "images/hot coffee/hot coffee1.png", price: 20, category: categories[0]),

    Product(name: "Mistletoe Coffee", image: "images/hot coffee/hot coffee2.png", price: 24, category: categories[0]),

    Product(name: "Cappuccino", image: "images/hot coffee/hot coffee3.png", price: 22, category: categories[0]),

    Product(name: "Featured Medium Roast - Pike Place Roast", image: "images/hot coffee/hot coffee4.png", price: 18, category: categories[0]),

    Product(name: "oney Almondmilk Flat White", image: "images/hot coffee/hot coffee4.png", price: 26, category: categories[0]),


    //drnks
    Product(name: "Evolution Fresh Mighty Watermelon", image: "images/Drinks/drinks.png", price: 18, category: categories[1]),

    Product(name: "Caramel Brulee Frappuccino Blended Beverage", image: "images/Drinks/drinks2.png", price: 20, category: categories[1]),

    Product(name: "Pink Drink Starbucks Refreshers Beverage", image: "images/Drinks/drinks4.png", price: 16, category: categories[1]),
    
    Product(name: "Pistachio Frappuccino Blended Beverage", image: "images/Drinks/drinks5.png", price: 22, category: categories[1]),

    Product(name: "Strawberry Creme Frappuccino Blended Beverage", image: "images/Drinks/drinks6.png", price: 14, category: categories[1]),

    //hot teas

    Product(name: "Chai Tea Latte", image: "images/Hot Teas/ hot teas1.png", price: 10, category: categories[2]),

    Product(name: "Chai Tea", image: "images/Hot Teas/hot teas2.png", price: 12, category: categories[2]),

    Product(name: "Emperor's Clouds & Mist", image: "images/Hot Teas/hot teas3.png", price: 16, category: categories[2]),

    Product(name: "Honey Citrus Mint Tea", image: "images/Hot Teas/hot teas4.png", price: 18, category: categories[2]),

    Product(name: "Matcha tea Latte", image: "Images/Hot Teas/hot teas5.png", price: 20, category: categories[2]),

    //bakery
    Product(name: "BlueBerry Muffins", image: "images/Bakery/bakery1.png", price: 25, category: categories[3]),

    Product(name: "BlueBerry Scone", image: "images/Bakery/bakery2.png", price: 30, category: categories[3]),

    Product(name: "Butter Croissant", image: "images/Bakery/bakery3.png", price: 35, category: categories[3]),

    Product(name: "Petite Vanila Bean Scone", image: "images/Bakery/bakery4.png", price: 40, category: categories[3]),

    Product(name: "Pink Drink StarBucks  Refresher Beverage", image: "images/Bakery/bakery5.png", price: 45, category: categories[3]),

  ];
}
