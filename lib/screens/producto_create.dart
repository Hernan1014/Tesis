import 'package:flutter/material.dart';


class ProductoCreate extends StatefulWidget {
  const ProductoCreate({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _ProductoCreateState();
}

class _ProductoCreateState extends State<ProductoCreate> {
  bool _numberInputIsValid = true;

    static const menuItems = <String>[
    'assets/1.jpeg',
    'assets/2.jpeg',
    'assets/3.jpeg',
    'assets/4.jpeg',
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
      onSubmitted: (val) =>print(val),
      onChanged: (String val) {
        final v = int.tryParse(val);
        debugPrint('parsed value = $v');
        if (v == null) {
          setState(() => _numberInputIsValid = false);
        } else {
          setState(() => _numberInputIsValid = true);
        }
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
       appBar: AppBar (
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
   
        ],
      ),
    );
  }
}