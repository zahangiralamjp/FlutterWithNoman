import 'package:flutter/material.dart';
import 'package:flutter_application_6/porem_view.dart';

import 'poem_model.dart';
import 'poem_source.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: ListView.builder(
        itemCount: PoemSources.PoemData.length,
        itemBuilder: (context, index) {
          PoemModel data = PoemSources.PoemData[index];
          //  PoemModel jj = RoemSource.porems[index];
          /// itemCount: PoemSources.PoemData.length,
          return Card(
            child: ListTile(
              ///  title: Text(data.PoemName),
              /// subtitle: Text(data.PoemAuthor),

              title: Text(data.PoemName),
              subtitle: Text(data.PoemAuthor),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => PoremViewPage(
                            data.PoemName, data.PoemAuthor, data.Poem)));
              },
            ),
          );
        },
      ),
    ));
  }
}


/*
import 'package:flutter/material.dart';
import 'package:flutter_application_6/poem_model.dart';
import 'package:flutter_application_6/poem_source.dart';
import 'package:flutter_application_6/porem_view.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: ListView.builder(
        itemCount: PoemSources.PoemData.length,
        itemBuilder: (context, index) {
          PoemModel data = PoemSources.PoemData[index];
          return Card(
            child: ListTile(
              title: Text(data.PoemName),
              subtitle: Text(data.PoemAuthor),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (_)=>PoremViewPage(data.PoemName, data.PoemAuthor, data.Poem)));
              },
            ),
          );
        },
        

         ),),
    );
  }
}

*/











