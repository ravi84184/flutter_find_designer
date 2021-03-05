import 'package:flutter/material.dart';
import 'package:flutter_find_designer/dummy_data/user_model.dart';
import 'package:flutter_find_designer/utility/app_colors.dart';

class RecentTileWidget extends StatelessWidget {
  final UserModel model;

  const RecentTileWidget({Key key, this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.7,
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: AppColors.black.withOpacity(0.3),
            blurRadius: 5,
            spreadRadius: 3,
            offset: Offset(0, 0),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Stack(
          children: [
            Positioned.fill(
              child: Hero(
                tag: model.profileImage,
                child: Image.asset(
                  model.profileImage,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 10),
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: AppColors.white.withOpacity(
                    0.8,
                  ),
                ),
                child: Column(
                  children: [
                    Text(
                      model.name,
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text("${model.designation} || ${model.experience}"),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
