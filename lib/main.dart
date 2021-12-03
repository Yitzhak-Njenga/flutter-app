import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp( MaterialApp(

  debugShowCheckedModeBanner: false,

  home: Home(),

));

class Home extends StatefulWidget {


  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int myLevel = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[700],
      appBar: AppBar(
        title: Text('Id Project'),
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.grey[600],
      ),


        floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            myLevel += 1;
          });
        },

        child: Icon(Icons.add),
          backgroundColor: Colors.white10,
      ),

      body: Padding(
        padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  <Widget>[
            Flexible(child:Center(child:Container(width: 200,child:ClipRRect(borderRadius: BorderRadius.circular(180),child:
            Image.asset('assets/img.png'),
            )
            ),),),
            Divider(
              height: 20.0,
              color: Colors.white54,
            ),
            Text(
              'NAME',
            style: TextStyle(
              color: Colors.grey,
              letterSpacing: 3.0,

            )
              ),
            SizedBox(
              height: 10.0,
            ),
            Text(
                'Yitzhak Njenga',
                style: TextStyle(
                  color: Colors.amber,
                  letterSpacing: 3.0,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold

                )
            ),
            SizedBox(
              height: 30.0),

              Text(
                  'Current Level',
                  style: TextStyle(
                    color: Colors.grey,
                    letterSpacing: 2.0,

                  )
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                  '$myLevel',
                  style: TextStyle(
                      color: Colors.amber,
                      letterSpacing: 3.0,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,

                  )
              ),
            SizedBox(
              height: 30.0,
            ),

            Row(
              children:const <Widget> [
                Icon(CupertinoIcons.mail,
                color: Colors.grey,
                ),
                SizedBox(width: 15.0),
                Text('yitzhaknjenga@gmail.com',
                style: TextStyle(
                  color: Colors.white12,
                  fontSize: 18.0,
                  letterSpacing: 4
                ),
                )


              ],
            )
          ],
        ),
      ),
    );
  }
}




