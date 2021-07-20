import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _valorSlider = 100.0;
  bool _bloquearCheck = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider'),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 50.0),
        child: Column(
          children: <Widget>[_crearSlider(), _crearCheckbox(),
          _crearSwitch(), _crearImagen()],
        ),
      ),
    );
  }

  Widget _crearSlider() {
    return Slider(
      activeColor: Colors.indigoAccent,
      label: 'Tamaño de la imagen',
      divisions: 20,
      value: _valorSlider,
      min: 10.0,
      max: 400.0,
      onChanged: (_bloquearCheck)
          ? null
          : (valor) {
              setState(() {
                _valorSlider = valor;
              });
            },
    );
  }

  Widget _crearCheckbox() {
    // return Checkbox(
    //     value: _bloquearCheck,
    //     onChanged: (valor) {
    //       setState(() {
    //          _bloquearCheck = valor!;
    //       });

    //     },
    // );
    return CheckboxListTile(
        title: Text('Bloquear slider') ,
        value: _bloquearCheck,
        onChanged: (valor) {
          setState(() {
            _bloquearCheck = valor!;
          });
        });
  }

  Widget _crearSwitch() {
    return SwitchListTile(
        title: Text('Bloquear slider') ,
        value: _bloquearCheck,
        onChanged: (valor) {
          setState(() {
            _bloquearCheck = valor;
          });
        });
  }

  Widget _crearImagen() {
    return Image(
      image: NetworkImage(
          'https://www.google.com/url?sa=i&url=https%3A%2F%2Ffotoarte.com.uy%2Fblog%2Ffotografia-landscape%2F&psig=AOvVaw0mQvPiXLnnw9GZbkxU3TWe&ust=1625606184820000&source=images&cd=vfe&ved=0CAoQjRxqFwoTCLDUofbszPECFQAAAAAdAAAAABAJ'),
      width: _valorSlider,
      fit: BoxFit.contain,
    );
  }

  
}
