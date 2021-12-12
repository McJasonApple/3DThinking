import 'package:flutter/material.dart';

class TrainingPackCard extends StatefulWidget {
  const TrainingPackCard({Key? key}) : super(key: key);

  @override
  _TrainingPackCardState createState() => _TrainingPackCardState();
}

class _TrainingPackCardState extends State<TrainingPackCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 30.0,
      color: Colors.black,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: InkWell(
          child: Row(
            children: [
              ClipRect(
                child: Align(
                  alignment: Alignment.center,
                  widthFactor: 0.5,
                  child: Image.asset(
                    'assets/exampleMachine.png',              
                  ),
                ),
              ),
              Text('testetste')
            ],
          ),
        ),
      ),
    );
  }
}
