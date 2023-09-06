import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

Color _humanColor = Colors.black;
Color _timerColor = Colors.black;
Color _androidColor = Colors.black;
Color _iphoneColor = Colors.black;

String _humanText = 'Activating';
String _timerText = 'Activating';
String _androidText = 'Activating';
String _iphoneText = 'Activating';


class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mc Flutter'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          margin: EdgeInsets.all(5.0),
          padding: const EdgeInsets.all(3.0),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black)
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.account_circle,
                    size: 48,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Flutter McFlutter",
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text("Experienced App Developer")
                    ]
                  ),
                ]
              ),
              SizedBox(height: 12),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("123 Main Street"),
                    Text("(415) 555-0198")
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    color: _humanColor,
                    onPressed: (){
                      setState(() {
                        if(_humanColor == Colors.black){
                          _humanColor = Colors.indigo;
                          _humanText = "Activating";
                        }
                        else{
                          _humanColor = Colors.black;
                          _humanText = "Disabling";
                        }
                      });
                      ScaffoldMessenger.of(context)
                        ..hideCurrentSnackBar()
                        ..showSnackBar(
                        SnackBar(
                          content: Text("${_humanText} accessibility..."),
                        ),
                      );
                    },
                    icon: Icon(Icons.accessibility_new_sharp)
                  ),

                  IconButton(
                    color: _timerColor,
                    onPressed: (){
                      setState(() {
                        if(_timerColor == Colors.black){
                          _timerColor = Colors.indigo;                 
                          _timerText = "Activating";
                        }
                        else{
                          _timerColor = Colors.black;
                          _timerText = "Disabling";
                        }
                      });
                      ScaffoldMessenger.of(context)
                        ..hideCurrentSnackBar()
                        ..showSnackBar(
                        SnackBar(
                          content: Text("${_timerText} timer..."),
                        ),
                      );
                    },
                    icon: Icon(Icons.timer)
                  ),

                  IconButton(
                    color: _androidColor,
                    onPressed: (){
                      setState(() {
                        if(_androidColor == Colors.black){
                          _androidColor = Colors.indigo;                 
                          _androidText = "Activating";
                        }
                        else{
                          _androidColor = Colors.black;
                          _androidText = "Disabling";
                        }
                      });
                      ScaffoldMessenger.of(context)
                        ..hideCurrentSnackBar()
                        ..showSnackBar(
                        SnackBar(
                          content: Text("${_androidText} android..."),
                        ),
                      );
                    },
                    icon: Icon(Icons.phone_android)
                  ),

                  IconButton(
                    color: _iphoneColor,
                    onPressed: (){
                      setState(() {
                        if(_iphoneColor == Colors.black){
                          _iphoneColor = Colors.indigo;                 
                          _iphoneText = "Activating";
                        }
                        else{
                          _iphoneColor = Colors.black;
                          _iphoneText = "Disabling";
                        }
                      });
                      ScaffoldMessenger.of(context)
                        ..hideCurrentSnackBar()
                        ..showSnackBar(
                        SnackBar(
                          content: Text("${_iphoneText} iphone..."),
                        ),
                      );
                    },
                    icon: Icon(Icons.phone_iphone)
                  ),

                ],
              ),
            ],
          ),
        ),
      )
    );
  }
}