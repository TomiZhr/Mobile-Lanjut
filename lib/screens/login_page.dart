import 'package:flutter/material.dart';
import 'registrasi.dart';
import 'reset_password.dart';
import 'home.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/logo.png',
                  width: 150,
                ),
                SizedBox(height: 20),
                Text(
                  'Masuk',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 20),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Masukkan Email',
                    style: TextStyle(fontSize: 16, color: Colors.black87),
                  ),
                ),
                SizedBox(height: 5),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Email',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(color: Colors.blue),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Masukkan Password',
                    style: TextStyle(fontSize: 16, color: Colors.black87),
                  ),
                ),
                SizedBox(height: 5),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Password',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(color: Colors.blue),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Belum punya akun ? ',
                          style: TextStyle(color: Colors.black54),
                        ),
                        TextButton(
                          onPressed: () {
                            // Navigasi ke halaman registrasi
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Registrasi()),
                            );
                          },
                          child: Text('Daftar', style: TextStyle(color: Colors.blue)),
                        ),
                      ],
                    ),
                    TextButton(
                      onPressed: () {
                        // Navigasi ke halaman reset password
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ResetPassword()),
                        );
                      },
                      child: Text('Lupa password ?', style: TextStyle(color: Colors.blue)),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      // Navigasi ke halaman home setelah login berhasil
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Home()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(vertical: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Text(
                      'Masuk',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
