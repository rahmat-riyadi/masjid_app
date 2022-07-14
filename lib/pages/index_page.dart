import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:mesjid_app/pages/tambah_protokol.dart';
import 'package:mesjid_app/providers/tab_bar_provider.dart';
import '../utils/pallete.dart';
import 'package:provider/provider.dart';

class Index extends StatelessWidget {
  const Index({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    var width = MediaQuery.of(context).size.width;
    var heigth = MediaQuery.of(context).size.height;

    return Stack(
          children: [
            Background(width: width, heigth: heigth),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: const TextSpan(
                      text: 'Ahlan wa sahlan\n',
                      style: TextStyle(color: Colors.white, fontSize: 16, height: 1.5),
                      children: [
                        TextSpan(
                          text: 'Pengurus Masjid Baitulrahman',
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)
                        )
                      ]
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 21),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const TopItem(number: 45000, icons: Icons.people),
                        SizedBox(width: width * 0.05),
                        const TopItem(number: 45000, icons: Icons.people),
                      ],
                    ),
                  ),
                   Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10) +  const EdgeInsets.only(top: 10),
                    child: const Text(
                      'Acara Jumat',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(10) + const EdgeInsets.symmetric(vertical: 10),
                    width: width,
                    decoration: const BoxDecoration(
                      color: Colors.white
                    ),
                    child: Column(
                      children:  [
                        const Icon(Icons.event, size: 60),
                        const Padding(
                          padding: EdgeInsets.only(top: 10),
                          child: Text(
                            'Protokol Jumat',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                        const Text(
                          'Memudahkan anda dalam membuat\nmembuat list protokol',
                          style: TextStyle(
                            fontSize: 16,
                            color: Pallete.light
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 20),
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          decoration: const BoxDecoration(
                            color: Pallete.primary,
                            borderRadius: BorderRadius.all(Radius.circular(7))
                          ),
                          child: TextButton(
                            onPressed: () => Navigator.of(context).push(
                              MaterialPageRoute(builder: (builder) => const TambahProtokol())
                            ),
                            child: const Text(
                              'Tambah Protokol',
                              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        );
  }
}

class Background extends StatelessWidget {
  const Background({
    Key? key,
    required this.width,
    required this.heigth,
  }) : super(key: key);

  final double width;
  final double heigth;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: heigth,
      child: Column(
        children: [
          Container(
            height: heigth * 0.25,
            color: Pallete.primary,
          ),
          Expanded(
            child: Container(
              color: Pallete.background,
            ),
          )
        ],
      ),
    );
  }
}

class TopItem extends StatelessWidget {
  const TopItem({
    Key? key,
    required this.number,
    required this.icons
  }) : super(key: key);

  final int number;
  final IconData icons;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(12))
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(icons),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 7),
              child: Text(
                'pemasukan',
                style:  TextStyle(
                  color: Pallete.light,
                  fontSize: 16
                )
              ),
            ),
            Text(
              NumberFormat.currency(locale: 'id', symbol: 'Rp ').format(number).toString(),
              style: const TextStyle(
                fontSize: 18,
              ),
            )
          ]
        )
      ),
    );
  }
}