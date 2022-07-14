import 'package:flutter/material.dart';
import 'package:mesjid_app/db/db_helper.dart';
import 'package:mesjid_app/pages/home.dart';
import 'package:mesjid_app/providers/protokol_provider.dart';
import 'package:provider/provider.dart';
import 'package:sqflite/sqlite_api.dart';

void main() async {
  runApp(const MesjidApp());
}

class MesjidApp extends StatelessWidget {
  const MesjidApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    DatabaseConnection databaseConnection = DatabaseConnection();

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (create) => ProtokolProvider())
      ],
      child: MaterialApp(
        home: HomePage(),
      ),
    );
  }
}

