
import 'package:flutter/material.dart';
import 'package:practicaspreprofesionales/comp/customAppBar.dart';
import 'package:practicaspreprofesionales/comp/customDrawer.dart';
import 'package:practicaspreprofesionales/comp/custombottomNavigationBar.dart';

class HomePage extends StatefulWidget{
  const HomePage ({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();

}

class _HomePageState extends State<HomePage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        appBar: CustomAppBar(),
        drawer: CustomDrawer(),
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.all(15),
              decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Color.fromARGB(255, 0, 0, 99),
              ),
              child: Column(
                children: <Widget>[

                  // Usamos ListTile para ordenar la información del card como titulo, subtitulo e icono
                  ListTile(
                    contentPadding: EdgeInsets.fromLTRB(15, 5, 25, 0),
                    title: Center(
                      child: Text('Requisitos', style: TextStyle(fontStyle: FontStyle.italic, color: Color.fromARGB(255, 0, 225, 255).withOpacity(1), fontSize: 20)),),
                    
                    subtitle: Text(
                      textAlign: TextAlign.justify,
                        'The book contains elements of social criticism with a strong sense of Christian morality at its core, and it is considered by many to be ahead of its time because of Janes individualistic character and how the novel approaches the topics of class, sexuality, religion, and feminism.', style: TextStyle(fontStyle: FontStyle.italic, color: Color.fromARGB(255, 255, 255, 255).withOpacity(1))),
                    leading: ConstrainedBox(
                      constraints: BoxConstraints(
                        minWidth: 60,
                        minHeight: 150,
                        maxWidth: 120,
                        maxHeight: 170,
                      ),
                      child: Image.network('https://serviciosocial.senado.gob.mx/images/requisito.png', fit: BoxFit.cover),
                    ),
                    
                  ),
                  
                  
                  // Usamos una fila para ordenar los botones del card
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      FlatButton(onPressed: () => {}, child: Text('Información completa', style: TextStyle(fontStyle: FontStyle.italic, color: Color.fromARGB(255, 43, 233, 247).withOpacity(1)))),
                    ],
                  )
                ],
              ),
            ),

            Container(
          margin: EdgeInsets.all(15),
          decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Color.fromARGB(255, 0, 0, 99),
          ),
          child: Column(
            children: <Widget>[

              // Usamos ListTile para ordenar la información del card como titulo, subtitulo e icono
              ListTile(
                contentPadding: EdgeInsets.fromLTRB(15, 5, 25, 0),
                title: Center(
                  child: Text('Procedimientos', style: TextStyle(fontStyle: FontStyle.italic, color: Color.fromARGB(255, 0, 225, 255).withOpacity(1), fontSize: 20)),),
                
                subtitle: Text(
                  textAlign: TextAlign.justify,
                    'The story takes place in an imagined future, the year 1984, when much of the world has fallen victim to perpetual war, omnipresent government urveillance, historical negationism, and propaganda. Great Britain, known as Airstrip One.', style: TextStyle(fontStyle: FontStyle.italic, color: Color.fromARGB(255, 255, 255, 255).withOpacity(1))),
                leading: ConstrainedBox(
                  constraints: BoxConstraints(
                    minWidth: 60,
                    minHeight: 150,
                    maxWidth: 120,
                    maxHeight: 170,
                  ),
                  child: Image.network('https://procemconsultores.com/wp-content/uploads/2017/10/manual-011.png', fit: BoxFit.cover),
                ),
                
              ),
              
              
              // Usamos una fila para ordenar los botones del card
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  FlatButton(onPressed: () => {}, child: Text('Información completa', style: TextStyle(fontStyle: FontStyle.italic, color: Color.fromARGB(255, 43, 233, 247).withOpacity(1)))),
                ],
              )
            ],
          ),
        ),
          ],
        ),
        bottomNavigationBar: CustomBottomNavigationBar(),
      ),
      
    );
  }
}