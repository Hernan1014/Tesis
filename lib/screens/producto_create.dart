import 'package:flutter/material.dart';
import 'package:giffy_dialog/giffy_dialog.dart';
import 'package:tambo/model/producto.dart';
import 'package:tambo/provider/db_provider.dart';

class ProductoCreate extends StatefulWidget {
  const ProductoCreate({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _ProductoCreateState();
}

class _ProductoCreateState extends State<ProductoCreate> {
  bool _numberInputIsValid = true;
  String _nombre = '';
  String _localizacion = '';
  String _precio = '';
  static const menuItems = <String>[
    'assets/1.jpeg',
    'assets/2.jpeg',
    'assets/3.jpeg',
    'assets/4.jpeg',
    'assets/5.jpeg',
    'assets/6.jpeg',
  ];
  final List<DropdownMenuItem<String>> _dropDownMenuItems = menuItems
      .map(
        (String value) => DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        ),
      )
      .toList();

  String _btn2SelectedVal = 'assets/1.jpeg';

  Widget _buildNumberTextField() {
    return TextField(
      keyboardType: TextInputType.number,
      style: Theme.of(context).textTheme.headline4,
      decoration: InputDecoration(
        icon: const Icon(Icons.attach_money),
        labelText: 'Precio del producto:',
        errorText: _numberInputIsValid ? null : 'Ingrese el precio por favor!',
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
      ),
      onChanged: (String val) {
        this._precio = val;
      },
    );
  }

  final _controller = TextEditingController();

  Widget _buildMultilineTextField() {
    return TextField(
      controller: this._controller,
      maxLines: 10,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        counterText: '${this._controller.text.split(' ').length} words',
        labelText: 'Describe tu producto:',
        hintText: 'La avena es un...',
        border: const OutlineInputBorder(),
      ),
      onChanged: (text) => setState(() {}),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Crear Producto'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(8.0),
        children: <Widget>[
          const ListTile(title: Text('1. Precio del producto')),
          _buildNumberTextField(),
          const ListTile(title: Text('2. Descripcion')),
          _buildMultilineTextField(),
          const ListTile(title: Text('3. Imagen')),
          ListTile(
            title: const Text('Imagenes:'),
            trailing: DropdownButton(
              value: _btn2SelectedVal,
              hint: const Text('Choose'),
              onChanged: (String newValue) {
                setState(() {
                  _btn2SelectedVal = newValue;
                });
              },
              items: _dropDownMenuItems,
            ),
          ),
          const ListTile(title: Text('4. Nombre')),
          TextFormField(
            decoration: const InputDecoration(
              border: UnderlineInputBorder(),
              filled: true,
              icon: Icon(Icons.production_quantity_limits),
              hintText: 'Producto',
              labelText: 'nombre',
            ),
            keyboardType: TextInputType.text,
            onChanged: (String value) {
              this._nombre = value;
              print('email=$_nombre');
            },
          ),
          const ListTile(title: Text('5. Localizacion')),
          TextFormField(
            decoration: const InputDecoration(
              border: UnderlineInputBorder(),
              filled: true,
              icon: Icon(Icons.production_quantity_limits),
              hintText: 'Localizacion',
              labelText: 'Localizacion producto',
            ),
            keyboardType: TextInputType.text,
            onChanged: (String value) {
              this._localizacion = value;
            },
          ),
          const SizedBox(height: 24.0),
          TextButton(
            style: TextButton.styleFrom(
                primary: Colors.blue, backgroundColor: Colors.black87),
            onPressed: () {
              if (this._nombre.isNotEmpty &&
                  this._localizacion.isNotEmpty &&
                  this._controller.text.isNotEmpty &&
                  this._precio.isNotEmpty) {
                Producto p = new Producto(
                    id: '12',
                    nombre: this._nombre,
                    descripcion: this._controller.text,
                    location: this._localizacion,
                    precio: int.tryParse(this._precio),
                    img: _btn2SelectedVal);
                print(p.toJson());
                DBProvider.db.nuevoProducto(p);
                showDialog(
                    context: context,
                    builder: (_) => NetworkGiffyDialog(
                          image: Image.network(
                              "https://raw.githubusercontent.com/Shashank02051997/FancyGifDialog-Android/master/GIF's/gif14.gif"),
                          title: Text(
                              'Genial tu producto se almaceno en la base de datos',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 22.0, fontWeight: FontWeight.w600)),
                          description: Text(
                            'Espera un momento mientras terminamos de empacar tus cosas online',
                            textAlign: TextAlign.center,
                          ),
                          entryAnimation: EntryAnimation.BOTTOM_LEFT,
                          onOkButtonPressed: () {},
                        ));
              } else {
                showDialog(
                    context: context,
                    builder: (_) => NetworkGiffyDialog(
                          image: Image.network(
                              "https://miro.medium.com/max/1036/1*RldwUWW-o27j6heG9dyUbQ.gif"),
                          title: Text('Error tiene que llenar todos los datos ',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 22.0, fontWeight: FontWeight.w600)),
                          description: Text(
                            'Espera un momento verifique que los datos esten llenos',
                            textAlign: TextAlign.center,
                          ),
                          entryAnimation: EntryAnimation.BOTTOM_LEFT,
                          onOkButtonPressed: () {},
                        ));
              }
            },
            child: Text('Guardar'),
          )
        ],
      ),
    );
  }
}
