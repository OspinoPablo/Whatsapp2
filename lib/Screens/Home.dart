import 'package:flutter/material.dart';
import '../widgets/seenChat.dart';
import '../widgets/nonSeenChat.dart';
import '../widgets/footer.dart';

class Home extends StatelessWidget {
  const Home({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(15.0),
          child: CircleAvatar(
            backgroundColor: Colors.white,
            radius: 20,
            backgroundImage: AssetImage('assets/more.png'),
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.all(12.0),
            child: Image.asset(
              'assets/camera.png',
              width: 29,
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(12.0),
            child: CircleAvatar(
              backgroundColor: Colors.white,
              radius: 20,
              backgroundImage: AssetImage('assets/plus.png'),
            ),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 16.0),
            child: Text(
              'Chats',
              style: TextStyle(
                fontSize: 33,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Row(
              children: [
                Container(
                  width: 320,
                  padding: EdgeInsets.all(5.0),
                  decoration: BoxDecoration(
                    color: Color(0xFFeeeef0),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: const Row(
                    children: [
                      Icon(
                        Icons.search,
                        color: Color(0xFF808082),
                        size: 19,
                      ),
                      SizedBox(width: 4.0),
                      Text(
                        'Buscar',
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFF808082),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 16.0),
                Image.asset(
                  'assets/filter.png',
                  width: 18,
                  height: 18,
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ),
          SizedBox(height: 8.0),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 6.0),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18),
                  child: Image.asset(
                    'assets/archived.png',
                    width: 18,
                    height: 18,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(width: 18.0),
                const Text(
                  'Archivados',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Spacer(),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    '1',
                    style: TextStyle(
                      color: Color(0xFF0079fe),
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Divider(
            thickness: 1.0,
            color: Color.fromARGB(255, 220, 220, 220),
            indent: 88.0,
            endIndent: 0,
          ),
          nonSeenChat('User 1', 'Hola, como estas?', '2:18 p. m.', '3'),
          const Divider(
            thickness: 1.0,
            color: Color.fromARGB(255, 220, 220, 220),
            indent: 88.0,
            endIndent: 0,
          ),
          seenChat('User 2', 'Vas a sacar 5 en la actividad!', '4:15 p. m.'),
          const Divider(
            thickness: 1.0,
            color: Color.fromARGB(255, 220, 220, 220),
            indent: 88.0,
            endIndent: 0,
          ),
          seenChat('User 3', 'excelente:)', '2:18 p. m.'),
          const Divider(
            thickness: 1.0,
            color: Color.fromARGB(255, 220, 220, 220),
            indent: 88.0,
            endIndent: 0,
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 40.0, vertical: 12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/lock.png', // Ruta de la imagen
                  width: 12,
                  height: 12,
                  fit: BoxFit.cover,
                ),
                SizedBox(width: 8.0),
                Expanded(
                  child: Center(
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        style: TextStyle(
                          color:
                              Colors.grey, // Color gris para la parte inicial
                          fontSize: 12,
                        ),
                        children: [
                          TextSpan(
                            text: 'Tus mensajes personales están cifrados de ',
                          ),
                          TextSpan(
                            text: 'extremo a\n',
                            style: TextStyle(
                              color: Color(
                                  0xFF0079fe), // Color azul para "extremo a"
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: 'extremo', // Última palabra centrada
                            style: TextStyle(
                              color: Color(
                                  0xFF0079fe), // Color azul para "extremo"
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: footer(),
    );
  }
}