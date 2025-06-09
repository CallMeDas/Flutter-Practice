import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/FbFeed.dart';

class Fbfeed extends StatelessWidget {
  String desc;
  String name;

   Fbfeed( {super.key, required this.name, required this.desc});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
      margin: EdgeInsets.only(bottom: 12),
      padding: EdgeInsets.only(bottom: 12),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        color: Colors.blue, shape: BoxShape.circle
                      ),
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(name, style: TextStyle(fontSize: 20),),
                        Row(
                          children: [
                            Text('12. ',style: TextStyle(fontSize: 20)),
                            Icon(
                              Icons.language, size: 20,
                            )
                          ],
                          
                        )
                      ],

                    )
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.more_horiz),
                    Icon(Icons.close)
                  ],
                )
              ],
            ),
          ),
          // SizedBox(
          //   height: 12,
          // ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(padding: const EdgeInsets.only(left: 12, right: 12),
              child: Text(desc),
              ),
              SizedBox(
                height: 12,
              ),

              Container(
                height: 350,
                width: double.infinity,
                color: Colors.yellow,
              ),

              SizedBox(
                height: 12,
              ),
              Container(
                height: 350,
                width: double.infinity,
                color: Colors.red,
              )
            ],
          )
        ],
      ),



      



    );
  }
}