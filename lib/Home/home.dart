import 'package:flutter/material.dart';
import 'package:vistas/cursoinduccion/cursoinduccion.dart';
import 'package:vistas/programainduccion/programainduccion.dart';


class HomeView extends StatefulWidget {
  static String name = "HomeView";
  const HomeView({super.key});
  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {




  @override
  Widget build(BuildContext context) {

    return Scaffold(
      drawer: Drawer(
        
          child: Column(
        children: [
          DrawerHeader(child: Container()),
          Column(
            children: [
              ListTile(
                title: const Text("CURSO INTRODUCCION"),
                onTap: () {
                  Navigator.pushNamed(context, HomeView.name);
                },
              ),
              ListTile(
                title: const Text("CURSO INDUCCION"),
                onTap: () {
                  Navigator.pushNamed(context, CursoInduccion.name);
                },
              ),
              ListTile(
                title: const Text("CURSO PROGRAMACION INDUCCION"),
                onTap: () {
                  Navigator.pushNamed(context, programacionInduccion.name);
                },
              ),
            ],
          )
        ],
      )),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.red),
        backgroundColor: Colors.white,
        title: const Text("CURSOS DEL ERP",
        style: TextStyle(color: Colors.red,fontFamily: "blond"),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        
        child: Column(

          //! llamando a las clases

          children: const <Widget>[
            MyCustomForm(),
            listaCursos(),
            listaCursos(),
            listaCursos(),
            listaCursos(),

          ],
        ),
        ),
    );
  }
}







class listaCursos extends StatelessWidget {
  const listaCursos({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      width: double.infinity,
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color.fromARGB(255, 255, 255, 255),
        boxShadow: const [
          BoxShadow(
            color: Color.fromARGB(255, 163, 156, 156),
            blurRadius: 1,
            offset: Offset(2, 2),
          ),
        ],
      ),
      child: Row(
        children: <Widget>[
          Container(
            height: double.infinity,
            width: 200,
            padding: EdgeInsets.only(left: 18),
            child: const Center(
              child: Text(
                "CURSO DE INTRODUCCION",
                style: TextStyle(color: Colors.red,
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                ),
              ),
            ),
          ),
          Container(
            height: double.infinity,
            width: 120, 
            margin: EdgeInsets.all(15),
            color: Color.fromARGB(255, 253, 2, 2),
            child:  Center(  
              child: Image(
                image: NetworkImage('https://yt3.googleusercontent.com/ytc/AL5GRJVvJCxTmNF1v5I1TTqL_qQELI_XgzojrgX2HoTR=s900-c-k-c0x00ffffff-no-rj'),
                 height: double.infinity,
                 width: 120,
              ),
            ),
          ),
        ],
      ),
    );
  }
}



class MyCustomForm extends StatelessWidget {
  const MyCustomForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:  const <Widget>[
        
        Padding(
          
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextField(
            
            decoration: InputDecoration(
              
              border: OutlineInputBorder( 
               borderRadius: BorderRadius.all(Radius.circular(10.0)),
               borderSide: BorderSide(color: Colors.red),
              ),
              
              hintText: 'Buscar curso',
            ),
          ),
        ),
      ],
    );
  }
}