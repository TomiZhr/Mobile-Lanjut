import 'package:flutter/material.dart';
import 'login_page.dart';

class Registrasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Logo
            Image.asset(
              'assets/logo.png',
              width: 100,
              height: 100,
            ),
            SizedBox(height: 20),
            
            // Judul
            Text(
              'Daftar',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            
            // Kolom Input Email
            TextField(
              decoration: InputDecoration(
                labelText: 'Masukan Email',
                hintText: 'Email',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(
                    color: Colors.blue,
                    width: 1,
                  ),
                ),
              ),
            ),
            SizedBox(height: 16),
            
            // Kolom Input Password
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Masukan Password',
                hintText: 'Password',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(
                    color: Colors.blue,
                    width: 1,
                  ),
                ),
              ),
            ),
            SizedBox(height: 16),
            
            // Kolom Input Konfirmasi Password
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Masukan kembali Password',
                hintText: 'Password',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(
                    color: Colors.blue,
                    width: 1,
                  ),
                ),
              ),
            ),
            SizedBox(height: 16),
            
            // Teks "Sudah memiliki akun?" dan Link "Masuk"
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Sudah memiliki akun? "),
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => LoginPage()),
                    );
                  },
                  child: Text(
                    "Masuk",
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            
            // Tombol Daftar
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  padding: EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Text(
                  'Daftar',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
