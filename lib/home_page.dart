import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  // Variables
  var buttonColor1 = true;
  var buttonColor2 = true;
  var buttonColor3 = true;
  var buttonColor4 = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mc Flutter'),
      ),
      body: Column(children: [
        Row(children: [
          Expanded(
            child: Padding(padding: EdgeInsets.all(15.0), child: Container(
              decoration: BoxDecoration(border: Border.all(color: Colors.black)),
              child: Column(children: [
                Padding( padding: EdgeInsets.all(10.0),
                  child: Row( mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(children: [
                        Icon(Icons.account_circle, size: 60.0,)
                      ],),
                      Column(children: [
                        Text("Flutter McFlutter", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 23.0),),
                        Text("Experienced App Developer")
                      ],)
                  ],),
                ),
                Padding( padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 5.0, bottom: 5.0),
                  child: Row(children: [
                    Text("123 Main Street"),
                    Expanded(child: SizedBox(),),
                    Text("(415) 555-0198")
                  ],),
                ),
                Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                  IconButton(onPressed: (){
                    buttonColor1 = !buttonColor1; 
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("Únete a un club con otras personas"))
                    );
                    setState(() {     

                  });}, icon: Icon(Icons.accessibility), color: buttonColor1? Colors.black: Colors.indigo),
                  IconButton(onPressed: (){
                    buttonColor2 = !buttonColor2;
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("Cuenta regresiva para el evento: 31 días"))
                    );
                    setState(() {
                      
                    });
                  }, icon: Icon(Icons.timer), color: buttonColor2? Colors.black: Colors.indigo,),
                  IconButton(onPressed: (){
                    buttonColor3 = !buttonColor3;
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("Llama al número 415 555 0198"))
                    );
                    setState(() {
                      
                    });
                  }, icon: Icon(Icons.phone_android), color: buttonColor3? Colors.black: Colors.indigo,),
                  IconButton(onPressed: (){
                    buttonColor4 = !buttonColor4;
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("Llama al celular 3317865113"))
                    );
                    setState(() {
                      
                    });
                  }, icon: Icon(Icons.phone_iphone), color: buttonColor4? Colors.black: Colors.indigo)
                ],)
              ]),
            ),),
          )
        ],)
      ],)
    );
  }
}