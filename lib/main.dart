import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text("Conta de usuário"),
          ),
          body: HomeWidget()),
    );
  }
}

class HomeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            height: 300,
            width: 300,
            child: ClipOval(
              child: Image.network(
                "https://scontent.fpoa12-1.fna.fbcdn.net/v/t1.6435-9/163165825_439972587063590_4293061257515245396_n.jpg?_nc_cat=106&ccb=1-5&_nc_sid=174925&_nc_eui2=AeGRCS17cbpQpXMJxDiTtea-X274bj6mPy9fbvhuPqY_L-GAw8NFy61MsWh8ER2JAdwyoe1qrKuw0_GJOMG8GoHK&_nc_ohc=aiL213phSyAAX88VjzD&_nc_ht=scontent.fpoa12-1.fna&oh=12aa5bc155fe6c2fc55dc10f9c6f015c&oe=614694F3",
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            "Leandro & Marlene",
            style: TextStyle(
                color: Colors.grey[700],
                fontSize: 24,
                fontWeight: FontWeight.bold),
          ),
          Text(
            "melnikmarlene@gmail.com",
            style: TextStyle(color: Colors.grey, fontSize: 18),
          ),
          SizedBox(
            height: 30,
          ),
          Material(
            color: Colors.blue,
            elevation: 7,
            borderRadius: BorderRadius.circular(40),
            child: InkWell(
              borderRadius: BorderRadius.circular(40),
              onTap: () {
                print("Clicou!");
              },
              child: Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(40)),
                padding: EdgeInsets.symmetric(horizontal: 70, vertical: 10),
                child: Text("SAIR", style: TextStyle(color: Colors.white)),
              ),
            ),
          )
        ],
      ),
    );
  }
}
