import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smollan_ass/custom_drawer.dart';
// import 'package:get/get.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:one_hub_new/views/components/drawers.dart';
// import 'package:one_hub_new/views/components/gradient_text.dart';
// import 'package:one_hub_new/views/screens/challenges_and_reward/challenges_and_reward.dart';
// import 'package:one_hub_new/views/screens/leaderboard/leaderboard.dart';
// import 'package:one_hub_new/views/screens/quiz_screen/screens/quiz_screen.dart';

class ChallengesAndReward extends StatefulWidget {
  static const routeName = 'Challangescreen';
  const ChallengesAndReward({super.key});

  @override
  State<ChallengesAndReward> createState() => _ChallengesAndRewardState();
}

class _ChallengesAndRewardState extends State<ChallengesAndReward> {
  final GlobalKey<ScaffoldMessengerState> _scaffoldMessengerKey =
      GlobalKey<ScaffoldMessengerState>();
  List<String> challenges = [
    "assets/images/challenges_list1.png",
    "assets/images/challenges_list2.png",
    "assets/images/challenges_list3.png",
    "assets/images/challenges_list3.png",
  ];
  @override
  Widget build(BuildContext context) {
    GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
    void toggleDrawer(BuildContext context) async {
      if (Scaffold.of(context).isDrawerOpen) {
        Scaffold.of(context).openEndDrawer();
      } else {
        Scaffold.of(context).openDrawer();
      }
    }

    return Scaffold(
        key: _scaffoldMessengerKey,
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                onPressed: () {
                  toggleDrawer(context);
                },
                icon: Icon(
                  Icons.menu,
                  size: 40,
                  color: Colors.grey.shade700,
                ),
              );
            },
          ),
          title: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Image(
                image: AssetImage("assets/images/google_logo.png"),
                width: 50,
                height: 50,
              ),
              Text(
                "Challenges",
                style: GoogleFonts.notoSans(
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
        drawer: MyCustomDrawer(),
        body: Container(
          child: Stack(
            children: [
              Positioned(
                top: 95,
                left: 90,
                child: Image.asset(
                  "assets/images/prism_icon.png",
                  height: 25,
                  width: 25,
                ),
              ),
              Positioned(
                top: 10,
                right: 180,
                child: Image.asset(
                  "assets/images/plus_icon.png",
                  height: 30,
                  width: 30,
                ),
              ),
              Positioned(
                top: 120,
                right: 80,
                child: Image.asset(
                  "assets/images/rectangle_icon.png",
                  height: 25,
                  width: 25,
                ),
              ),
              Positioned(
                top: 70,
                left: MediaQuery.of(context).size.width * 0.2,
                child: Column(
                  children: [
                    Text(
                      "Welcome to Challenges!",
                      style: GoogleFonts.notoSans(
                        fontSize: 33,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Complete the Challanges and win exciting rewards",
                      style: GoogleFonts.notoSans(
                          fontSize: 20, color: Colors.grey.shade800),
                    ),
                  ],
                ),
              ),
              Positioned(
                width: MediaQuery.of(context).size.width,
                top: 240,
                left: 0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    // Horizontal row
                    // Horizontal row 1
                    Container(
                      height: 120,
                      width: 330,
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white,
                        border: Border.all(color: Colors.grey.shade300),
                      ),
                      child: Row(
                        children: [
                          const SizedBox(width: 10.0),
                          Image.asset(
                            "assets/images/reward_logo.png",
                            height: 100,
                            width: 100,
                          ),
                          const SizedBox(width: 10.0),
                          Text(
                            "Rewards",
                            style: GoogleFonts.notoSans(
                              fontSize: 30,
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(width: 20.0),
                          const Icon(
                            Icons.keyboard_arrow_right_sharp,
                            color: Colors.black,
                          )
                        ],
                      ),
                    ),
                    // Horizontal row
                    // Horizontal row 2
                    Container(
                      height: 120,
                      width: 330,
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(color: Colors.grey.shade300),
                        color: Colors.white,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/images/points_logo.png",
                            height: 60,
                            width: 60,
                          ),
                          const SizedBox(width: 20.0),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "100 Points",
                                style: GoogleFonts.notoSans(
                                  fontSize: 30,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                "earned so far...",
                                style: GoogleFonts.notoSans(
                                  fontSize: 15,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              // Leaderboard
              Positioned(
                top: 380,
                child: GestureDetector(
                  onTap: () {
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (context) => const Leaderboard()));
                  },
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.grey.shade200),
                      color: Colors.white,
                      gradient: LinearGradient(
                        colors: [
                          Colors.amber.shade50,
                          const Color(0xFFFFFCF3),
                          Colors.white,
                        ],
                        begin: Alignment.centerRight,
                        end: Alignment.centerLeft,
                      ),
                    ),
                    margin: const EdgeInsets.symmetric(horizontal: 50.0),
                    height: 60,
                    width: MediaQuery.of(context).size.width - 90,
                    child: Row(
                      children: [
                        const SizedBox(width: 10.0),
                        Image.asset(
                          "assets/images/leaderboard_logo.png",
                          height: 80,
                          width: 80,
                        ),
                        const SizedBox(width: 20.0),
                        Text(
                          "Leaderboard",
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.amber.shade700,
                            fontWeight: FontWeight.w500,
                            fontFamily: "GoogleSans",
                          ),
                        ),
                        const SizedBox(width: 350.0),
                        Icon(
                          Icons.keyboard_arrow_right_rounded,
                          color: Colors.amber.shade700,
                          size: 40,
                        )
                      ],
                    ),
                  ),
                ),
              ),
              // Challanges
              // =============================Error--------------------
              Positioned(
                top: 490,
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  decoration: BoxDecoration(
                    color: Color(0xAAF8F9FD),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50),
                    ),
                  ),
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 20.0, horizontal: 50.0),
                    width: MediaQuery.of(context).size.width,
                    child: SizedBox(
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                            child: Container(
                              width: 100,
                              height: 10,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.grey.shade200,
                              ),
                            ),
                          ),
                          Text(
                            'Challenges',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 38,
                              fontFamily: 'GoogleSans',
                              fontWeight: FontWeight.w400,
                              // height: 0.02,
                              // letterSpacing: -0.72,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                child: Container(
                  color: Color(0xAAF8F9FD),
                  width: MediaQuery.of(context).size.width,
                  height: 550,
                  child: ListView.builder(
                      itemCount: challenges.length,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            // Get.to(QuizScreen());
                          },
                          child: Container(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 10.0),
                            margin: EdgeInsets.symmetric(
                                horizontal: 40.0, vertical: 10),
                            child: Image(
                              height: 130,
                              width: double.infinity,
                              fit: BoxFit.cover,
                              image: AssetImage(
                                challenges[index],
                              ),
                            ),
                          ),
                        );
                      }),
                ),
              )
            ],
          ),
        ));
  }
}
