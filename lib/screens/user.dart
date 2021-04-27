import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class User extends StatefulWidget {
  const User({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _UserState();
}

// Adapted from the text form demo in official gallery app:
// https://github.com/flutter/flutter/blob/master/examples/flutter_gallery/lib/demo/material/text_form_field_demo.dart
class _UserState extends State<User> {
  final GlobalKey<FormFieldState<String>> _passwordFieldKey =
      GlobalKey<FormFieldState<String>>();

  String _name;
  String _phoneNumber;
  String _email;
  String _password;

  String _validateName(String value) {
    if (value.isEmpty) return 'Name is required.';
    final RegExp nameExp = RegExp(r'^[A-Za-z ]+$');
    if (!nameExp.hasMatch(value)) {
      return 'Please enter only alphabetical characters.';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          const SizedBox(height: 50.0),
          // "Name" form.
          TextFormField(
            textCapitalization: TextCapitalization.words,
            initialValue: 'Hernan Tutillo',
            decoration: const InputDecoration(
              border: UnderlineInputBorder(),
              filled: true,
              icon: Icon(Icons.person),
              hintText: '¿Cómo te llama?',
              labelText: 'Nombre *',
              
            ),
            onSaved: (String value) {
              this._name = value;
              print('name=$_name');
            },
            validator: _validateName,
          ),
          const SizedBox(height: 24.0),
          // "Phone number" form.
          TextFormField(
            initialValue: '09987517863',
            decoration: const InputDecoration(
              border: UnderlineInputBorder(),
              filled: true,
              icon: Icon(Icons.phone),
              hintText: '¿Dónde podemos llamarte?',
              labelText: 'Número de teléfono *',
              prefixText: '+593',
            ),
            keyboardType: TextInputType.phone,
            onSaved: (String value) {
              this._phoneNumber = value;
              print('phoneNumber=$_phoneNumber');
            },
            // TextInputFormatters are applied in sequence.
            inputFormatters: <TextInputFormatter>[
              FilteringTextInputFormatter.digitsOnly
            ],
          ),
          const SizedBox(height: 24.0),
          // "Email" form.
          TextFormField(
            initialValue: 'tutillo@est.ucacue.edu.ec',
            decoration: const InputDecoration(
              border: UnderlineInputBorder(),
              filled: true,
              icon: Icon(Icons.email),
              hintText: 'Correo electrónico',
              labelText: 'E-mail',
            ),
            keyboardType: TextInputType.emailAddress,
            onSaved: (String value) {
              this._email = value;
              print('email=$_email');
            },
          ),
          const SizedBox(height: 24.0),
          // "Life story" form.
          TextFormField(
            initialValue: 'Canar, Calle guayaquil Tienda Susanita',
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Cuéntanos acerca de tí',
              helperText: 'Sea breve, esto es solo una demostración.',
              labelText: 'Historia de vida',
            ),
            maxLines: 3,
          ),
          const SizedBox(height: 24.0),
          // "Salary" form.
          TextFormField(
            initialValue: '100',
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Salario',
                prefixText: '\$',
                suffixText: 'USD',
                suffixStyle: TextStyle(color: Colors.green)),
          ),
          const SizedBox(height: 24.0),
          // "Password" form.
        
         
        ],
      ),
    );
  }
}

class PasswordField extends StatefulWidget {
  const PasswordField({
    this.fieldKey,
    this.hintText,
    this.labelText,
    this.helperText,
    this.onSaved,
    this.validator,
    this.onFieldSubmitted,
  });

  final Key fieldKey;
  final String hintText;
  final String labelText;
  final String helperText;
  final FormFieldSetter<String> onSaved;
  final FormFieldValidator<String> validator;
  final ValueChanged<String> onFieldSubmitted;

  @override
  _PasswordFieldState createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      key: widget.fieldKey,
      obscureText: _obscureText,
      maxLength: 8,
      onSaved: widget.onSaved,
      validator: widget.validator,
      onFieldSubmitted: widget.onFieldSubmitted,
      decoration: InputDecoration(
        border: const UnderlineInputBorder(),
        filled: true,
        hintText: widget.hintText,
        labelText: widget.labelText,
        helperText: widget.helperText,
        suffixIcon: GestureDetector(
          onTap: () {
            setState(() {
              _obscureText = !_obscureText;
            });
          },
          child: Icon(_obscureText ? Icons.visibility : Icons.visibility_off),
        ),
      ),
    );
  }
}