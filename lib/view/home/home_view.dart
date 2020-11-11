import 'package:flutter/material.dart';
import 'package:sampleexercise/view/transactions/transactions_view.dart';

class HomeView extends StatefulWidget {
  HomeView({Key key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Center(
          child: FloatingActionButton(onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>TransactionsView()));
            }, child: Icon(Icons.accessibility_new),backgroundColor: Colors.black,),
        ),
      ),
    );
  }
}
