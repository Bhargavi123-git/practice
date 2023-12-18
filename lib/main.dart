import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practice/ddhome.dart';
void main()=> runApp(MaterialApp(
  home: ddhome(),

));

class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Home')),
          leading: Icon(Icons.image_search),
          actions: [
            Icon(Icons.access_alarm),
            Icon(Icons.icecream) ,
          ],
        ),
        body: Container(
          decoration: BoxDecoration(image: DecorationImage(image: NetworkImage('https://wallpapercave.com/wp/wp3988062.jpg'),
              fit: BoxFit.fill
          )),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(controller: TextEditingController(),
                decoration: InputDecoration(label: Text('name',style: TextStyle(color: Colors.white),),),



              ),
              TextField(controller: TextEditingController(),
                decoration: InputDecoration(label: Text('password',style: TextStyle(color: CupertinoColors.lightBackgroundGray),),),



              ),
              ElevatedButton(onPressed: (){
                Navigator.pushNamed(context, '/dd');
              }, child: const Text("press"))
            ],
          ),
        )

    );
  }
}