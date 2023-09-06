import 'package:flutter/material.dart';
import 'package:info_lugar/info_lugar.dart';
import 'package:info_lugar/item_actividad.dart';

class HomePage extends StatelessWidget {
  final List<String> lugaresTuristicos = [
    'Bali mountains',
    'Paris Eiffel Tower',
    'New York Central Park',
    'Rome Colosseum',
    'Tokyo Skytree',
    'Sydney Opera House',
    'Machu Picchu',
    'Santorini Island',
    'Rio de Janeiro Christ the Redeemer',
    'Great Wall of China',
  ];
  
  final List<String> linksTuristicos = [
    'assets/bali.webp',
    'assets/eiffel.jpg',
    'assets/central.png',
    'assets/colosseum.jpg',
    'assets/skytree.jpeg',
    'assets/sydney.jpg',
    'assets/machu.jpg',
    'assets/santorini.jpg',
    'assets/janeiro.jpg',
    'assets/wall.jpg',
  ];

  HomePage({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Reserva tu hotel'),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Stack(
            fit: StackFit.expand,
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  height: MediaQuery.of(context).size.height / 4, // El cuarto de la altura de la pantalla
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20.0),
                      bottomRight: Radius.circular(20.0),
                    ),
                  ),
                  child: Image.asset(
                    'assets/trip.jpeg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              // para poder poner column o listview en stack hay que encerrarlas en positioned y anclarla a todos lados
              Positioned(
                top: 64,
                bottom: 0,
                left: 0,
                right: 0,
                child: ListView(
                  children: [
                    InfoLugar(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          child: Text("Details"),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.red,
                            foregroundColor: Colors.grey[200],
                          ),
                        ),
                        Text("Walkthrough Flight Detail"),
                      ],
                    ),
                    Container(
                      height: 200,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 10,
                        itemBuilder: (BuildContext context, int index) {
                          final day = index + 1;
                          final lugarTuristico = lugaresTuristicos[index % lugaresTuristicos.length];
                          final linkTuristico = linksTuristicos[index % linksTuristicos.length];
                          return ItemActividad(day: day.toString(), lugarTuristico: lugarTuristico, linkTuristico: linkTuristico);
                        },
                      ),
                    ),
                    MaterialButton(
                      onPressed: (){
                        ScaffoldMessenger.of(context)
                          ..hideCurrentSnackBar()
                          ..showSnackBar(
                          SnackBar(
                            content: Text("Reservación en progreso..."),
                          ),
                        );
                      },
                      child: Text(
                        "Start booking",
                        style: TextStyle(
                          color: Colors.grey[200],
                        ),
                      ),
                      color: Colors.red,
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
