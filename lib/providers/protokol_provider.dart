import 'package:flutter/material.dart';
import 'package:mesjid_app/models/protokol_model.dart';
import 'package:mesjid_app/repositories/repository.dart';

class ProtokolProvider with ChangeNotifier {

  Repository _repository = Repository();

  Future<void> createProtokol(Protokol data) async {
    Map<String, dynamic> insert = data.toMap();
    _repository.insertData('acara', insert);
    print(insert);
  }


}