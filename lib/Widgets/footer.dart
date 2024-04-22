import 'package:flutter/material.dart';

class footer extends StatelessWidget {
  const footer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75, // Establece la altura deseada para el pie de página
      padding: EdgeInsets.symmetric(
          vertical: 6), // Ajusta el padding según necesites
      decoration: BoxDecoration(
        color: Color(0xFFf7f7f7), // Color de fondo del footer
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(0, -0.2), // Cambia el desplazamiento vertical
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
            Column(
              children: [
                Image.asset(
                  'assets/estados.png',
                  width: 30,
                  height: 30,
                ),
                SizedBox(height: 5),
                Text(
                  'Novedades', // Aquí puedes ajustar los textos
                  style: TextStyle(fontSize: 11, color: Color(0xFF8d8d8d)),
                ),
              ],
            ),
            Column(
              children: [
                Image.asset(
                  'assets/call.png',
                  width: 30,
                  height: 30,
                ),
                SizedBox(height: 5),
                Text(
                  'Llamadas', // Aquí puedes ajustar los textos
                  style: TextStyle(fontSize: 11, color: Color(0xFF8d8d8d)),
                ),
              ],
            ),
            Column(
              children: [
                Image.asset(
                  'assets/comunity.png',
                  width: 35,
                  height: 35,
                ),
                SizedBox(height: 0),
                Text(
                  'Comunidades', // Aquí puedes ajustar los textos
                  style: TextStyle(fontSize: 11, color: Color(0xFF8d8d8d)),
                ),
              ],
            ),
            Column(
              children: [
                Image.asset(
                  'assets/chat.png',
                  width: 35,
                  height: 35,
                ),
                Text(
                  'Chats', // Aquí puedes ajustar los textos
                  style: TextStyle(fontSize: 11, color: Color(0xFF8d8d8d)),
                ),
              ],
            ),
            Column(
              children: [
                Image.asset(
                  'assets/config.png',
                  width: 30,
                  height: 30,
                ),
                SizedBox(height: 5),
                Text(
                  'Configuracion', // Aquí puedes ajustar los textos
                  style: TextStyle(fontSize: 11, color: Color(0xFF8d8d8d)),
                ),
              ],
            ),
        ],
      ),
    );
  }
}
