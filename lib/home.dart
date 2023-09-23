import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});
  static const route = '/';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          backgroundColor: const Color(0xFF1D2136),
          appBar: AppBar(
            backgroundColor: const Color(0xFF1D2136),
            title: const Text("BMI CALCULATOR", style: TextStyle(fontSize: 20,))
          ),
          body: Column(
            children: [
              Container(
                     padding: const EdgeInsets.all(15),
                     child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       GestureDetector(
                          child: Container(
                            height: 220, width: 190,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: const Color(0xFF24263B),),
                            padding: const EdgeInsets.all(15),
                            child: const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children:  [
                                Icon( Icons.male_rounded, size: 100, color: Colors.white,),
                                Text("MALE", style: TextStyle(color: Colors.white, fontSize: 20),)
                              ],
                            ),
                          ),
                       ),
                       GestureDetector(
                         child: Container(
                           height: 220, width: 190,
                           decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(20), color: const Color(0xFF323244),
                           ),
                           padding: const EdgeInsets.all(15),
                           child: const Column(
                             mainAxisAlignment: MainAxisAlignment.center,
                             children:  [
                               Icon( Icons.female_rounded, size: 100, color: Colors.white,),
                               Text("FEMALE", style: TextStyle(color: Colors.white, fontSize: 20),)
                             ],
                           ),
                         ),
                       ),
                     ],
                     ),
                  ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration( borderRadius: BorderRadius.circular(20),
                      color: const Color(0xFF323244),
                    ),
                    padding: const EdgeInsets.all(40),
                    margin: const EdgeInsets.all(15),
                    child: Column(
                      children: [ const Text("HEIGHT", style: TextStyle(fontSize: 20,fontWeight: FontWeight.w300,color: Colors.grey,
                      ),
                      ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text("170", style: TextStyle(color: Colors.white,fontSize: 50,fontWeight: FontWeight.bold,)),
                            Text("cm", style: TextStyle(color: Colors.white, fontSize: 30))
                          ],
                        ),
                        Expanded(
                          child: Slider( activeColor: const Color(0xFFBE4A67),
                              value: 170, min: 140, max: 220,
                              onChanged: (value) {}),
                        )],
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color(0xFF323244),
                        ),
                        padding: const EdgeInsets.all(35),
                        child: Column(
                          children: [ const Text("WEIGHT",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w300,color: Colors.grey),
                          ),
                            const Text("83",style: TextStyle(color: Colors.white,fontSize: 50,fontWeight: FontWeight.bold,
                            ),
                            ),
                            Row(
                              children: [
                                FloatingActionButton(
                                  onPressed: () {},
                                  backgroundColor: const Color(0xFF5D5F6E),
                                  child: const Icon(Icons.remove),
                                ),
                                const SizedBox(width: 10,),
                                FloatingActionButton(
                                  onPressed: () {},
                                  backgroundColor: const Color(0xFF5D5F6E),
                                  child: const Icon(Icons.add),
                                ),],
                            )],
                        ),
                      ),
                      const SizedBox(width: 16),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color(0xFF323244),
                        ),
                        padding: const EdgeInsets.all(35),
                        child: Column(
                          children: [const Text("AGE",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w300,color: Colors.grey,
                          ),
                          ),
                            const Text("21",style: TextStyle(color: Colors.white,fontSize: 50,fontWeight: FontWeight.bold,
                            ),
                            ),
                            Row(
                              children: [
                                FloatingActionButton(
                                  onPressed: () {},
                                  backgroundColor: const Color(0xFF5D5F6E),
                                  child: const Icon(Icons.remove),
                                ),
                                const SizedBox(width: 10,),
                                FloatingActionButton(
                                  onPressed: () {},
                                  backgroundColor: const Color(0xFF5D5F6E),
                                  child: const Icon(Icons.add),
                                ),],
                            )],
                        ),
                      ),],
                  ),
                ),
                Container(
                    width: double.infinity, height: 80,
                    decoration: const BoxDecoration(
                      color: Color(0xFFE83D66),),
                    child: MaterialButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed('/screen1');},
                      child: const Text("CALCULATE",style: TextStyle(color: Colors.white,fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                    ))
              ],),
    ));
  }
}