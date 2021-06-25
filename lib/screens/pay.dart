import 'package:credit_card/credit_card_model.dart';
import 'package:flutter/material.dart';
import 'package:credit_card/flutter_credit_card.dart';
import 'package:giffy_dialog/giffy_dialog.dart';
import 'package:tambo/model/producto.dart';
import 'package:tambo/model/venta.dart';
import 'package:tambo/provider/db_provider.dart';

class Pay extends StatefulWidget {
  final Producto producto;
  Pay({Key key, this.producto}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return PayState();
  }
}

class PayState extends State<Pay> {
  String cardNumber = '';
  String expiryDate = '';
  String cardHolderName = '';
  String cvvCode = '';
  bool isCvvFocused = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Credit Card View Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        resizeToAvoidBottomInset: true,
        body: SafeArea(
          child: Column(
            children: <Widget>[
              CreditCardWidget(
                cardNumber: cardNumber,
                expiryDate: expiryDate,
                cardHolderName: cardHolderName,
                cvvCode: cvvCode,
                showBackView: isCvvFocused,
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: CreditCardForm(
                    onCreditCardModelChange: onCreditCardModelChange,
                  ),
                ),
              )
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.payments_outlined),
          onPressed: () {
            cardNumber.isNotEmpty ? comprar() : nocompra();
          },
        ),
      ),
    );
  }

  void onCreditCardModelChange(CreditCardModel creditCardModel) {
    setState(() {
      cardNumber = creditCardModel.cardNumber;
      expiryDate = creditCardModel.expiryDate;
      cardHolderName = creditCardModel.cardHolderName;
      cvvCode = creditCardModel.cvvCode;
      isCvvFocused = creditCardModel.isCvvFocused;
    });
  }

  void comprar() {
    Venta v = new Venta(
        id: '12',
        nombre: widget.producto.nombre,
        precio: widget.producto.precio,
        img: widget.producto.img);
    print(v.toJson());
    DBProvider.db.nuevaVenta(v);
    showDialog(
        context: context,
        builder: (_) => NetworkGiffyDialog(
              image: Image.network(
                  "https://raw.githubusercontent.com/Shashank02051997/FancyGifDialog-Android/master/GIF's/gif14.gif"),
              title: Text('Genial tu compra se ha hecho con exito',
                  textAlign: TextAlign.center,
                  style:
                      TextStyle(fontSize: 22.0, fontWeight: FontWeight.w600)),
              description: Text(
                'Espera un momento mientras terminamos de empacar tus cosas online',
                textAlign: TextAlign.center,
              ),
              entryAnimation: EntryAnimation.BOTTOM_LEFT,
              onOkButtonPressed: () {
                Navigator.of(context).pop();
                Navigator.of(context).pop();
                Navigator.of(context).pop();
              },
            ));
  }

  nocompra() {
    showDialog(
        context: context,
        builder: (_) => NetworkGiffyDialog(
              image: Image.network(
                  "https://miro.medium.com/max/1036/1*RldwUWW-o27j6heG9dyUbQ.gif"),
              title: Text('Error tiene que llenar todos los datos ',
                  textAlign: TextAlign.center,
                  style:
                      TextStyle(fontSize: 22.0, fontWeight: FontWeight.w600)),
              description: Text(
                'Espera un momento verifique que los datos esten llenos',
                textAlign: TextAlign.center,
              ),
              entryAnimation: EntryAnimation.BOTTOM_LEFT,
              onOkButtonPressed: () {},
            ));
  }
}
