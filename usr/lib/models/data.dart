class Car {
  final String name;
  final String year;
  final String description;
  final String imageUrl;
  final double price;

  const Car({
    required this.name,
    required this.year,
    required this.description,
    required this.imageUrl,
    required this.price,
  });
}

class CoffeeItem {
  final String name;
  final String description;
  final String imageUrl;
  final double price;

  const CoffeeItem({
    required this.name,
    required this.description,
    required this.imageUrl,
    required this.price,
  });
}

final List<Car> classicCars = [
  Car(
    name: "300 SL Gullwing",
    year: "1954",
    description: "The iconic sports car with distinctive gull-wing doors.",
    imageUrl: "https://images.unsplash.com/photo-1566008885218-90abf9200ddb?auto=format&fit=crop&q=80&w=1000",
    price: 1400000,
  ),
  Car(
    name: "190 SL Roadster",
    year: "1955",
    description: "A luxurious grand tourer convertible.",
    imageUrl: "https://images.unsplash.com/photo-1622192686353-65231a742219?auto=format&fit=crop&q=80&w=1000",
    price: 120000,
  ),
  Car(
    name: "280 SE 3.5 Coupe",
    year: "1971",
    description: "Elegant styling with a powerful V8 engine.",
    imageUrl: "https://images.unsplash.com/photo-1552519507-da3b142c6e3d?auto=format&fit=crop&q=80&w=1000",
    price: 95000,
  ),
  Car(
    name: "Pagoda 230 SL",
    year: "1963",
    description: "Nicknamed 'Pagoda' due to the concave shape of its hardtop.",
    imageUrl: "https://images.unsplash.com/photo-1568605117036-5fe5e7bab0b7?auto=format&fit=crop&q=80&w=1000",
    price: 85000,
  ),
];

final List<CoffeeItem> coffeeMenu = [
  CoffeeItem(
    name: "Classic Espresso",
    description: "Rich, full-bodied espresso shot.",
    imageUrl: "https://images.unsplash.com/photo-1510707577719-ae7c14805e3a?auto=format&fit=crop&q=80&w=1000",
    price: 3.50,
  ),
  CoffeeItem(
    name: "Mercedes Mocha",
    description: "Dark chocolate mocha with silver leaf topping.",
    imageUrl: "https://images.unsplash.com/photo-1572442388796-11668a67e53d?auto=format&fit=crop&q=80&w=1000",
    price: 6.50,
  ),
  CoffeeItem(
    name: "Gullwing Latte",
    description: "Smooth latte with wing-shaped foam art.",
    imageUrl: "https://images.unsplash.com/photo-1541167760496-1628856ab772?auto=format&fit=crop&q=80&w=1000",
    price: 5.50,
  ),
  CoffeeItem(
    name: "Cold Brew Reserve",
    description: "Aged cold brew served on ice.",
    imageUrl: "https://images.unsplash.com/photo-1517701550927-30cf4ba1dba5?auto=format&fit=crop&q=80&w=1000",
    price: 4.50,
  ),
  CoffeeItem(
    name: "Affogato Al Volante",
    description: "Vanilla gelato drowned in hot espresso.",
    imageUrl: "https://images.unsplash.com/photo-1599398054066-846f28917f38?auto=format&fit=crop&q=80&w=1000",
    price: 7.00,
  ),
];
