import 'package:flutter/material.dart';

class programacionInduccion extends StatefulWidget {
  static String name = "programacionInduccion";
  const programacionInduccion({super.key});

  @override
  State<programacionInduccion> createState() => _programacionInduccionState();
}

class _programacionInduccionState extends State<programacionInduccion> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          "CURSOS DEL ERP",
          style: TextStyle(color: Colors.red, fontFamily: "blond"),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          
          
          //! llamando a las clases
          children: <Widget>[

            // SizedBox(height: 15),
            Text("PROGRAMA DE INDUCCION / INDUCCION"),
            listaCursos(),
          ],
        ),
      ),
    );
  }
}

class link extends StatelessWidget {
  const link({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
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
      width: 180,
      height: 180,
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
      child: Column(
        children: <Widget>[
          Container(
            height: 90,
            width: 180, 
            child: IconButton(
              padding:  EdgeInsets.only(top: 10),
              icon: const Icon(Icons.play_circle_outline_sharp, size: 68.0,
              color: Colors.red,
              ),
              onPressed: () => {

              },
            )
          ),
           Container(
            height: 90,
            width: 180,
            padding: EdgeInsets.only(left: 45,right: 25),
            
            child: const Center(
              child: Text("INDUCCION A ALMACENES",style: TextStyle(color:Colors.red,
              fontWeight: FontWeight.bold
              )),
              ),
            ),
        ],
      ),
    );
  }
}
