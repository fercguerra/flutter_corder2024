import 'package:flutter/material.dart';

void main() => runApp(ExpensesApp());
  

class ExpensesApp extends StatelessWidget {
  const ExpensesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage()
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Despesas Pessoais'),
      ),
      body: Center(
        child: Column(children: [
          Container(
            width: double.infinity,
            child: Card(
              color: Colors.blue,
              child: Text ('Gráfico'),
              elevation: 5,
            ),
          ),
          Card (
            child: Text ('Lista de Transações'),
            elevation: 5,
          )
        ],)
        ),
    );
  }
}