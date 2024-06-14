import 'package:bmi_calc_app/info.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primaryColor: Colors.lightBlue,
          primarySwatch: Colors.lightBlue,
          appBarTheme: AppBarTheme(
            color: Colors.lightBlue,
            centerTitle: true,
          )),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  var wtController = TextEditingController();
  var ftController = TextEditingController();
  var inController = TextEditingController();

  var result = "";
  var bgColor = Colors.blue.shade50;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('yourBMI'),
        ),
        body:Container(
          color: bgColor,
          height: double.infinity,
          width: double.infinity,
          child: SingleChildScrollView(
            child: Container(

              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(child: Text('BMI',style: TextStyle(fontSize:35,fontWeight: FontWeight.w400 ),)),
                    SizedBox(
                      height: 18,
                    ),
                    Container(
                      width: 300,
                      child: TextField(
                        controller: wtController,
                        decoration: InputDecoration(
                          label: Text('Enter your Weight (in Kgs)',style: TextStyle(fontWeight: FontWeight.w600),),
                          prefixIcon: Icon(Icons.line_weight),
                        ),
                        keyboardType: TextInputType.number,
                      ),
                    ),
                    SizedBox(
                      height: 18,
                    ),
                    Container(
                      width: 300,
                      child: TextField(

                        controller: ftController,
                        decoration: InputDecoration(
                          label: Text('Enter your Height (in feet)',style: TextStyle(fontWeight: FontWeight.w600),),
                          prefixIcon: Icon(Icons.height),

                        ),
                        keyboardType: TextInputType.number,
                      ),
                    ),
                    SizedBox(
                      height: 18,
                    ),
                    Container(
                      width: 300,
                      child: TextField(

                        controller: inController,
                        decoration: InputDecoration(
                          label: Text('Enter your Height (in inches)',style: TextStyle(fontWeight: FontWeight.w600),),
                          prefixIcon: Icon(Icons.height_outlined),

                        ),
                        keyboardType: TextInputType.number,
                      ),
                    ),
                    SizedBox(
                      height: 18,
                    ),
                    ElevatedButton(onPressed: (){

                      var wt = wtController.text.toString();
                      var ft = ftController.text.toString();
                      var inch = inController.text.toString();

                      if(wt!="" && ft!="" && inch!=""){
                        //BMI Calculation

                        var iWt = int.parse(wt);
                        var iFt = int.parse(ft);
                        var iInch = int.parse(inch);

                        var tInch = (iFt*12)+iInch;
                        var tCm = tInch*2.54;
                        var tM = tCm/100;
                        var bmi = iWt/(tM*tM);

                        var msg = "";

                        if(bmi>25){
                          msg = " You'r OverWeight ";
                          bgColor = Colors.red.shade300;
                        }else if(bmi<18){
                          msg = " you'r UnderWeighht ";
                          bgColor = Colors.yellow.shade300;

                        }else{
                          msg = " You'r Healthy";
                          bgColor =  Colors.green.shade200;

                        }

                        result = 'Your BMI is: ${bmi.toStringAsFixed(2)} \n  $msg';

                        setState(() {

                        });

                      }else{
                        result = 'Please Enter all the Details !!';
                        setState(() {

                        });
                      }

                    }, child: Text('Calculate',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20,color: Colors.blue),)),
                    SizedBox(
                      height: 18,
                    ),
                    Center(child: Text(result,style: TextStyle(fontSize: 25,fontWeight: FontWeight.w400),)),
                    SizedBox(
                      height: 18,
                    ),
                    ElevatedButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return BMIInfoPage();
                      },));

                    }, child: Text('Know More',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18),))
                  ],
                ),
              ),
            ),
          ),
        )
    );
  }
}
