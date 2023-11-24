import "package:app1/widgets/home-category.dart";
import "package:app1/widgets/studentContainer.dart";
import "package:flutter/material.dart";
import "package:app1/screens/widgets/bottom-nav.dart";
import "package:app1/screens/widgets/home-option.dart";


class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[100],
        bottomNavigationBar: const BottomNav(),
        // bottomSheet: const HomeOptions(),
        // persistentFooterButtons:,
        appBar: AppBar(
          leading: null,
          elevation: 0.2,
          scrolledUnderElevation: 2.0,
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
          // toolbarHeight: 58.0,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const HomeTitle(),
              IconButton(
                  onPressed: () {}, icon: const Icon(Icons.more_vert_sharp))
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(mainAxisSize: MainAxisSize.max, children: [
            const StudentContainer(),
            const SizedBox(height: 5),
            const HomeCategoryBox(),
            const SizedBox(
              height: 5,
            ),
            const HomeOptions(),
          ]),
        ));
  }
}

class HomeTitle extends StatelessWidget {
  const HomeTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      children: [
        Text(
          "Go-Student",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          textAlign: TextAlign.left,
        ),
        Text(
          "University of Buea",
          style: TextStyle(fontSize: 14),
        ),
      ],
    );
  }
}