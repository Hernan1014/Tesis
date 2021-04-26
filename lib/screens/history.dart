import 'package:flutter/material.dart';

class History extends StatelessWidget {
  const History({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        SizedBox(height: 30.0),
        Padding(
          padding: EdgeInsets.only(right: 10.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: Image.asset(
              "assets/logo.jpg",
              height: 300.0,
              width: MediaQuery.of(context).size.width - 40.0,
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(height: 20.0),
        Container(
          alignment: Alignment.centerLeft,
          child: Text(
            "Historia",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
            maxLines: 1,
            textAlign: TextAlign.left,
          ),
        ),
        SizedBox(height: 20.0),
        Container(
          alignment: Alignment.centerLeft,
          padding: EdgeInsets.all(16.0),
          child: Text(
            """ 
             El ministerio de Agricultura y Ganadería entregó a la Asociación Mushuk Yuyay, localizada en el cantón Suscal, provincia de Cañar, maquinaria para secado y transformación de granos andinos por un monto de 47 398,52 dólares.

El objetivo del MAG con la entrega de esta maquinaria es potenciar la producción agrícola y apoyar a los productores asociados en la elaboración de derivados como harinas para su comercialización al mercado provincial y nacional.

Guillermo Cadme, técnico responsable de Centros de Mecanización y Centros de Acopio del MAG, explicó que la Asociación beneficiada trabaja con productores a nivel provincial, es por eso que se ha entregado esta maquinaria con el afán de que mayor cantidad de agricultores de estos granos andinos sean beneficiados.
                  """,
            style: TextStyle(
              fontWeight: FontWeight.normal,
              fontSize: 15.0,
            ),
            textAlign: TextAlign.left,
          ),
        ),
             SizedBox(height: 30.0),
        Padding(
           padding: EdgeInsets.all(16.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: Image.asset(
              "assets/fabrica.png",
              height: 300.0,
              width: MediaQuery.of(context).size.width - 40.0,
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(height: 20.0),
        Container(
          alignment: Alignment.centerLeft,
          padding: EdgeInsets.all(16.0),
          child: Text(
            """ 

Lo granos que serán procesados son: quinua, amaranto, chocho, trigo y cebada.
Lo granos que serán procesados son: quinua, amaranto, chocho, trigo y cebada.

José Luis Pichizaca, administrador de la Asociación, agradeció el apoyo del MAG y de las demás instituciones que hicieron posible la construcción y equipamiento de este Centro de Acopio que servirá para mejorar sus procesos de elaboración de derivados.

La maquinaria entregada fue: trilladora, silo, escarificadora, centrífuga, lavadora de quinua, secadora, clasificadora, medidor de humedad, báscula, comedora de sacos portátil y selladora de pedal.
                  """,
            style: TextStyle(
              fontWeight: FontWeight.normal,
              fontSize: 15.0,
            ),
            textAlign: TextAlign.left,
          ),
        ), 
             SizedBox(height: 30.0),
        Padding(
           padding: EdgeInsets.all(16.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: Image.asset(
              "assets/comvi.jpg",
              height: 300.0,
              width: MediaQuery.of(context).size.width - 40.0,
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(height: 20.0),
      ],
    );
  }
}
