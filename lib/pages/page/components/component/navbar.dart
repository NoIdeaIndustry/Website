import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1200) {
          return const DesktopNavBar();
        } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1200) {
          return const DesktopNavBar();
        } else {
          return const MobileNavBar();
        }
      },
    );
  }
}

class DesktopNavBar extends StatelessWidget {
  const DesktopNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          const Text(
            "NoIdeaIndustry - Services",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 30,
            ),
          ),
          Row(
            children: <Widget>[
              const Text(
                "Home",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              const SizedBox(width: 30),
              const Text(
                "About Us",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              const SizedBox(width: 30),
              const Text(
                "Pricing",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              const SizedBox(width: 30),
              MaterialButton(
                color: Colors.white,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20.0))),
                onPressed: () {},
                child: const Text(
                  "Get Started",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class MobileNavBar extends StatelessWidget {
  const MobileNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Column(
        children: <Widget>[
          const SizedBox(height: 20),
          const Text(
            "NoIdeaIndustry - Services",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 30,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const <Widget>[
                Text(
                  "Home",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                SizedBox(width: 30),
                Text(
                  "About Us",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                SizedBox(width: 30),
                Text(
                  "Pricing",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                SizedBox(width: 30),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
