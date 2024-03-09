import 'package:expenses/models/transaction.dart';
import 'package:flutter/material.dart';

void main() => runApp(ExpensesApp());
  

class ExpensesApp extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage()
    );
  }
}

class MyHomePage extends StatelessWidget {
  final _transaction = [
    Transaction(id: 't1' , 
                title: 'Novo tênis de Corrida', 
                value: 310.76, 
                date: DateTime.now(),
    ),
        Transaction(id: 't2' , 
                title: 'Conta de Luz', 
                value: 211.30, 
                date: DateTime.now(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Despesas Pessoais'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
          Container(
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