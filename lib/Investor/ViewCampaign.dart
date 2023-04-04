import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'LogoContainer.dart';
import 'VCDropDown.dart';
import 'OverviewContainer.dart';
import 'TeamsContainer.dart';
import 'UpdatesContainer.dart';
import 'DiscussionContainer.dart';
import 'floating_action_button.dart';
import 'AppBarContainer.dart';

class ViewCampaign extends StatefulWidget {
  const ViewCampaign({Key? key}) : super(key: key);

  @override
  State<ViewCampaign> createState() => _ViewCampaignState();
}

class _ViewCampaignState extends State<ViewCampaign> {
  bool visibilityOverview = true;
  bool visibilityTeams = false;
  bool visibilityUpdates = false;
  bool visibilityDiscussion = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                child: AppBarContainer(
                  icon: Icons.help_outline,
                  text: 'Viewing Campaign',
                ),
              ),
              SizedBox(height: 19.h),
              LogoContainer(),
              SizedBox(height: 27.h),
              Container(
                height: 255,
                child: Stack(
                  children: [
                    Container(
                      child: Image(
                        image: AssetImage('assets/image.png'),
                      ),
                    ),
                    Positioned(
                      top: 20,
                      right: 20,
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Colors.white,
                          ),
                          child: Image(
                            image: AssetImage('assets/heart.png'),
                          ),
                        ),
                      ),
                    ),
                    Positioned.fill(
                      child: Align(
                        alignment: Alignment.center,
                        child: Image(
                          image: AssetImage('assets/pause.png'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 47.h),
              Container(
                margin: EdgeInsets.only(left: 11.w, right: 23.w),
                padding: EdgeInsets.only(left: 37.w, right: 20.w),
                decoration: BoxDecoration(
                  color: Color(0xffBA55D3),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(5),
                    topRight: Radius.circular(5),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xff5FC4FC).withOpacity(0.35),
                      blurRadius: 70,
                      blurStyle: BlurStyle.inner,
                      offset: Offset(-10.w, 10.h),
                    ),
                  ],
                ),
                height: 53.h,
                width: 356.w,
                child: DropdownButtonFormField(
                  hint: Text(
                    'Overview',
                    style: GoogleFonts.dmSans(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                  style: GoogleFonts.dmSans(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    color: Colors.white,
                  ),
                  dropdownColor: Colors.black,
                  iconEnabledColor: Colors.white,
                  iconDisabledColor: Colors.white,
                  decoration: InputDecoration(border: InputBorder.none),
                  onChanged: (value) {
                    setState(
                      () {
                        if (value == "Overview") {
                          visibilityOverview = true;
                          visibilityTeams = false;
                          visibilityUpdates = false;
                          visibilityDiscussion = false;
                        } else if (value == "Team") {
                          visibilityOverview = false;
                          visibilityTeams = true;
                          visibilityUpdates = false;
                          visibilityDiscussion = false;
                        } else if (value == "Updates") {
                          visibilityOverview = false;
                          visibilityTeams = false;
                          visibilityUpdates = true;
                          visibilityDiscussion = false;
                        } else if (value == "Discussions") {
                          visibilityOverview = false;
                          visibilityTeams = false;
                          visibilityUpdates = false;
                          visibilityDiscussion = true;
                        }
                      },
                    );
                  },
                  items: vcDropDownItems,
                ),
              ),
              visibilityOverview ? OverviewContainer() : Container(),
              visibilityTeams ? TeamContainer() : Container(),
              visibilityUpdates ? UpdatesContainer() : Container(),
              visibilityDiscussion ? DiscussionContainer() : Container(),
            ],
          ),
        ),
        floatingActionButton: FloatButton());
  }
}
