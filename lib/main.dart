import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'RobotoCondensed',
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        scaffoldBackgroundColor: Colors.lightBlueAccent,
        useMaterial3: true,
      ),
      home: Homepage(),
    );
  }
}

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Homepage> {
  int count=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter"),
        backgroundColor: Colors.yellow,

      ),
      body:Center(
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(count.toString(),style: TextStyle(fontSize: 60),),
            SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("My  Buttons",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,fontStyle: FontStyle.normal,fontFamily: 'RobotoCondensed'),),
                SizedBox(width: 30),
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      count++;
                    });
                  },
                  child: Text('UP',style: TextStyle(fontWeight: FontWeight.bold)),
                ),
                SizedBox(width: 30),
                FloatingActionButton(
                  onPressed: () {
                    setState((){
                      if (count>0){
                        count--;
                      }
                        
                    });
                  },
                  child: Text("DOWN",style: TextStyle(fontWeight: FontWeight.bold),),
                ),
              ],
            ),
          ],
        ),
      ),
      );
  }
}


