import 'package:flutter/material.dart';
import 'package:flutter_find_designer/dummy_data/user_model.dart';
import 'package:flutter_find_designer/utility/app_assets.dart';
import 'package:flutter_find_designer/utility/app_colors.dart';

class DetailsPage extends StatefulWidget {
  final UserModel model;

  const DetailsPage({Key key, this.model}) : super(key: key);

  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
        top: false,
        child: Scaffold(
          body: Container(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                /// Profile view
                Container(
                  height: MediaQuery.of(context).size.height * 0.6,
                  child: Stack(
                    children: [
                      Positioned(
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.5,
                          child: Hero(
                            tag: widget.model.profileImage,
                            child: Image.asset(
                              widget.model.profileImage,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin:
                            EdgeInsets.symmetric(vertical: 50, horizontal: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).pop();
                              },
                              child: Image.asset(
                                AppAssets.left_arrow,
                                height: 30,
                                color: AppColors.white,
                              ),
                            ),
                            Image.asset(
                              AppAssets.action_menu,
                              height: 30,
                              color: AppColors.white,
                            )
                          ],
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 20),
                          padding: EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          decoration: BoxDecoration(
                              color: AppColors.white,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  color: AppColors.black.withOpacity(0.1),
                                  blurRadius: 8,
                                  spreadRadius: 1,
                                  offset: Offset(0, 0),
                                ),
                              ]),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                widget.model.name,
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(widget.model.designation),
                              Text(
                                widget.model.description,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.grey,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                height: 1,
                                color: Colors.grey.withOpacity(0.5),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  RaisedButton(
                                    onPressed: () {},
                                    child: Text("Follow"),
                                    color: AppColors.yellow,
                                    textColor: AppColors.black,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                  Container(
                                    height: 40,
                                    width: 1,
                                    color: Colors.grey.withOpacity(0.5),
                                  ),
                                  _socialMediaWidget(AppAssets.behance),
                                  _socialMediaWidget(AppAssets.dribbble),
                                  _socialMediaWidget(AppAssets.upwork),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                /// work view
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Wrap(
                      children: [
                        for (var url in widget.model.projectList)
                          Container(
                            width: MediaQuery.of(context).size.width * 0.4,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  color: AppColors.black.withOpacity(0.1),
                                  blurRadius: 8,
                                  spreadRadius: 1,
                                  offset: Offset(0, 0),
                                ),
                              ],
                            ),
                            margin: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 10),
                            padding: EdgeInsets.all(5),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.network(url),
                            ),
                          ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _socialMediaWidget(String socialIcon) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(200),
      child: Image.asset(
        socialIcon,
        height: 40,
      ),
    );
  }
}
