import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ridehailing/auth/regs.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/bg.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Center(
            child: Column(
              children: [
                Image.asset(
                  'assets/rideHailing.png',
                  width: 300,
                  height: 150,
                ),
                const SizedBox(height: 50),
                Text(
                  'Masuk Sebagai Pengemudi',
                  style: GoogleFonts.inriaSerif(
                    color: Colors.white,
                    fontSize: 19,
                  ),
                ),
                const SizedBox(height: 40),
                Container(
                  width: 300,
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
                        'Username',
                        style: GoogleFonts.inriaSerif(fontSize: 10),
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
                        style: GoogleFonts.inriaSerif(fontSize: 15),
                      ),
                      const SizedBox(height: 17),
                      Text(
                        'Kata Sandi',
                        style: GoogleFonts.inriaSerif(fontSize: 14),
                      ),
                      const SizedBox(height: 10),
                      TextField(
                        obscureText: _isObscure,
                        decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.lock),
                          suffixIcon: IconButton(
                            icon: Icon(
                              _isObscure
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                            ),
                            onPressed: () {
                              setState(() {
                                _isObscure = !_isObscure;
                              });
                            },
                          ),
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(11.63),
                            borderSide: BorderSide.none,
                          ),
                        ),
                        style: GoogleFonts.inriaSerif(fontSize: 15)
                      ),
                      const SizedBox(height: 10),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            'Lupa password?',
                            style: GoogleFonts.poppins(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                              color: Colors.black87,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 30),
                Container(
                  width: 300,
                  height: 50,
                  decoration: BoxDecoration(
                    color: const Color(0xFFE3EFF7),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFE3EFF7),
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    onPressed: () {},
                    child: Text(
                      'Masuk',
                      style: GoogleFonts.inter(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                const Divider(
                  color: Colors.white,
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
                        'Belum Punya Akun?',
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 14,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(
                          //       builder: (context) => FaceIdScanner()),
                          // );
                        },
                        child: Text(
                          'Daftar Sekarang',
                          style: GoogleFonts.poppins(
                            color: Colors.blue[300],
                            fontSize: 14,
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
    );
  }
}
