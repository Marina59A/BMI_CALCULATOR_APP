import 'package:bmi_calculator_app/bmiCalc.dart';
import 'package:flutter/material.dart';

class YourResult extends StatelessWidget {
  final bool isMale;
  final double Height;
  final int Weight ;
  final int Age ;
  final double result;
  const YourResult({super.key,
   required this.isMale,
   required this.Height,
   required this.Weight, 
   required this.Age,
   required this.result});

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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Your Result",
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            
          ),),

          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              height: 610,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                  color:const Color(0xff111427), ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text('Gendr: ${isMale ? 'Male' : 'Female'}' , 
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        ),),
                        const SizedBox(
                          height: 15,
                        ),
                        Text("Height: $Height",
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Text("Weight: $Weight",
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Text("Age: $Age",
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Text("Result: $result",
                        style: const TextStyle(
                          color: Color.fromARGB(255, 106, 158, 108),
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                        ),
                      ]
                            ,
                          ),
                        ),
          ),

          Container(
            color: const Color(0xffd93558),
            height: 58,
            width: double.infinity,            
            child: MaterialButton(onPressed: (){
              Navigator.push(context,
               MaterialPageRoute(builder: (context)=>
               BMIScreen(),),);
            },
            child:const Text(
              "RE_CALCULATE",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ) ,),
          )
        ],
      ),
    );
  }
}