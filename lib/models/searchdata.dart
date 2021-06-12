part of 'models.dart';

class Lokasi {
  final int id;
  final String nama;

  Lokasi({this.id, this.nama});
}

List<Lokasi> mockLokasi = [
  Lokasi(id: 1, nama: "Yogyakarta"),
  Lokasi(id: 2, nama: "Sleman"),
  Lokasi(id: 3, nama: "Bantul"),
  Lokasi(id: 4, nama: "Kulon Progo"),
  Lokasi(id: 5, nama: "Solo"),
  Lokasi(id: 6, nama: "Boyolali"),
  Lokasi(id: 7, nama: "Sragen"),
  Lokasi(id: 8, nama: "Pati"),
  Lokasi(id: 9, nama: "Banguntapan"),
  Lokasi(id: 10, nama: "Jakarta"),
  Lokasi(id: 11, nama: "Depok"),
  Lokasi(id: 12, nama: "Semarang")
];

class Pendidikan {
  final int id;
  final String nama;

  Pendidikan({this.id, this.nama});
}

List<Pendidikan> mockPendidikan = [
  Pendidikan(id: 1, nama: "SMA/Sederajat"),
  Pendidikan(id: 2, nama: "Diploma"),
  Pendidikan(id: 3, nama: "Sarjana"),
  Pendidikan(id: 4, nama: "Umum"),
];

class TipePekerjaan {
  final int id;
  final String nama;

  TipePekerjaan({this.id, this.nama});
}

List<TipePekerjaan> mockTipePekerjaan = [
  TipePekerjaan(id: 1, nama: "Full Time"),
  TipePekerjaan(id: 1, nama: "Part Time"),
  TipePekerjaan(id: 1, nama: "Internship")
];
