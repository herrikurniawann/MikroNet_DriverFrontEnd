import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});
  static const String idScreen = 'mainSCreen';

  @override
  State<MainScreen> createState() => _MainScreenState();

}
class _MainScreenState extends State<MainScreen>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('MainScreen'),
      ),
    );
  }
}