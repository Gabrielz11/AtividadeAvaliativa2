import 'dart:convert';
import 'dart:js';

import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget{
  DetailPage({this.id,this.imagem,this.description,this.nomecientifico,this.nomebotanico,this.habitat,this.distribuicao,this.localfoto}); /* Esse é o creator que vai receber os dados */
  final int id;
  final String imagem;
  final String description;
  final String nomecientifico;
  final String nomebotanico;
  final String habitat;
  final String distribuicao;
  final String localfoto;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Detalhes")),
      body: Center(
        child: Card(
          clipBehavior: Clip.antiAlias,
          child: Column(
            children: [
              ListTile(
                leading: CircleAvatar(
                  backgroundImage:NetworkImage(imagem),
                  radius: 30.0,
                  backgroundColor: Colors.transparent,
                ),
                title: Text('Nome Cientifico: ' + nomecientifico),
                subtitle: Text('Nome Botânico: ' + nomebotanico,style: TextStyle(color: Colors.black.withOpacity(0.6)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
              ),
              Image.asset(imagem,scale: 1.8, fit: BoxFit.cover),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Row(
                      children: <Widget>[
                        Text(
                          "DETALHES",
                          style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.green),
                        ),

                      ],
                    ),
                    SizedBox(
                      width: 10,
                      height: 10,
                    ),
                    Row(
                      children: <Widget>[
                        Text("Habitat: ", style:TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Colors.black)),
                        Flexible(
                        child: Text(habitat, style:TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Colors.teal)),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 10,
                      height: 10,
                    ),
                    Row(
                      children: <Widget>[
                        Text("Distribuição: ", style:TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Colors.black),),
                        Flexible(
                        child: Text(distribuicao, style:TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Colors.teal),),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 10,
                      height: 10,
                    ),
                    Row(
                      children: <Widget>[
                        Text("Local da Foto: ", style:TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Colors.black),),
                        Flexible(
                        child: Text(localfoto, style:TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Colors.teal),),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

}


