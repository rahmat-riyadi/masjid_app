class Protokol {

  int id = 1;
  String? saldoKasLalu;
  String? jumlahPemasukan;
  String? jumlahPengeluaran;
  String? saldoSaatIni;
  String? khatib;
  String? imam;
  String? muadzin;

  Protokol({
    this.saldoKasLalu,
    this.jumlahPemasukan,
    this.jumlahPengeluaran,
    this.saldoSaatIni,
    this.khatib,
    this.imam,
    this.muadzin
  });

  Map<String, dynamic> toMap() => {
    'id': 1,
    'saldoKasLalu': saldoKasLalu,
    'jumlahPemasukan': jumlahPemasukan,
    'jumlahPengeluaran': jumlahPengeluaran,
    'saldoSaatIni': saldoSaatIni,
    'khatib': khatib,
    'imam': imam,
    'muadzin': muadzin
  };

}