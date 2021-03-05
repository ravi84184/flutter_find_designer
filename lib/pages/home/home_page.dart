import 'package:flutter/material.dart';
import 'package:flutter_find_designer/dummy_data/user_model.dart';
import 'package:flutter_find_designer/pages/details_page/details_page.dart';
import 'package:flutter_find_designer/pages/home/widget/recent_tile_widget.dart';
import 'package:flutter_find_designer/utility/app_assets.dart';
import 'package:flutter_find_designer/utility/app_colors.dart';
import 'package:flutter_find_designer/utility/widget/custom_appbar.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.scaffoldBg,
      child: SafeArea(
        bottom: false,
        child: Scaffold(
          appBar: CustomAppBar(),
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            backgroundColor: AppColors.yellow,
            child: Icon(
              Icons.add,
              color: AppColors.black,
              size: 35,
            ),
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          bottomNavigationBar: BottomAppBar(
            elevation: 10,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                _bottomMenuIcon(AppAssets.menuIcon, isSelected: true),
                _bottomMenuIcon(AppAssets.heartIcon),
                Container(
                  height: 0,
                ),
                _bottomMenuIcon(AppAssets.notificationIcon),
                _bottomMenuIcon(AppAssets.settingsIcon),
              ],
            ),
            clipBehavior: Clip.antiAliasWithSaveLayer,
            shape: CircularNotchedRectangle(),
            /*shape: AutomaticNotchedShape(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(10.0),
                ),
              ),
            ),*/
            notchMargin: 12,
            color: AppColors.black,
          ),
          body: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /// Search Edit Text
                _searchTextEditWidget(),

                /// Recent View
                _recentViewWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _bottomMenuIcon(String imageIcon, {isSelected = false}) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      margin: EdgeInsets.only(left: 20, right: 20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: isSelected ? AppColors.yellow : Colors.transparent,
            ),
            height: 10,
            width: 10,
          ),
          SizedBox(
            height: 10,
          ),
          Image.asset(
            imageIcon,
            height: 35,
            color: AppColors.white,
          )
        ],
      ),
    );
  }

  Widget _recentViewWidget() {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "Recent view",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
          ),
          Container(
            height: 400,
            child: ListView.builder(
              shrinkWrap: true,
              padding: EdgeInsets.symmetric(horizontal: 20),
              scrollDirection: Axis.horizontal,
              itemCount: recentUserList.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => DetailsPage(
                          model: recentUserList[index],
                        ),
                      ),
                    );
                  },
                  child: RecentTileWidget(
                    model: recentUserList[index],
                  ),
                );
              },
            ),
          ),
          _userList(),
        ],
      ),
    );
  }

  Widget _userList() {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: userList.length,
      itemBuilder: (context, index) {
        var model = userList[index];
        return GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => DetailsPage(
                  model: model,
                ),
              ),
            );
          },
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(
                  10,
                ),
                boxShadow: [
                  BoxShadow(
                    color: AppColors.black.withOpacity(0.1),
                    blurRadius: 8,
                    spreadRadius: 1,
                    offset: Offset(0, 0),
                  ),
                ]),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Hero(
                    tag: model.profileImage,
                    child: Image.asset(
                      model.profileImage,
                      height: 60,
                      width: 60,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        model.name,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 19,
                        ),
                      ),
                      Text(model.designation),
                    ],
                  ),
                ),
                Image.asset(
                  AppAssets.right_arrow,
                  height: 20,
                  color: AppColors.yellow,
                )
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _searchTextEditWidget() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      padding: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: AppColors.black.withOpacity(0.3),
            offset: Offset(0, 0),
            blurRadius: 5,
            spreadRadius: 1,
          )
        ],
      ),
      child: TextField(
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        decoration: InputDecoration(
            hintText: "Search",
            hintStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            border: InputBorder.none,
            suffixIcon: Icon(
              Icons.search,
              size: 30,
            )),
      ),
    );
  }
}
