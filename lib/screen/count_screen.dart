import 'package:flutter/material.dart';
import 'package:flutterpractice/provider/count_provider.dart';

import 'package:provider/provider.dart';

class CountScreen extends StatefulWidget {
  const CountScreen({super.key});

  @override
  State<CountScreen> createState() => _CountScreenState();
}

class _CountScreenState extends State<CountScreen> {
  @override
  Widget build(BuildContext context) {
    final countProvider=Provider.of<CountProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('count'),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      backgroundColor: Colors.lightBlue,
      body: Consumer<CountProvider>(builder: (context,countProvider,child){
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(child: Text(countProvider.counter.toString(),style: TextStyle(fontSize: 50),
            ),
            ),
            SizedBox(height: 30,),
            Row(
              mainAxisAlignment:MainAxisAlignment.center ,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                FloatingActionButton(child: Icon(Icons.add),
                    onPressed: (){

                      print(countProvider.increment());

                    }),
                SizedBox(width: 10,),
                FloatingActionButton(child: Icon(Icons.remove),
                    onPressed: (){

                      print(countProvider.decrement());

                    }),
                SizedBox(width: 10,),

                FloatingActionButton(
                    child: Icon(Icons.lock_reset),
                    onPressed: (){

                      print(countProvider.reset());

                    })
              ],
            )
          ],
        );
      }),


    );
  }
}
