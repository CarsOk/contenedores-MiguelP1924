import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.red,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: Text(
              'JUNIOR DE BARRANQUILLA',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),
            ),
          ),
          drawer: MenuLateral(),
          body: Center(
            child: (Column(
              children: [
                Image(
                  image: NetworkImage('https://as01.epimg.net/colombia/imagenes/2020/09/08/futbol/1599570234_616333_1599570362_noticia_normal_recorte1.jpg'),
                ),
                SizedBox(
                  height: 35.0,
                ),
                Text(
                  'Aplicacion oficial del Club Atletico Junior de Barranquilla',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  'Siguenos en nuestras redes sociales',
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w800, fontStyle: FontStyle.italic),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Image(
                      image: NetworkImage('https://brandemia.org/sites/default/files/inline/images/facebook_icono_despues2.jpg'),
                      height: 50,
                      width: 50,
                      alignment: Alignment.bottomCenter,
                    ),
                    Image(
                      image: NetworkImage('https://www.enter.co/wp-content/uploads/2016/05/InstagramNuevoLook.jpg'),
                      height: 70,
                      width: 70,
                      alignment: Alignment.bottomCenter,
                    )
                  ],
                ),
              ],
            )),
          ),
        ));
  }
}

class MenuLateral extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          new UserAccountsDrawerHeader(
            decoration: BoxDecoration(image: DecorationImage(image: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/thumb/f/fc/Escudo_de_Atl%C3%A9tico_Junior.svg/897px-Escudo_de_Atl%C3%A9tico_Junior.svg.png'), fit: BoxFit.fill)),
          ),
          Ink(
            color: Colors.red,
            child: ListTile(
              title: Text(
                'Menu',
                style: TextStyle(color: Colors.black, fontStyle: FontStyle.italic, fontSize: 30.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
