import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ridehailing/auth/login_screen.dart';

class RegisterScreen extends StatelessWidget {
  static const idScreen = 'register';

  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {  
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/bg.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Center(
            child: SingleChildScrollView( // Tambahkan SingleChildScrollView
              child: Column(
                children: [
                  Image.asset(
                    'images/rideHailing.png',
                    width: 305,
                    height: 114,
                  ),
                  const SizedBox(height: 40),
                  Container(
                    width: 330,
                    padding: const EdgeInsets.all(20.0),
                    decoration: BoxDecoration(
                      color: const Color(0xFFE3EFF7),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          spreadRadius: 4,
                          blurRadius: 10,
                          offset: const Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Nama Lengkap',
                          style: GoogleFonts.inriaSerif(fontSize: 12),
                        ),
                        const SizedBox(height: 10),
                        TextField(
                          decoration: InputDecoration(
                            prefixIcon: const Icon(Icons.person),
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(11.63),
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          'Email',
                          style: GoogleFonts.inriaSerif(fontSize: 12),
                        ),
                        const SizedBox(height: 10),
                        TextField(
                          decoration: InputDecoration(
                            prefixIcon: const Icon(Icons.email),
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(11.63),
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          'Kata Sandi',
                          style: GoogleFonts.inriaSerif(fontSize: 12),
                        ),
                        const SizedBox(height: 10),
                        TextField( // Hapus const
                          obscureText: true,
                          decoration: InputDecoration(
                            prefixIcon: const Icon(Icons.lock), // Ganti icon
                            labelText: "Password",
                            labelStyle: const TextStyle(
                              fontSize: 14.0,
                            ),
                            filled: true,
                            fillColor: Colors.white,
                            hintStyle: const TextStyle(
                              fontSize: 14.0,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(11.63),
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          'Konfirmasi Kata Sandi',
                          style: GoogleFonts.inriaSerif(fontSize: 12),
                        ),
                        const SizedBox(height: 10),
                        TextField( // Hapus const
                          obscureText: true,
                          decoration: InputDecoration(
                            prefixIcon: const Icon(Icons.lock), // Ganti icon
                            labelText: "Konfirmasi Password",
                            labelStyle: const TextStyle(
                              fontSize: 14.0,
                            ),
                            filled: true,
                            fillColor: Colors.white,
                            hintStyle: const TextStyle(
                              fontSize: 14.0,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(11.63),
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                        const SizedBox(height: 30),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFFE3EFF7),
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            minimumSize: const Size(double.infinity, 50), // Lebar tombol memenuhi container
                          ),
                          onPressed: () {},
                          child: Text(
                            'Daftar',
                            style: GoogleFonts.inter(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        const Divider(
                          color: Colors.black, // Ganti warna divider
                          thickness: 1,
                          indent: 84,
                          endIndent: 84,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Sudah punya akun?',
                                style: GoogleFonts.poppins(
                                  color: Colors.black,
                                  fontSize: 16,
                                ),
                              ),
                              TextButton(
                                onPressed: () {
                                  Navigator.pushNamed(context, LoginScreen.idScreen);
                                },
                                child: Text(
                                  'Masuk',
                                  style: GoogleFonts.poppins(
                                    color: Colors.blue[300],
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}