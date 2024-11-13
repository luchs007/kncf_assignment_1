import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(Object context) {
    return MaterialApp(
      title: "Assignment",
      theme: ThemeData(primaryColor: Colors.red),
      debugShowCheckedModeBanner: false,
      home: MyWidget(),
    );
  }
}

class MyWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    String address = "Regensburg";
    String phone_number = "01515-7680269";

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue[500],
        title: Text('Lukas Kastner'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    'assets/lukas_pb.jpeg',
                    width: 50,
                    height: 50,
                    fit: BoxFit.cover,
                  ),
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Lukas Kastner', style: Theme.of(context).textTheme.headlineLarge),
                    Text('Student', style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                      color: Colors.brown[900],
                    ),)
                  ],
                ),
              ],
            ),
            SizedBox(height: 8.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(address),
                Text(phone_number),
              ],
            ),
            SizedBox(height: 16.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(Icons.accessibility,color: Colors.pinkAccent,),
                Icon(Icons.timer),
                Icon(Icons.phone_android, color: Colors.green[600],),
                IconButton(onPressed: (){print("hallo");}, icon: const Icon(Icons.phone_iphone)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}