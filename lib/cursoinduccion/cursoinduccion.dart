import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';


class CursoInduccion extends StatefulWidget {
  static String name = "CursoInduccion";
  const CursoInduccion({super.key});

  @override
  State<CursoInduccion> createState() => _CursoInduccionState();
}

class _CursoInduccionState extends State<CursoInduccion> {




  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
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
            SizedBox(height: 10),
            Text("CURSO DE INDUCCION",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.red,
              fontWeight: FontWeight.bold,
              fontSize: 20,
              ), 
            ),
            
            SizedBox(height: 10),
            listaCursos(),
            listaCursos(),
            listaCursos(),
            listaCursos(),
            listaCursos(),
            SizedBox(height: 10),
            botonEvaluacion(),
            

            

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
        color: const Color.fromARGB(255, 255, 255, 255),
        boxShadow: const [
          BoxShadow(
            color: Color.fromARGB(255, 163, 156, 156),
            blurRadius: 1,
            offset: Offset(2, 2),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 50,
            width: double.infinity,
            // color: Colors.blue,
            child: const Center(
              child: Text(
                "INDUCCION",
                style: TextStyle(color: Colors.red,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Container(
            height: 50,
            width: double.infinity,
            // color: Colors.yellow,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                Text("Documentos : 0 ",
                style: TextStyle(color: Colors.red,
                        fontSize: 15,
                        fontWeight: FontWeight.bold)
                ),
                SizedBox(width: 25),
                Text("Video : 0 ",
                style: TextStyle(color: Colors.red,
                        fontSize: 15,
                        fontWeight: FontWeight.bold)
                ),
              ],
            ),
          ),
          
        ],
      ),
    );
  }
}


class botonEvaluacion extends StatelessWidget {
  const botonEvaluacion({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
              margin: const EdgeInsets.all(15),
              height: 70,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color(0xffFFFFFF),
                border: Border.all(color: const Color(0xffFF0000), width: 3),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 80),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:  [
                    const Text(
                      "REALIZA TU EVALUACION",
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                        color: Colors.red,
                      ),
                    ),
                      MaterialButton(
                        onPressed: () {},
                        child: const Icon(
                          Icons.perm_contact_cal_outlined,
                          color: Colors.red,
                          size: 29.0,
                        ),
                      ),
                    
                  ],
                ),
              ),
          );
  }
}

