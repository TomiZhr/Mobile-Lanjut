import 'package:flutter/material.dart';
import 'profile.dart'; // Pastikan Anda memiliki file `profil.dart` untuk halaman profil
import 'home.dart';

class Akun extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF6F1F8),
      appBar: AppBar(
        backgroundColor: Color(0xFFF6F1F8),
        elevation: 0,
        title: Text('Akun', style: TextStyle(color: Colors.black)),
      ),
      body: Column(
        children: [
          SizedBox(height: 20),
          Center(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    color: Colors.grey[200],
                  ),
                  child: Column(
                    children: [
                      Icon(Icons.person_outline, size: 80, color: Colors.grey),
                      SizedBox(height: 8),
                      Text(
                        'Nama Lengkap',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text('Asal Universitas'),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 30),
          ListTile(
            title: Text("Kelola Akun"),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Profile()),
              );
            },
          ),
          ListTile(
            title: Text("Notifikasi"),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {
              // Tambahkan navigasi ke halaman notifikasi jika ada
            },
          ),
          ListTile(
            title: Text("Kebijakan Privasi"),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {
              // Tambahkan navigasi ke halaman kebijakan privasi jika ada
            },
          ),
          ListTile(
            title: Text("Syarat dan Ketentuan"),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {
              // Tambahkan navigasi ke halaman syarat dan ketentuan jika ada
            },
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        selectedItemColor: Colors.purple,
        unselectedItemColor: Colors.grey,
        currentIndex: 1, // Indeks 1 menandakan halaman Akun sedang aktif
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Akun',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.logout),
            label: 'Keluar',
          ),
        ],
        onTap: (index) {
          if (index == 0) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Home()),
            // Tambahkan navigasi ke halaman beranda jika diperlukan
            );
          } else if (index == 1) {
            // Tambahkan logika untuk keluar jika diperlukan
          }
        },
      ),
    );
  }
}
