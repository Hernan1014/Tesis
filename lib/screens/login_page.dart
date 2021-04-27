import 'package:flutter/material.dart';
import 'package:tambo/screens/user.dart';
 

class LoginPage extends StatelessWidget {

 


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          _crearFondo( context ),
          _loginForm( context ),
        ],
      )
    );
  }

  Widget _loginForm(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        children: <Widget>[

          SafeArea(
            child: Container(
              height: 180.0,
            ),
          ),

          Container(
            width: size.width * 0.85,
            margin: EdgeInsets.symmetric(vertical: 30.0),
            padding: EdgeInsets.symmetric( vertical: 50.0 ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5.0),
              boxShadow: <BoxShadow>[
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 3.0,
                  offset: Offset(0.0, 5.0),
                  spreadRadius: 3.0
                )
              ]
            ),
            child: Column(
              children: <Widget>[
                Text('Ingreso', style: TextStyle(fontSize: 20.0)),
                SizedBox( height: 60.0 ),
                 _crearEmail(  'bloc'),
                SizedBox( height: 30.0 ),
                _crearPassword(  'bloc' ),
                SizedBox( height: 30.0 ),
                _crearBoton(  'bloc' )
              ],
            ),
          ),

          FlatButton(
            child: Text('Crear una nueva cuenta'),
            onPressed: ()=> Navigator.pushReplacementNamed(context, 'registro'),
          ),
          SizedBox( height: 100.0 )
        ],
      ),
    );


  }

  Widget _crearEmail(String bloc) {
   return Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0), 
        child:  TextFormField(
            decoration: const InputDecoration(
              border: UnderlineInputBorder(),
              filled: true,
           
              hintText: 'Correo electrónico',
              labelText: 'E-mail',
            ),
            keyboardType: TextInputType.emailAddress,
            onSaved: (String value) { 
              print('email=$value');
            },
          ),

      );
  


  }

  Widget _crearPassword(String bloc) {
   return Container(
          padding: EdgeInsets.symmetric(horizontal: 20.0),

          child: PasswordField(
            helperText: 'No más de 8 caracteres.',
            labelText: 'Contraseña *',
            onFieldSubmitted: (String value) {
             
            },
          ),

        );
  

  }

  Widget _crearBoton( String bloc) {

    // formValidStream
    // snapshot.hasData
    //  true ? algo si true : algo si false
  return RaisedButton(
          child: Container(
            padding: EdgeInsets.symmetric( horizontal: 80.0, vertical: 15.0),
            child: Text('Ingresar'),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.0)
          ),
          elevation: 0.0,
          color: Colors.deepPurple,
          textColor: Colors.white,
          onPressed:  _login(  )  
        );
  
  }

  _login( )   {
 
    
  }


  Widget _crearFondo(BuildContext context) {

    final size = MediaQuery.of(context).size;

    final fondoModaro = Container(
      height: size.height * 0.4,
      width: double.infinity,
      color: Color.fromRGBO(90, 70, 178, 1.0) 
    );

    final circulo = Container(
      width: 100.0,
      height: 100.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100.0),
        color: Color.fromRGBO(255, 255, 255, 0.05)
      ),
    );


    return Stack(
      children: <Widget>[
        fondoModaro,
        Positioned( top: 90.0, left: 30.0, child: circulo ),
        Positioned( top: -40.0, right: -30.0, child: circulo ),
        Positioned( bottom: -50.0, right: -10.0, child: circulo ),
        Positioned( bottom: 120.0, right: 20.0, child: circulo ),
        Positioned( bottom: -50.0, left: -20.0, child: circulo ),
        
        Container(
          padding: EdgeInsets.only(top: 80.0),
          child: Column(
            children: <Widget>[
              Icon( Icons.person_pin_circle, color: Colors.white, size: 100.0 ),
              SizedBox( height: 10.0, width: double.infinity ),
              Text('Mushuk Yuyay', style: TextStyle( color: Colors.white, fontSize: 25.0 ))
            ],
          ),
        )

      ],
    );

  }

}