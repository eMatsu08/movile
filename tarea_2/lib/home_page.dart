import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class ButtonState {
  Color color;
  String text;

  ButtonState(this.color, this.text);

  void updateColorAndText(BuildContext cont) {
    String state;
    if (color == Colors.black) {
      color = Colors.indigo;
      state = "activado";
    } else {
      color = Colors.black;
      state = "desactivado";
    }

    ScaffoldMessenger.of(cont)
      ..hideCurrentSnackBar()
      ..showSnackBar(
      SnackBar(
        content: Text("${text} ${state}..."),
      ),
    );
  }
}

int _likes = 9998;
Color _likesColor = Colors.black;

ButtonState _mail = ButtonState(Colors.black, "Recibir correos");
ButtonState _call = ButtonState(Colors.black, "Recibir llamadas");
ButtonState _directions = ButtonState(Colors.black, "Mapa");

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.network(
              "https://img.freepik.com/free-photo/painting-mountain-lake-with-mountain-background_188544-9126.jpg?w=2000"),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "EL ITESO, Universidad Jesuita de Guadalajara",
                        style: TextStyle(
                          fontSize: 12
                        ),
                      ),
                      Text(
                        "San Pedro Tlaquepaque, Jal",
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.grey  
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                        icon: Icon(Icons.thumb_up),
                        color: _likesColor,
                        onPressed: () {
                          setState(() {
                            if(_likesColor == Colors.black){
                              _likesColor = Colors.indigo;
                              _likes++;
                            }
                            else{
                              _likesColor = Colors.black;
                              _likes--;
                            }
                          });
                        },
                      ),
                      Column(
                        children: [
                          SizedBox(height: 9),
                          Text(
                            _likes.toString(),
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  IconButton(
                    color: _mail.color,
                    iconSize: 36,
                    onPressed: () {
                      setState(() {
                        _mail.updateColorAndText(context);
                      });
                    },
                    icon: Icon(Icons.mail),
                  ),
                  Text("Correo")
                ],
              ),
              Column(
                children: [
                  IconButton(
                    color: _call.color,
                    iconSize: 36,
                    onPressed: () {
                      setState(() {
                        _call.updateColorAndText(context);
                      });
                    },
                    icon: Icon(Icons.add_ic_call),
                  ),
                  Text("Llamada")
                ],
              ),
              Column(
                children: [
                  IconButton(
                    color: _directions.color,
                    iconSize: 36,
                    onPressed: () {
                      setState(() {
                        _directions.updateColorAndText(context);
                      });
                    },
                    icon: Icon(Icons.directions),
                  ),
                  Text("Ruta")
                ],
              ),
            ],
          ),
          SizedBox(height: 12),
          Padding(
            padding: EdgeInsets.all(25.0),
            child: Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                textAlign: TextAlign.justify),
          )
        ],
      )
    );
  }
}