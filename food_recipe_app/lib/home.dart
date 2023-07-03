import 'package:flutter/material.dart';
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String? inputText;
  TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Food Recipe"),),
      //Making Home Screen Body Of Our App
      body: Column(
        children: [
          //Creating Search Bar
          Container(margin: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),padding: const EdgeInsets.only(left: 8)/*,constraints: const BoxConstraints(
              maxWidth: 500,minWidth: 300)*/,decoration: BoxDecoration(color: Colors.greenAccent,
            borderRadius: BorderRadius.circular(16)),child: Row(children:[Padding(
              padding: const EdgeInsets.all(8.0),

              //Adding touch functionality to search icon
              child:GestureDetector(
                onTap:(){
                  setState(() {
                    inputText=searchController.text;
                  });

                                  },
                child: const Icon(Icons.search),
              ),
            ),Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: TextField(controller: searchController,decoration: const InputDecoration(
                hintText: "Search Food Item",
                  border: InputBorder.none
          ),),
              ),
            )]),),
          Container(color: Colors.yellow,child: Text(inputText.toString()))
        ],
      ),
    );
  }
}
