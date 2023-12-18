import 'package:flutter/material.dart';
void main()=> runApp(MaterialApp(
  home: ddhome(),

));

class ddhome extends StatelessWidget {
  const ddhome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(image: DecorationImage(image:NetworkImage('https://wallpapercave.com/wp/wp3988062.jpg'),
            fit: BoxFit.fill)),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(

              children: [
                TextField(controller: TextEditingController(),
                  decoration: InputDecoration(label: Text('Name',style: TextStyle(color: Colors.white),)),),
                TextField(controller: TextEditingController(),
                  decoration: InputDecoration(label: Text('password',style: TextStyle(color: Colors.white))),),
                TextField(controller: TextEditingController(),
                  decoration: InputDecoration(label: Text('conform password',style: TextStyle(color: Colors.white))),),
                TextField(controller: TextEditingController(),
                  decoration: InputDecoration(label: Text('Emial',style: TextStyle(color: Colors.white))),),
                ElevatedButton(onPressed: (){
                  Navigator.pop(context);
                }, child:Text('back')),
              ],
            ),
          ),

        ),

      ),

    );
  }
}