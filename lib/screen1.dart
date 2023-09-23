import 'package:flutter/material.dart';
import 'package:week10/home.dart';

class Screen1 extends StatelessWidget {
  static const route = '/screen1';

  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1D2136),
        appBar: AppBar(
          backgroundColor: const Color(0xFF1D2136),
          title: const Text("Your Result", style: TextStyle( color: Colors.white,fontSize: 40, fontWeight: FontWeight.bold,
          ),),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 120),
                width: double.infinity,
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color:const Color(0xFF323244),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("NORMAL", style: TextStyle( color: Color(0xFF79BC99), fontSize: 25, fontWeight: FontWeight.w600
                    ),),
                    Text("22.3", style: TextStyle( color: Colors.white, fontSize: 80, fontWeight: FontWeight.bold,
                    ),),
                    Column(
                      children: [
                        Text("You have a normal body weight.", style: TextStyle(color: Colors.white, fontSize: 23,
                        ),),
                        Text("Good job!", style: TextStyle(color: Colors.white, fontSize: 23,
                        ),)
                      ],),
                  ],),
              ),
            ),
            Container(
                width: double.infinity,
                height: 80,
                decoration: const BoxDecoration(
                  color: Color(0xFFE83D66),),
                child: MaterialButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed(Home.route);
                  },
                  child: const Text(
                    "RE-CALCULATE",style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                )),
          ],
        ),
    );
  }
}