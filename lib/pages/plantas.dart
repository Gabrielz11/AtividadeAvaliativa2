import 'package:atividadeavaliativa/pages/detalhes.dart';
import 'package:flutter/material.dart';
import 'dart:convert';

class PlantsPage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text("Plantas do Cerrado"),),
      body: Center(
        child: FutureBuilder(
          builder: (context, snapshot){
          var showData= json.decode(snapshot.data.toString());
          return ListView.builder(
          // ignore: missing_return
          itemBuilder: (BuildContext context, int index){
            if(showData != null){
              return Card(
                clipBehavior: Clip.antiAlias,
                child: Column(
                  children: [
                    ListTile(
                      leading: CircleAvatar(
                        backgroundImage:NetworkImage(showData[index]['imagem'].toString()),
                        radius: 30.0,
                        backgroundColor: Colors.transparent,
                      ),
                      title: Text('Nome Cientifico: ' + showData[index]['nomecientifico']),
                      subtitle: Text('Nome Botânico: ' + showData[index]['nomebotanico'],style: TextStyle(color: Colors.black.withOpacity(0.6)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                    ),
                    Image.asset(showData[index]['imagem'].toString(),scale: 2.2),
                    ButtonBar(
                      alignment: MainAxisAlignment.start,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                               builder: (context) => DetailPage(
                                   id: showData[index]['id'],
                                   imagem: showData[index]['imagem'],
                                   description: showData[index]['description'],
                                   nomecientifico: showData[index]['nomecientifico'],
                                   nomebotanico: showData[index]['nomebotanico'],
                                   habitat: showData[index]['habitat'],
                                   distribuicao: showData[index]['distribuicao'],
                                   localfoto:showData[index]['localfoto'],
                               ),
                              ),
                            );
                          },
                          child: const Text('Detalhes'),
                        ),
                      ],
                    ),
                  ],
                ),
              );
            }
          },
            itemCount: 10,
          );

        },future: DefaultAssetBundle.of(context).loadString("../assets/data.json"),
        ),
      ),

    );
  }
}