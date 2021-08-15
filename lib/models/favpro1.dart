import 'package:flutter/foundation.dart';
import 'package:papp/models/data.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'dart:collection';
import 'dart:convert';
import 'package:flutter/cupertino.dart';

class FavModel with ChangeNotifier {
  List<Dua> duas = [];

  FavModel() {
    initialState();
  }

  UnmodifiableListView<Dua> get allDuas => UnmodifiableListView(duas);

  void initialState() {
    syncDataWithProvider();
  }

  void add(Dua _dua) {
    duas.add(_dua);

    updateSharedPrefrences();

    notifyListeners();
  }

  void remove(Dua _dua) {
    duas.removeWhere((dua) => dua.id == _dua.id);

    updateSharedPrefrences();

    notifyListeners();
  }

  int getCardLength() {
    return duas.length;
  }

  Future updateSharedPrefrences() async {
    List<String> myDua = duas.map((f) => json.encode(f.toJson())).toList();
    SharedPreferences prefs = await SharedPreferences.getInstance();

    await prefs.setStringList('duas', myDua);
  }

  Future syncDataWithProvider() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var reslut = prefs.getStringList('duas');

    if (reslut != null) {
      duas = reslut.map((f) => Dua.fromJson(json.decode(f))).toList();
    }

    notifyListeners();
  }
}
