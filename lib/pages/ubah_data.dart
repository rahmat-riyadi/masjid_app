import 'package:flutter/material.dart';
import 'package:mesjid_app/utils/pallete.dart';

class UbahData extends StatelessWidget {
  const UbahData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    TextEditingController mesjid = TextEditingController(text: 'Masjid Baitulrahman');
    TextEditingController pengurus = TextEditingController(text: 'admin mesjid');
    TextEditingController telpon = TextEditingController(text: '08234472723');

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          'Ubah Data Masjid',
          style: TextStyle(color: Colors.black),
        ),
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(Icons.arrow_back, color: Colors.black,)
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(20),
        decoration: const BoxDecoration(
          color: Color(0xFFF1F3F6)
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10) + const EdgeInsets.only(top: 10),
              child: const Text('Nama Masjid'),
            ),
            TextField(
              controller: mesjid,
              decoration: const InputDecoration(
                border: InputBorder.none,
                filled: true,
                fillColor: Colors.white
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10) + const EdgeInsets.only(top: 10),
              child: const Text('Nama Pengurus'),
            ),
            TextField(
              controller: pengurus,
              decoration: const InputDecoration(
                border: InputBorder.none,
                filled: true,
                fillColor: Colors.white
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10) + const EdgeInsets.only(top: 10),
              child: const Text('No. Telepon'),
            ),
            TextField(
              controller: telpon,
              decoration: const InputDecoration(
                border: InputBorder.none,
                filled: true,
                fillColor: Colors.white
              ),
            ),
            const Spacer(),
            Container(
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                color: Pallete.primary
              ),
              child: TextButton(
                onPressed: (){},
                child: const Text('simpan', style: TextStyle(color: Colors.white, fontSize: 18),)
              ),
            )
          ],
        ),
      ),
    );
  }
}