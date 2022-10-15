import 'package:flutter/material.dart';

import 'package:go_jobs/components.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeData themeData = Theme.of(context);
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Column(
            children: [
              Text('Jobs', style: themeData.textTheme.titleLarge),
              // List of Jobs
              SizedBox(height: kDefaultPadding),
              Expanded(
                child: ListView.separated(
                  itemBuilder: (context, index) => JobCard(
                    image: 'assets/images/image_${index + 1}.png',
                    themeData: themeData,
                  ),
                  itemCount: 5,
                  separatorBuilder: (BuildContext context, int index) =>
                      SizedBox(height: kDefaultPadding),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: ThemeToggle(themeData: themeData),
    );
  }
}

class JobCard extends StatelessWidget {
  final String image;

  const JobCard({
    Key? key,
    required this.image,
    required this.themeData,
  }) : super(key: key);

  final ThemeData themeData;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: AspectRatio(
                aspectRatio: 1,
                child: Container(
                  decoration: BoxDecoration(
                    color: themeData.scaffoldBackgroundColor,
                    borderRadius: BorderRadius.all(
                      Radius.circular(kDefaultBorderRadius),
                    ),
                  ),
                  child: Image.asset(image),
                ),
              ),
            ),
            SizedBox(width: kDefaultPadding),
            Expanded(
              flex: 3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'We are looking for a UX designer to retouch our product.',
                    style: themeData.brightness == Brightness.light
                        ? TextStyle(color: Colors.black)
                        : TextStyle(color: Colors.white),
                  ),
                  MaterialButton(
                    onPressed: () {},
                    color: kBlueColor.withOpacity(0.08),
                    elevation: 0.0,
                    minWidth: 30,
                    height: 30,
                    child: Text(
                      'Open',
                      style: TextStyle(color: kBlueColor, fontSize: 12),
                    ),
                  ),
                  SizedBox(height: kDefaultPadding / 2),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      JobCardInfo(
                        svgSrc: "assets/icons/buildings.svg",
                        text: "Fulltime, Office,",
                        themeData: themeData,
                      ),
                      JobCardInfo(
                        svgSrc: "assets/icons/calendar.svg",
                        text: "21-04-2021",
                        themeData: themeData,
                      ),
                      JobCardInfo(
                        svgSrc: "assets/icons/map_pin.svg",
                        text: "Japan",
                        themeData: themeData,
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        )
      ],
    );
  }
}

class JobCardInfo extends StatelessWidget {
  const JobCardInfo({
    Key? key,
    required this.svgSrc,
    required this.text,
    required this.themeData,
  }) : super(key: key);

  final ThemeData themeData;
  final String svgSrc, text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          svgSrc,
          color: themeData.brightness == Brightness.light
              ? Colors.black
              : Colors.white,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
          child: Text(
            text,
            style: themeData.brightness == Brightness.light
                ? TextStyle(color: Colors.black)
                : TextStyle(color: Colors.white),
          ),
        )
      ],
    );
  }
}
