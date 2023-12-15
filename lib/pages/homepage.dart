import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String foodRadio = "";

  bool starEgg = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 105, 241, 134),
        title: Text("Menu List"),
      ),
      body: Column(
        children: [
          redioMenuList("ก๋วยเตี๋ยว", "50 บาท"),
          redioMenuList("กุ้งเผา", "180 บาท"),
          redioMenuList("ชาบู", "299 บาท"),
          redioMenuList("ต้มยำ", "120 บาท"),
          redioMenuList("บิงซู", "189 บาท"),
          redioMenuList("ชานม", "80 บาท"),
          redioMenuList("ไอศครีม", "60 บาท"),
          Divider(),
          menuList2("+5 บาท", "ไข่ดาว"),
        ],
      ),
    );
  }

  CheckboxListTile menuList2(String price, String title) {
    return CheckboxListTile(
        activeColor: const Color.fromARGB(255, 7, 255, 234),
        controlAffinity: ListTileControlAffinity.leading,
        secondary: Text(price),
        title: Text(title),
        value: starEgg,
        onChanged: (value) {
          if (title == "ไข่ดาว") {
            setState(() {
              starEgg = value!;
            });
          }
        });
  }

  RadioListTile<String> redioMenuList(String title, String subtitle) {
    return RadioListTile(
        activeColor: Color.fromARGB(255, 123, 250, 98),
        title: Text(title),
        subtitle: Text(subtitle),
        value: title,
        groupValue: foodRadio,
        onChanged: (value) {
          setState(() {
            foodRadio = value!;
          });
          print(foodRadio);
        });
  }
}
