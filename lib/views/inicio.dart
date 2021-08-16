import 'package:flutter/material.dart';//paquete principal
import 'package:schools_maps/views/widgets/barra.dart';//paquete de conexion con barra de busqueda
import 'package:schools_maps/views/widgets/widget_noticias.dart';//paquete de conexion con noticias


class Inicio extends StatefulWidget {
  static String id ='Inicio';//id de conexion con main
  @override
  State<Inicio> createState() => _MyStatefulWidgetState();
  
}


class _MyStatefulWidgetState extends State<Inicio> {
  
  int _selectedIndex = 0;//que pantalla se ve primero
  final Screens = [//esto me permite navegar entre vistas
     Barra(),
     Widgetnoticias(),
  ];
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      
      body: Container(
        
        child: Column(
          
          mainAxisSize: MainAxisSize.max,//es el espacio que queda libre en la patalla, en este caso la tenemos en maximo
          
          children: [
            Padding(padding: EdgeInsets.only(//para dar el tamaño a la barra de busqueda
            

            ),
            //conexión de widget barra con inicio
            ),
            SizedBox(
              height: 25.0,//tamaño de los iconos de la barra de busqueda
            ),
            Screens[_selectedIndex],
          ],
        ),
        
      ),
      
      
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.blue,
        selectedItemColor: Colors.white,//color de los botones cundo le doy click
        iconSize: 30,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(//boton de inicio en la barra de busqueda, este nos permite ir de la pantalla de noticias a la de inicio
            
            icon: Icon(Icons.home),
            label: 'inicio',
            backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(//boton de noticias en la barra de navegacion, este nos permite ir del inicio a la pantalla de noticias
            icon: Icon(Icons.notifications),
            label: 'Noticias',
            backgroundColor: Colors.green,
          ),
          
        ],
        currentIndex: _selectedIndex,//la variable crada para identificar al index 
        onTap: (index) => setState(() => _selectedIndex = index),//lo que pasa cuando le doy click
      ),
      floatingActionButton: FloatingActionButton(//boton flotante en la pantalla de inicio
        onPressed: () {//aqui va la accion de este boton flotante

        },
        child: const Icon(Icons.place_outlined),//icono en el boton flotante
        backgroundColor: Colors.blue//color del boton flotante
      ),
    );
    
  }
  
}


  

  

  
  
  









