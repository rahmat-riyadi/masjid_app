import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mesjid_app/pages/ubah_data.dart';
import 'package:mesjid_app/utils/pallete.dart';

class UserPage extends StatelessWidget {
  const UserPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: const Text(
          'Akun',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 30),
              child: Icon(Icons.person, size: 80),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Text(
                'Masjid Baitulrahman',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 21
                ),
              ),
            ),
            const Text('083266938029'),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: ListTile(
                leading: const Icon(Icons.person, color: Pallete.primary, size: 30),
                title: const Text('Ubah Data Masjid'),
                trailing: const Icon(Icons.arrow_forward_ios_rounded, color: Pallete.primary,),
                onTap: () => Navigator.push(
                  context, MaterialPageRoute(builder: (builder) => const UbahData())
                ),
              ),
            )
          ],
        ),
      )
    );
  }
}