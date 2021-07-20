import 'package:flutter/material.dart';

//Para registrar y retornar los iconos

final _icons = <String, IconData>{
  "add_alert": Icons.add_alert,
  "accessibility": Icons.accessibility,
  "folder_open": Icons.folder_open,
  "donut_large": Icons.donut_large,
  "input"      : Icons.input,
  "list"       : Icons.list, 
  "slider"     : Icons.tune, 

};

Icon getIcon (String nombreIcono) {  //Utilidad que retorna para buscar en el mapa _icons el icono que se le pasa en nombreIcono
  return Icon (_icons[nombreIcono], color:Colors.blue);
}