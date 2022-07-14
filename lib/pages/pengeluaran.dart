import 'package:flutter/material.dart';
import 'package:mesjid_app/pages/tambah_pemasukan.dart';
import 'package:mesjid_app/utils/pallete.dart';

class PengeluaranPage extends StatelessWidget {
  const PengeluaranPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Stack(
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            decoration: const BoxDecoration(
              color: Color(0xFFF2F5F6)
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Pengeluaran',
                  style: TextStyle(
                    fontSize: 21,
                    fontWeight: FontWeight.bold
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: 10,
                    itemBuilder: (ctx, i) => ListTile(
                      contentPadding: EdgeInsets.zero,
                      tileColor: Colors.white,
                      title: Padding(
                        padding: const EdgeInsets.only(bottom: 4),
                        child: const Text('23 maret 2022'),
                      ),
                      subtitle: Row(
                        children: [
                          const Text('Total'),
                          Container(
                            padding: const EdgeInsets.all(7),
                            margin: const EdgeInsets.only(left: 5),
                            decoration:  BoxDecoration(
                              color: const Color(0xFF00BF71).withOpacity(0.2),
                              borderRadius: BorderRadius.circular(4)
                            ),
                            child: const Text(
                              'Rp. 750.000',
                              style: TextStyle(
                                color: Pallete.primary,
                                fontWeight: FontWeight.bold
                              ),
                            ),
                          )
                        ],
                      ),
                      trailing: const Icon(Icons.keyboard_arrow_right_rounded),
                    )
                  ),
                )
              ],
            ),
          ),
          Align(
            alignment: const Alignment(.9, .9),
            child: Container(
              decoration: BoxDecoration(
                color: Pallete.primary,
                borderRadius: BorderRadius.circular(4)
              ),
              child: IconButton(
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (builder) => const TambahPemasukan())
                ) ,
                icon: const Icon(Icons.add, size: 30, color: Colors.white)
              ),
            ),
          )
        ],
      ),
    );
  }
}