//  import 'dart:js';

import 'package:componentes/src/pages/alert_page.dart';
import 'package:componentes/src/pages/providers/menu_provider.dart';
import 'package:componentes/src/pages/utils/icono_string_util.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes'),
      ),
      body: _lista(),
    );
  }

  Widget _lista() {
    // print(menuProvider.opciones);

    return FutureBuilder(
      future: menuProvider.cargarData(),
      // initialData: [], /OPCIONAL - INFO POR DEFECTO CUANDO EL FUTURE NO ESTA RESUELTO
      initialData: [],
      builder: (context,
              AsyncSnapshot
                  snapshot) /*Se elimino <List<dynamic>> para error de snapshot.data
       */
          {
        return ListView(
          children: _listaItems(snapshot.data, context),
        );
      },
    );
  }

  List<Widget> _listaItems(List<dynamic> data, BuildContext context) {
    final List<Widget> opciones = [];

    data.forEach((opt) {
      final widgetTemp = ListTile(
        title: Text(opt['texto']),
        leading: getIcon(opt['icon']),
        trailing: Icon(
          Icons.keyboard_arrow_right,
          color: Colors.blue,
        ),
        onTap: () {
          Navigator.pushNamed(context, opt['ruta']);

          // final route = MaterialPageRoute(builder: (context) => AlertPage()
          // );
          // Navigator.push(context, route);
        },
      );

      opciones..add(widgetTemp)..add(Divider());
    });
    return opciones;
  }
}
