import 'package:flutter/material.dart';
import 'package:mesjid_app/models/protokol_model.dart';
import 'package:mesjid_app/providers/protokol_provider.dart';
import 'package:mesjid_app/utils/pallete.dart';
import 'package:provider/provider.dart';

class TambahProtokol extends StatelessWidget {
  const TambahProtokol({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    TextEditingController saldoKasLalu = TextEditingController(text: '12000');
    TextEditingController jumlahPemasukan = TextEditingController(text: '1000');
    TextEditingController jumlahPengeluaran = TextEditingController(text: '500');
    TextEditingController jumlahSaldo = TextEditingController(text: '2500');
    TextEditingController khatib = TextEditingController(text: 'andi');
    TextEditingController imam = TextEditingController(text: 'iin');
    TextEditingController muadzin = TextEditingController(text: 'iing');
    var protokolProvider = Provider.of<ProtokolProvider>(context);
    Protokol protokol;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xFFF1F3F6),
      appBar: AppBar(
        title: const Text(
          'Tambah Susunan Acara',
          style: TextStyle(
            color: Colors.black
          ),
        ),
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.arrow_back, color: Colors.black)
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: ListView(
          children: [
            const Text(
              'Laporan Keuangan',
              style: TextStyle(
                color: Colors.black54,
                fontWeight: FontWeight.bold,
                fontSize: 16
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10) + const EdgeInsets.only(top: 10),
              child: const Text('saldo kas jumat lalu'),
            ),
            TextField(
              controller: saldoKasLalu,
              decoration: const InputDecoration(
                border: InputBorder.none,
                filled: true,
                fillColor: Colors.white
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10) + const EdgeInsets.only(top: 10),
              child: const Text('Jumlah Pemasukan'),
            ),
            TextField(
              controller: jumlahPemasukan,
              decoration: const InputDecoration(
                border: InputBorder.none,
                filled: true,
                fillColor: Colors.white
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10) + const EdgeInsets.only(top: 10),
              child: const Text('Jumlah Pengeluaran'),
            ),
            TextField(
              controller: jumlahPengeluaran,
              decoration: const InputDecoration(
                border: InputBorder.none,
                filled: true,
                fillColor: Colors.white
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10) + const EdgeInsets.only(top: 10),
              child: const Text('Saldo Kas saat ini'),
            ),
            TextField(
              controller: jumlahSaldo,
              decoration: const InputDecoration(
                border: InputBorder.none,
                filled: true,
                fillColor: Colors.white
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 20),
              child: Text(
                'Susunan Acara',
                style: TextStyle(
                  color: Colors.black54,
                  fontWeight: FontWeight.bold,
                  fontSize: 16
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10) + const EdgeInsets.only(top: 10),
              child: const Text('Nama Khatib'),
            ),
            TextField(
              controller: khatib,
              decoration: const InputDecoration(
                border: InputBorder.none,
                filled: true,
                fillColor: Colors.white
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10) + const EdgeInsets.only(top: 10),
              child: const Text('Nama Imam'),
            ),
            TextField(
              controller: imam,
              decoration: const InputDecoration(
                border: InputBorder.none,
                filled: true,
                fillColor: Colors.white
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10) + const EdgeInsets.only(top: 10),
              child: const Text('Nama Muadzin'),
            ),
            TextField(
              controller: muadzin,
              decoration: const InputDecoration(
                border: InputBorder.none,
                filled: true,
                fillColor: Colors.white
              ),
            ),
            Expanded(
              child: Container(
                margin: const EdgeInsets.only(top: 30),
                padding: const EdgeInsets.symmetric(vertical: 3),
                decoration: const BoxDecoration(
                  color: Pallete.primary
                ),
                child: TextButton(
                  onPressed: () {
                    protokol = Protokol(
                      jumlahPemasukan: jumlahPemasukan.text,
                      jumlahPengeluaran: jumlahPengeluaran.text, 
                      saldoKasLalu: saldoKasLalu.text,
                      saldoSaatIni: jumlahSaldo.text,
                      khatib: khatib.text,
                      imam: imam.text,
                      muadzin: muadzin.text
                    );

                    protokolProvider.createProtokol(protokol);
                  },
                  child: const Text(
                    'simpan',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  )
                ),
              )
            )
          ],
        ),
      ),
    );
  }
}