import 'dart:math';

import 'package:bmi_calculator_app/result.dart';
import 'package:flutter/material.dart';

class BMIScreen extends StatefulWidget {
  //const BMIScreen({super.key});
  
  @override
  State<BMIScreen> createState() => _BMIScreenState();
}

class _BMIScreenState extends State<BMIScreen> {
  bool isMale=true;
  double Height=180;
  int Weight = 78;
  int Age = 21;
  
  var Get;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0b0e21),
      appBar: AppBar(
        backgroundColor: const Color(0xff0b0e21),
        title: const Text(
          "BMI CALCULATOR",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body:Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          isMale=true;
                        });
                      },

                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color:isMale?const Color(0xffd93558):const Color(0xff111427), ),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.male,
                            size: 100,
                            color: Colors.white,),
                            Text("MALE",
                            style: TextStyle(
                              color: Color(0xff444652),
                              fontSize: 20,
                            ),),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          isMale=false;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                        color:isMale?const Color(0xff111427):const Color(0xffd93558), ),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.female,
                            size: 100,
                            color: Colors.white,),
                            Text("FEMALE",
                            style: TextStyle(
                              color: Color(0xff444652),
                              fontSize: 20,
                            ),),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color:const Color(0xff111427), ),
                child: Column(
                  children: [
                    const Text("HEIGHT",
                    style: TextStyle(
                      color: Color(0xff444652),
                      fontSize: 25,
                    ),),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text("${Height.round()}",
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 50,
                        ),),
                        const Text("cm",
                        style: TextStyle(
                          color: Colors.white,
                        ),)
                      ],
                    ),
                    Slider(
                      activeColor: Colors.white,
                      thumbColor:const Color(0xffd93558) ,
                      inactiveColor: Colors.grey,
                     value: Height,
                     onChanged: (value){
                      setState(() {
                        Height=value;
                      });
                     },
                     min: 40,
                     max: 220,)
                  ],
                ),
              ),
            )
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      color:const Color(0xff111427), ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("WEIGHT",
                          style: TextStyle(
                            color: Color(0xff444652),
                            fontSize: 20,
                          ),),
                          Text('$Weight',
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 45,
                          ),),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  FloatingActionButton(
                                    heroTag: "btn1",
                                    onPressed: (){
                                    setState(() {
                                      Weight--;
                                    });
                                  },
                                  child: const Icon(Icons.remove),),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  FloatingActionButton(
                                    heroTag: "btn2",
                                    onPressed: (){
                                    setState(() {
                                      Weight++;
                                    });
                                  },
                                  child: const Icon(Icons.add),),
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      color:const Color(0xff111427), ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("AGE",
                          style: TextStyle(
                            color: Color(0xff444652),
                            fontSize: 20,
                          ),),
                          Text("$Age",
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 45,
                          ),),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  FloatingActionButton(
                                    heroTag: "btn3",
                                    onPressed: (){
                                    setState(() {
                                      Age--;
                                    });
                                  },
                                  child: const Icon(Icons.remove),),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  FloatingActionButton(
                                    heroTag: "btn4",
                                    onPressed: (){
                                    setState(() {
                                      Age++;
                                    });
                                  },
                                  child: const Icon(Icons.add),),
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ),
          Container(
            color: const Color(0xffd93558),
            height: 58,
            width: double.infinity,

            child: MaterialButton(onPressed: (){
              double result = Weight / pow(Height/100, 2).round();
             Navigator.push(context, 
             MaterialPageRoute(builder: (context) =>
              YourResult(isMale: isMale, Height: Height, Weight: Weight, Age: Age, result: result,),),);
            },
            child:const Text(
              "CALCULATE",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ) ,),
          )
        ],
      ) ,
    );
  }
}