
import 'package:flutter/foundation.dart';

class HomePageManagement with ChangeNotifier, DiagnosticableTreeMixin{
  Set<int> _savedIndex = {};
  Set<int> get savedIndex => _savedIndex;
  late int  _index ;

  bool _isIndex = false;

  bool get isIndex => _isIndex;

  set isIndex(bool value) {
    _isIndex = value;
  }

  int get index => _index;

  set index(int value) {
    _index = value;
  }

  markFavourite(int index){
    _index =index;
    _isIndex = _savedIndex.contains(_index);
    if(_isIndex){
      _savedIndex.remove(index);
    }
    else{
      _savedIndex.add(index);
    }

     notifyListeners();

  }

}

