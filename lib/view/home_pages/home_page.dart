import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:goodseeds/colors.dart';
import 'package:goodseeds/controller/carousel_controller.dart';
import 'package:goodseeds/controller/donation_controller.dart';
import 'package:goodseeds/controller/quick_links_controller.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kSecondGrey,
      appBar: AppBar(
        iconTheme: IconThemeData(color: kPrimaryGreen),
        backgroundColor: Colors.grey[50],
        leading: Image.asset(
          "icons/icon.png",
          scale: 4,
        ),
        actions: [
          IconButton(icon: Icon(Icons.bookmarks_outlined), onPressed: () {}),
        ],
        title: InkWell(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            height: 40,
            decoration: BoxDecoration(
              color: kSecondGrey,
              borderRadius: BorderRadius.circular(50),
            ),
            child: Row(
              children: [
                Icon(
                  Icons.search,
                  color: kPrimaryGrey,
                  size: 20,
                ),
                SizedBox(width: 10),
                Text(
                  "Cari donasi...",
                  style: Theme.of(context)
                      .textTheme
                      .subtitle1
                      .copyWith(color: kPrimaryGrey),
                ),
              ],
            ),
          ),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 5),
            color: Colors.grey[50],
            child: Column(
              children: [
                GetX<SliderController>(
                  init: SliderController(),
                  initState: (_) {},
                  builder: (controller) {
                    return CarouselSlider.builder(
                      itemCount: controller.sliderInfo.length,
                      itemBuilder: (context, index, realIndex) {
                        return Container(
                          child: Image.asset(
                            "images/${controller.sliderInfo[index].carouselImg}",
                          ),
                        );
                      },
                      options: CarouselOptions(
                        height: 180,
                        initialPage: 0,
                        enableInfiniteScroll: true,
                        reverse: false,
                        autoPlay: true,
                        autoPlayInterval: Duration(seconds: 4),
                        autoPlayAnimationDuration: Duration(milliseconds: 500),
                        autoPlayCurve: Curves.ease,
                        enlargeCenterPage: true,
                        scrollDirection: Axis.horizontal,
                      ),
                    );
                  },
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 20),
                  child: Row(
                    children: [
                      HomeTopIcons(
                        topIcon: "icon01",
                        description: "Donate",
                        onItemTap: () {},
                      ),
                      HomeTopIcons(
                        topIcon: "icon02",
                        description: "Raise Fund",
                        onItemTap: () {},
                      ),
                      HomeTopIcons(
                        topIcon: "icon03",
                        description: "Wakaf",
                        onItemTap: () {},
                      ),
                      HomeTopIcons(
                        topIcon: "icon04",
                        description: "Zakat",
                        onItemTap: () {},
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: Colors.grey[50],
            margin: EdgeInsets.symmetric(vertical: 10),
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                HeaderText(
                  headerText: "Quick Links",
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 15),
                  child: GetX<QuickLinksController>(
                    init: QuickLinksController(),
                    initState: (_) {},
                    builder: (controller) {
                      return GridView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10,
                          mainAxisExtent: 100,
                        ),
                        itemCount: controller.quickLinks.length,
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: controller.quickLinks[index].onItemTap,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image.network(
                                controller.quickLinks[index].imageURL,
                                fit: BoxFit.cover,
                              ),
                            ),
                          );
                        },
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: Colors.grey[50],
            margin: EdgeInsets.symmetric(vertical: 10),
            padding: EdgeInsets.symmetric(vertical: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    child: HeaderText(headerText: "Trending Donations")),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  height: 480,
                  child: GetX<TrendingDonController>(
                    init: TrendingDonController(),
                    initState: (_) {},
                    builder: (controller) {
                      return ListView.builder(
                        shrinkWrap: true,
                        physics: ClampingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        itemCount: controller.donationInfo.length,
                        itemBuilder: (context, index) {
                          return DonationHorizontal(
                            imageURL: controller.donationInfo[index].imageURL,
                            donCategory:
                                controller.donationInfo[index].donCategory,
                            donTitle: controller.donationInfo[index].donTitle,
                            donSubtitle:
                                controller.donationInfo[index].donSubtitle,
                            donProgress:
                                controller.donationInfo[index].donProgress,
                            donTarget: controller.donationInfo[index].donTarget,
                            donExpiry: controller.donationInfo[index].donExpiry,
                            onButtonTap:
                                controller.donationInfo[index].onButtonTap,
                          );
                        },
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: Colors.grey[50],
            margin: EdgeInsets.symmetric(vertical: 10),
            padding: EdgeInsets.symmetric(vertical: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    child: HeaderText(headerText: "GoodSeeds Picks")),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  height: 480,
                  child: GetX<TrendingDonController>(
                    init: TrendingDonController(),
                    initState: (_) {},
                    builder: (controller) {
                      return ListView.builder(
                        shrinkWrap: true,
                        physics: ClampingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        itemCount: controller.donationInfo.length,
                        itemBuilder: (context, index) {
                          return Container();
                        },
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: Colors.grey[50],
            margin: EdgeInsets.symmetric(vertical: 10),
            padding: EdgeInsets.symmetric(vertical: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      HeaderText(headerText: "Made For You"),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text("View More"),
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          elevation: 0,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  height: 480,
                  child: GetX<CustomDonController>(
                    init: CustomDonController(),
                    initState: (_) {},
                    builder: (controller) {
                      return ListView.builder(
                        shrinkWrap: true,
                        physics: ClampingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        itemCount: controller.donationInfo.length,
                        itemBuilder: (context, index) {
                          return DonationHorizontal(
                            imageURL: controller.donationInfo[index].imageURL,
                            donCategory:
                                controller.donationInfo[index].donCategory,
                            donTitle: controller.donationInfo[index].donTitle,
                            donSubtitle:
                                controller.donationInfo[index].donSubtitle,
                            donProgress:
                                controller.donationInfo[index].donProgress,
                            donTarget: controller.donationInfo[index].donTarget,
                            donExpiry: controller.donationInfo[index].donExpiry,
                            onButtonTap:
                                controller.donationInfo[index].onButtonTap,
                          );
                        },
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class DonationHorizontal extends StatelessWidget {
  const DonationHorizontal({
    Key key,
    @required this.imageURL,
    @required this.donCategory,
    @required this.donTitle,
    @required this.donSubtitle,
    @required this.donProgress,
    @required this.donTarget,
    @required this.donExpiry,
    @required this.onButtonTap,
  }) : super(key: key);

  final String imageURL;
  final String donCategory;
  final String donTitle;
  final String donSubtitle;
  final int donProgress;
  final String donTarget;
  final String donExpiry;
  final Function() onButtonTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: kWhite,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            blurRadius: 3,
            spreadRadius: 0.5,
            color: kSecondGrey,
          ),
        ],
      ),
      margin: EdgeInsets.all(10),
      width: 250,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15), topRight: Radius.circular(15)),
            child: Image.network(
              imageURL,
              height: 150,
              width: 250,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(15, 15, 15, 10),
            padding: EdgeInsets.fromLTRB(10, 6, 10, 6),
            decoration: BoxDecoration(
              color: kSecondGrey,
              borderRadius: BorderRadius.circular(5),
            ),
            child: Text(donCategory),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(15, 0, 15, 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  donTitle,
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                SizedBox(height: 5),
                Text(
                  donSubtitle,
                  style: Theme.of(context).textTheme.bodyText2,
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(15, 10, 15, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Funding Process",
                  style: Theme.of(context).textTheme.subtitle1,
                ),
                Text("$donProgress%"),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Stack(
              children: [
                FractionallySizedBox(
                  widthFactor: 1,
                  child: Container(
                    height: 5,
                    decoration: BoxDecoration(
                      color: kSecondGrey,
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),
                FractionallySizedBox(
                  widthFactor: donProgress / 100,
                  child: Container(
                    height: 5,
                    decoration: BoxDecoration(
                      color: kPrimaryGreen,
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(donExpiry),
                Text(donTarget),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(15),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                elevation: 0,
              ),
              onPressed: onButtonTap,
              child: Text("Details"),
            ),
          ),
        ],
      ),
    );
  }
}

class HeaderText extends StatelessWidget {
  const HeaderText({
    Key key,
    @required this.headerText,
  }) : super(key: key);

  final String headerText;

  @override
  Widget build(BuildContext context) {
    return Text(
      headerText,
      style: Theme.of(context).textTheme.bodyText1.copyWith(fontSize: 18),
    );
  }
}

class HomeTopIcons extends StatelessWidget {
  const HomeTopIcons({
    Key key,
    @required this.topIcon,
    @required this.description,
    @required this.onItemTap,
  }) : super(key: key);

  final String topIcon;
  final String description;
  final Function() onItemTap;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: InkWell(
        onTap: onItemTap,
        child: Column(
          children: [
            Image.asset(
              "icons/$topIcon.png",
              width: 50,
            ),
            SizedBox(height: 5),
            Text(description),
          ],
        ),
      ),
    );
  }
}
