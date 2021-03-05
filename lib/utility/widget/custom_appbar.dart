import 'package:flutter/material.dart';
import 'package:flutter_find_designer/utility/app_assets.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          /// AppIcon
          Icon(
            Icons.menu,
            size: 40,
          ),
          Text(
            "Let's Find 🤑",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),

          /// User image
          SizedBox(
            height: 50,
            width: 50,
            child: CircleAvatar(
              backgroundImage: Image.asset(AppAssets.person1).image,
            ),
          )
        ],
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(60);
}
