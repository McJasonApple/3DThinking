// start screen
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:threed_thinking/style/style.dart';
import 'package:threed_thinking/widgets/appbar_widget.dart';
import 'package:threed_thinking/widgets/training_pack_card_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String headerText =
      'Welcome at FH Aachen - University of Applied Sciences Mechanical engineering is an important engine for technical innovation. Learn all about the Training program at the University.';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: Costum3DTAppBar(text: 'Hallo neuer User'), body: _body()),
    );
  }

  Widget _body() {
    return Stack(
      children: [
        SvgPicture.asset(
          'assets/background.svg',
          alignment: Alignment.center,
          fit: BoxFit.cover,
        ),
        _getScrollview(),
      ],
    );
  }

  // create scrollable area
  Widget _getScrollview() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: CustomScrollView(
          slivers: <Widget>[_getSliverHeader(), _getCardList()]),
    );
  }

  // return header with information about the company, logo and video
  Widget _getSliverHeader() {
    return SliverAppBar(
        backgroundColor: Colors.transparent,
        expandedHeight: 200,
        flexibleSpace: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: SvgPicture.asset('assets/fhaachenLogo.svg', height: 60),
            ),
            SizedBox(width: 16),
            Expanded(
              child: Text(
                headerText,
                softWrap: true,
                textAlign: TextAlign.right,
                style: TextStyle(
                    fontSize: 18,
                    color: AppColors.primaryColor,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(width: 16),
            Container(
                width: 400,
                height: 200,
                color: Colors.blue,
                child: Text('Video coming soon'))
          ],
        ));
  }

  Widget _getCardList() {
    return SliverList(
      delegate: SliverChildListDelegate([
        TrainingPackCard()
      ]),
    );
  }
}
