import 'dart:async';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Espera 2 segundos y luego navega a la pantalla "HolaScreen"
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HolaScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF349F61), // Cambiar el color de fondo a verde
      body: Center(
        child: Text(
          'Splash Screen',
          style: TextStyle(color: Colors.white, fontSize: 24),
        ),
      ),
    );
  }
}

class HolaScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

  final currentTime = DateTime.now();
    final formattedTime = DateFormat('hh:mm a').format(currentTime);


    return Scaffold(
      backgroundColor:
          Color.fromRGBO(52, 170, 101, 1), // Cambiar el color de fondo a verde
      appBar: AppBar(
        backgroundColor:
            Color.fromRGBO(57, 185, 111, 1), // Hacer el header transparente
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Habitación 1',
              style: TextStyle(
                  fontSize: 25,
                  color: const Color.fromRGBO(
                      255, 255, 255, 1)), // Ajustar el tamaño de la fuent
            ),
            Text(
              'Rooms Assistance',
              style: TextStyle(
                fontSize: 16,
                fontWeight:
                    FontWeight.w300, // Establece el peso de la fuente a "light"
              ),
            ),
          ],
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 20), // Espacio vertical entre el mensaje y las cards
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.all(16),
                  child: Column(
                    children: [
                      Text(
                        'Jose Luis',
                        style: TextStyle(fontSize: 26, color: Colors.white),
                      ),
                      Text(
                        '86 años',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 23,
                          fontWeight: FontWeight
                              .w300, // Establece el peso de la fuente a "light"
                        ),
                      ),
                      SizedBox(height: 8),
                      Image.asset(
                        'assets/hombre.png', // Agrega aquí la ruta de tu imagen de Google
                        width: 200,
                        height: 200,
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Alertas de hoy:',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight
                              .w300, // Establece el peso de la fuente a "light"
                        ),
                      ),

                      SizedBox(
                          height:
                              20), // Espacio vertical entre "Alertas de hoy" y la primera imagen + texto
                      Row(
                        children: [
                          Image.asset(
                            'assets/inodoro.png', // Ruta de la primera imagen a mostrar
                            width: 60,
                            height: 60,
                          ),
                          SizedBox(
                              width: 10), // Espacio entre la imagen y el texto
                          Text(
                            '3',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 40,
                            ),
                          ),
                          Text(
                            'veces',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight
                                  .w300, // Establece el peso de la fuente a "light"
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                          height:
                              10), // Espacio vertical entre la primera imagen + texto y la segunda imagen + texto
                      Row(
                        children: [
                          Image.asset(
                            'assets/sonido.png', // Ruta de la segunda imagen a mostrar
                            width: 60,
                            height: 60,
                          ),
                          SizedBox(
                              width: 10), // Espacio entre la imagen y el texto
                          Text(
                            '3',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 40,
                            ),
                          ),
                          Text(
                            'veces',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight
                                  .w300, // Establece el peso de la fuente a "light"
                            ),
                          ),
                        ],
                      ),
                      Text(
                        formattedTime,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          color: Colors.white
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 233, 233, 233),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    '¡Buen día!',
                    style: TextStyle(
                      fontSize: 35,
                      color: Color.fromRGBO(52, 170, 101, 1),
                    ), // Ajustar el tamaño de la fuent
                  ),
                  Text(
                    '',
                    style: TextStyle(
                      fontSize: 8,
                      color: Color.fromRGBO(52, 170, 101, 1),
                    ), // Ajustar el tamaño de la fuent
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              15), // Ajusta el valor según lo redondeado que desees
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(16),
                          child: Row(
                            children: [
                              Image.asset(
                                'assets/termometro.png', // Ruta de la imagen a mostrar (ajusta la ruta según tu ubicación)
                                width: 30,
                                height: 30,
                              ),
                              SizedBox(
                                  width:
                                      8), // Espacio entre la imagen y el texto
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        '34',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize:
                                                40), // Ajusta el tamaño de la fuente a 25
                                      ),
                                      Text(
                                        '°C',
                                        style: TextStyle(
                                            fontSize:
                                                24), // Tamaño de fuente normal para el símbolo °C
                                      ),
                                    ],
                                  ),
                                  Text(
                                    'Temperatura',
                                    style: TextStyle(fontSize: 15),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              15), // Ajusta el valor según lo redondeado que desees
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(16),
                          child: Row(
                            children: [
                              Image.asset(
                                'assets/gotas.png', // Ruta de la imagen a mostrar (ajusta la ruta según tu ubicación)
                                width: 30,
                                height: 30,
                              ),
                              SizedBox(
                                  width:
                                      8), // Espacio entre la imagen y el texto
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        '30',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize:
                                                40), // Ajusta el tamaño de la fuente a 25
                                      ),
                                      Text(
                                        ' %',
                                        style: TextStyle(
                                            fontSize:
                                                24), // Tamaño de fuente normal para el símbolo °C
                                      ),
                                    ],
                                  ),
                                  Text(
                                    'Humedad',
                                    style: TextStyle(fontSize: 15),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                      height: 7), // Espacio vertical entre las filas de cards
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              15), // Ajusta el valor según lo redondeado que desees
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(16),
                          child: Row(
                            children: [
                              Image.asset(
                                'assets/sonido.png', // Ruta de la imagen a mostrar (ajusta la ruta según tu ubicación)
                                width: 30,
                                height: 30,
                              ),
                              SizedBox(
                                  width:
                                      8), // Espacio entre la imagen y el texto
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        '67',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize:
                                                40), // Ajusta el tamaño de la fuente a 25
                                      ),
                                      Text(
                                        'dB',
                                        style: TextStyle(
                                            fontSize:
                                                24), // Tamaño de fuente normal para el símbolo °C
                                      ),
                                    ],
                                  ),
                                  Text(
                                    'Sonido',
                                    style: TextStyle(fontSize: 15),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              15), // Ajusta el valor según lo redondeado que desees
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(16),
                          child: Row(
                            children: [
                              Image.asset(
                                'assets/foco.png', // Ruta de la imagen a mostrar (ajusta la ruta según tu ubicación)
                                width: 30,
                                height: 30,
                              ),
                              SizedBox(
                                  width:
                                      8), // Espacio entre la imagen y el texto
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        '89',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize:
                                                40), // Ajusta el tamaño de la fuente a 25
                                      ),
                                      Text(
                                        ' lm',
                                        style: TextStyle(
                                            fontSize:
                                                24), // Tamaño de fuente normal para el símbolo °C
                                      ),
                                    ],
                                  ),
                                  Text(
                                    'Iluminación',
                                    style: TextStyle(fontSize: 15),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
