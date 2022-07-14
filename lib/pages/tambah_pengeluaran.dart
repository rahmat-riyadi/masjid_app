import 'package:flutter/material.dart';
import 'package:mesjid_app/utils/pallete.dart';

class TambahPemasukan extends StatelessWidget {
  const TambahPemasukan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    TextEditingController nameController = TextEditingController();
    TextEditingController valueController = TextEditingController();
    TextEditingController dateController = TextEditingController();

    return Scaffold(
      backgroundColor: const Color(0xFFF2F5F6),
      appBar: AppBar(
        title: const Text(
          'Tambah Pengeluaran',
          style: TextStyle(
            color: Colors.black
          ),
        ),
        leading: const Icon(Icons.arrow_back, color: Colors.black,),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: Text(
                    'tanggal',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                TextField(
                  controller: dateController,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    suffixIcon: Icon(Icons.date_range),
                    filled: true,
                    fillColor: Colors.white
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () => showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          content: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const Text(
                                'deskripsi',
                              ),
                              TextField(
                                controller: nameController,
                                decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  filled: true,
                                  fillColor: Color(0xFFF1F3F6)
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(top: 20),
                                child: Text(
                                  'jumlah pengeluaran',
                                  style: TextStyle(
                                    fontSize: 14
                                  ),
                                ),
                              ),
                              TextField(
                                controller: valueController,
                                keyboardType: TextInputType.number,
                                decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  filled: true,
                                  fillColor: Color(0xFFF1F3F6)
                                ),
                              )
                            ],
                          ),
                          actions: [
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: Row(
                                children: [
                                  const CancelBtn(),
                                  SizedBox(width: MediaQuery.of(context).size.width * 0.05),
                                  const AddBtn()
                                ],
                              ),
                            ),
                          ],
                        )
                      ),
                      child: Row(
                        children: const [
                          Text(
                            'Tambah',
                            style: TextStyle(color: Pallete.primary),
                          ),
                          Icon(Icons.add, color: Pallete.primary)
                        ],
                      )
                    )
                  ],
                ),
              ],
            ),
          ),
          const Spacer(),
          Container(
            padding: const EdgeInsets.all(20),
            decoration: const BoxDecoration(
              color: Colors.white
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('total'),
                    const Text(
                      'Rp. 46000',
                      style: TextStyle(
                        fontWeight: FontWeight.bold
                      ),
                    )
                  ],
                ),
                Container(
                  width: double.infinity,
                  margin: const EdgeInsets.only(top: 15),
                  decoration: BoxDecoration(
                    color: Pallete.primary.withOpacity(0.4)
                  ),
                  child: TextButton(
                    onPressed: (){},
                    child: const Text(
                      'tambah pemasukan',
                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                    )
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class AddBtn extends StatelessWidget {
  const AddBtn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(5)),
          color: Pallete.primary
        ),
        child: TextButton(
          onPressed: (){},
          child: const Text(
            'Tambah',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600
            ),
          )
        ),
      ),
    );
  }
}

class CancelBtn extends StatelessWidget {
  const CancelBtn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(5)),
          border: Border(
            top: BorderSide(color: Pallete.primary, width: 1),
            bottom: BorderSide(color: Pallete.primary, width: 1),
            left: BorderSide(color: Pallete.primary, width: 1),
            right: BorderSide(color: Pallete.primary, width: 1)
          )
        ),
        child: TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text(
            'Batal',
            style: TextStyle(
              color: Pallete.primary,
              fontWeight: FontWeight.w600
            ),
          )
        ),
      ),
    );
  }
}