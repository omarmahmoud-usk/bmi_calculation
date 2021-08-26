import 'package:bmi_calculation/BMI%20Calculator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BMI_Result extends StatelessWidget {

  String category = '';
  final double result;

  BMI_Result({
   required this.result,
});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
            ),
        ),
        centerTitle: false,
        backgroundColor: Color.fromRGBO(5, 4, 53, 1),
        title: Text(
          'BMI CALCULATOR'
        ),
      ),
      body: Container(
        width: double.infinity,
        color: Color.fromRGBO(5, 4, 53, 1),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Text(
                'Your Result',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Expanded(
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0,),
                      color: Color.fromRGBO(16, 15, 64, 1),
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          25>result && result>17 ? 'Normal - Healthy Weight' : 17>result ? 'Underweight' : 'Overweight',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: 25>result && result>17 ? Colors.green : 17>result ? Colors.blue : Colors.red,
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          '${result.round()}',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize:60,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
