import 'package:flutter/material.dart';

// ignore: must_be_immutable
class PoremViewPage extends StatelessWidget {
  String PoemName;
  String PoemAuthor;
  String Poem;

  PoremViewPage(this.PoemName, this.PoemAuthor, this.Poem);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(PoemName),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Container(
            height: 500,
            width: 450,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
            ),
            child: Center(
                child: Text(
              Poem,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 30, color: Colors.black),
            )),
          ),
        ),
      ),
    );
  }
}





///PoremViewPage
/*
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class PoremViewPage extends StatefulWidget {
  String poemName;
  String poem;
  PoremViewPage(this.poemName, this.poem);

  @override
  State<PoremViewPage> createState() => _PoremViewPageState();
}

class _PoremViewPageState extends State<PoremViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.poemName),
      ),
      body: Container(
        width: 500,
        height: 300,
        decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.2),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
            child: Padding(
          padding: const EdgeInsets.all(15),
          child: Text(
            widget.poem,
            style: TextStyle(
              color: Colors.black,
            ),
            textAlign: TextAlign.center,
          ),
        )),
      ),
    );
  }
}


*/