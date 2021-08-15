import 'package:flutter/foundation.dart';
import 'package:papp/models/data.dart';
import 'package:shared_preferences/shared_preferences.dart';


class FavModel extends ChangeNotifier {
  List<Dua> duas = [];
  /// Internal, private state of the cart. Stores the ids of each item.

  /// The current catalog. Used to construct items from numeric ids.
   List<Dua> get alldua {
    notifyListeners();
    return this.duas;
  }

  /// Adds [item] to cart. This is the only way to modify the cart from outside.
  void add(Dua dua) {
    duas.add(dua);
    // This line tells [Model] that it should rebuild the widgets that
    // depend on it.
    notifyListeners();
  }

  void remove(Dua dua) {
    duas.remove(dua);
    // Don't forget to tell dependent widgets to rebuild _every time_
    // you change the model.
    notifyListeners();
  }
}