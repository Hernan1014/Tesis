import 'package:flutter/material.dart';
import 'package:tambo/model/producto.dart';
import 'package:tambo/screens/pay.dart';
import 'package:tambo/util/stepper.dart';
import 'package:tambo/widgets/icon_badge.dart';

class Details extends StatefulWidget {
  final Producto producto;
  Details({Key key, this.producto}) : super(key: key);
  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  num total = 0;
  num contador = 0;
  @override
  Widget build(BuildContext context) {
    this.calcular(contador);
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        actions: <Widget>[
          IconButton(
            icon: IconBadge(
              icon: Icons.notifications_none,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        children: <Widget>[
          SizedBox(height: 10.0),
          buildSlider(context),
          SizedBox(height: 20),
          ListView(
            padding: EdgeInsets.symmetric(horizontal: 20),
            primary: false,
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "${widget.producto.nombre}",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                      ),
                      maxLines: 2,
                      textAlign: TextAlign.left,
                    ),
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.bookmark,
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Icon(
                    Icons.location_on,
                    size: 14,
                    color: Colors.blueGrey[300],
                  ),
                  SizedBox(width: 3),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "${widget.producto.location}",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 13,
                        color: Colors.blueGrey[300],
                      ),
                      maxLines: 1,
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  "${this.total}",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                  maxLines: 1,
                  textAlign: TextAlign.left,
                ),
              ),
              SizedBox(height: 40),
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Cantidad",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                  maxLines: 1,
                  textAlign: TextAlign.left,
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8.0),
                child: StepperTouch(
                  initialValue: 1,
                  direction: Axis.horizontal,
                  withSpring: false,
                  onChanged: (int value) {
                    this.contador = value;
                    this.calcular(contador);
                  },
                ),
              ),
              SizedBox(height: 10.0),
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Detalle",
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
                child: Text(
                  "${widget.producto.descripcion}",
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 15.0,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              SizedBox(height: 10.0),
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.payment,
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => Pay(
                      producto: widget.producto,
                      total: this.total,
                    )),
          );
        },
      ),
    );
  }

  buildSlider(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(left: 20),
        height: 250.0,
        child: Padding(
          padding: EdgeInsets.only(right: 10.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: Image.asset(
              "${widget.producto.img}",
              height: 250.0,
              width: MediaQuery.of(context).size.width - 40.0,
              fit: BoxFit.cover,
            ),
          ),
        ));
  }

  void calcular(int i) {

      if (this.contador == 0) {
        this.total = widget.producto.precio;
      } else {
        this.total = widget.producto.precio * contador;
      }
    setState(() {
      print(this.contador);
    });
  }
}
