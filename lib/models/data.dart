import 'package:flutter/foundation.dart';

class Dua {
  final String name, lastMessage, image;
  int id, cid;

  Dua({
    this.name = '',
    this.lastMessage = '',
    this.image = '',
    required this.id,
    required this.cid,
  });


  Map toJson() => {
    'id': id,
    'name': name,
    'cid': cid,
    'image': image,
    'lastMessage': lastMessage,
  };

  Dua.fromJson(Map json) :
        id = json['id'],
        name = json['name'],
        image = json['image'],
        cid = json['cid'],
        lastMessage = json['lastMessage'];
}

List <Dua> duaData = [
  Dua(
    name: "Dua 1",
    lastMessage: "Hope you are doing well...",
    image: "assets/images/categories/daily.svg",
    id: 1,
    cid: 2,
  ),
  Dua(
    name: "Dua 2",
    lastMessage: "Hello Abdullah! I am...",
    image: "assets/images/categories/hajj.svg",
    id: 2,
    cid: 2,
  ),
  Dua(
    name: "Dua 3",
    lastMessage: "Do you have update...",
    image: "assets/images/categories/nature.svg",
    id: 3,
    cid: 0,
  ),
  Dua(
    name: "Dua 4",
    lastMessage: "You’re welcome :)",
    image: "assets/images/categories/morning.svg",
    id: 4,
    cid: 0,
  ),
  Dua(
    name: "Dua 5",
    lastMessage: "Thanks",
    image: "assets/images/categories/pure.svg",
    id: 5,
    cid: 3,
  ),
  Dua(
    name: "Dua 6",
    lastMessage: "Hope you are doing well...",
    image: "assets/images/categories/refuge.svg",
    id: 6,
    cid: 3,
  ),
  Dua(
    name: "Dua 7",
    lastMessage: "Hello Abdullah! I am...",
    image: "assets/images/categories/ramadan.svg",
    id: 7,
    cid: 4,
  ),
  Dua(
    name: "Dua 8",
    lastMessage: "Do you have update...",
    image: "assets/images/categories/social.svg",
    id: 8,
    cid: 4,
  ),

  Dua(
    name: "Dua 9",
    lastMessage: "bla...",
    image: "assets/images/categories/food.svg",
    id: 9,
    cid: 5,
  ),

  Dua(
    name: "Dua 10",
    lastMessage: "Do you gratitude...",
    image: "assets/images/categories/gratitude.svg",
    id: 10,
    cid: 5,
  ),

  Dua(
    name: "Dua 11",
    lastMessage: "Do you have update...",
    image: "assets/images/categories/sickness.svg",
    id: 11,
    cid: 1,
  ),

  Dua(
    name: "Dua 12",
    lastMessage: "Do you have update...",
    image: "assets/images/categories/travel.svg",
    id: 12,
    cid: 1,
  ),

];

class Category {
  final int id;
  final String name, image;

  Category({
    required this.id,
    this.name = '',
    this.image = '',
});
}

List<Category> categoryData = [
  Category(
    id: 1,
    name: 'Daily',
    image: "assets/images/categories/daily.svg",
  ),

  Category(
    id: 2,
    name: 'Hajj',
    image: "assets/images/categories/hajj.svg",
  ),

  Category(
    id: 3,
    name: 'Morning',
    image: "assets/images/categories/morning.svg",
  ),

  Category(
    id: 4,
    name: 'Food',
    image: "assets/images/categories/food.svg",
  ),

  Category(
    id: 5,
    name: 'Sickness',
    image: "assets/images/categories/sickness.svg",
  ),

  Category(
    id: 6,
    name: 'Travel',
    image: "assets/images/categories/travel.svg",
  ),
];

class DDua {
  final int id, gid;
  final String content;

  DDua({
    required this.id,
    required this.gid,
    this.content = '',
  });
}

