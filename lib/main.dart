import 'package:flutter/material.dart';

void main() {
  runApp(const SimpleProfileApp());
}

class SimpleProfileApp extends StatelessWidget {
  const SimpleProfileApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      
      home: Scaffold(
        backgroundColor: Colors.grey[200], 
        
        appBar: AppBar(
          title: const Text('Profil Saya'), 
          backgroundColor: Colors.blueAccent, 
          foregroundColor: Colors.white, 
        ),

        body: Center(
          child: Column( 
            mainAxisAlignment: MainAxisAlignment.center, 
            children: <Widget>[
              
              const CircleAvatar(
                radius: 70, 
                backgroundImage: AssetImage('assets/images/kucing.jfif'),
                backgroundColor: Colors.white,
              ),

              const SizedBox(height: 20),

              const Text(
                'Mochi Ganteng',
                style: TextStyle(
                  fontSize: 24, 
                  fontWeight: FontWeight.bold, 
                  color: Colors.black87,
                ),
              ),

              const SizedBox(height: 5), 

              const Text(
                'Mahasiswa Jurusan Tidur Siang',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),

              const SizedBox(height: 30), 

              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueAccent, 
                  foregroundColor: Colors.white, 
                  padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                ),
                onPressed: () {
                  print('Tombol Lihat Detail ditekan!');
                },
                child: const Text('Lihat Detail'),
              ),

            ],
          ),
        ),
      ),
    );
  }
}

