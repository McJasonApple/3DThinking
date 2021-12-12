// create our own Appbar with flexible space

import 'package:flutter/material.dart';
import 'package:threed_thinking/style/style.dart';

class Costum3DTAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String text;
  const Costum3DTAppBar({Key? key, required this.text}) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(100.0);

  @override
  Widget build(BuildContext context) {
    
    return AppBar(
      backgroundColor: Colors.white,
      flexibleSpace: Container(
        child: Center(child: Text(text, style: TextStyle(fontSize: 24),)),
      ),
      bottom: _bottom()
    );
  }

  // quick fix only Iconbuttons instead of notch and rounded button
  PreferredSize _bottom(){
    return PreferredSize(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                  icon:const Icon(
                    Icons.person,
                    size: 30,
                  ),
                  color: AppColors.primaryColor,
                  onPressed: () {},
                )
              ],
            ),
          ),
          preferredSize: Size.fromHeight(40.0));
  }
}
