import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int mark1=0;
  int mark2=0;

  String winner="Draw";



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Players'),
      ),
      body: Column(
        children: <Widget>[
          Text(winner,style: TextStyle(
            fontSize: 30.0,
            fontWeight: FontWeight.bold
          ),),
          SizedBox(
            height: 20.0,
          ),
          Row(
            children: <Widget>[
              Expanded(
                  child: Text(
                "player 1",
                textAlign: TextAlign.center,
              style: TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.bold
          ),
              )),
              Expanded(
                  child: Text(
                "player 2",
                textAlign: TextAlign.center,style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold
                  ),
              )),
            ],
          ),
          SizedBox(height: 20.0,),
          Row(
            children: <Widget>[
              Expanded(
                  child: Text(
                mark1.toString(),
                textAlign: TextAlign.center,style: TextStyle(
                      fontSize: 35.0,
                      fontWeight: FontWeight.bold
                  ),
              )),
              Expanded(
                  child: Text(
                mark2.toString(),
                textAlign: TextAlign.center,style: TextStyle(
                      fontSize: 35.0,
                      fontWeight: FontWeight.bold
                  ),
              )),
            ],
          ),


          Row(
            children: <Widget>[
              Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left:8.0,right: 8.0),
                    child: RaisedButton(
          color: Theme.of(context).primaryColor,
                onPressed: () {

                setState((){
                  mark1++;
                });
                checkWinner();

                },
                child: Text('+1'),
                      textColor: Colors.white,
              ),
                  )),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left:8.0,right: 8.0),
                  child: RaisedButton(
                    color: Theme.of(context).primaryColor,
                    onPressed: () {
                      setState((){
                        mark2++;
                      });
                      checkWinner();

                    },
                    child: Text("+1"),
                    textColor: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left:8.0,right: 8.0),
                    child: RaisedButton(
                onPressed: () {
                  setState((){
                    mark1+=2;
                  });
                  checkWinner();
                },
                      color: Theme.of(context).primaryColor,
                child: Text('+2'),
                      textColor: Colors.white,
              ),
                  )),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left:8.0,right: 8.0),
                  child: RaisedButton(
                    onPressed: () {
                      setState((){
                        mark2+=2;
                      });
                      checkWinner();

                    },
                    child: Text("+2"),
                    color: Theme.of(context).primaryColor,
                    textColor: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  void checkWinner(){
    if(mark1>mark2){
      setState((){
        winner="Winner is player1";
      });

    }else if(mark2>mark1){
      setState(() {
        winner="Winner is player2";
      });

    }else{
      setState((){
        winner="Draw";
      });

    }


  }


}
