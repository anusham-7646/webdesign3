import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:webdesign3/CustomWidgets/CustomButton.dart';
import 'package:webdesign3/CustomWidgets/CustomText.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                //height: Get.height * 0.3,
                width: double.infinity,
                alignment: Alignment.center,
                padding:
                    const EdgeInsets.symmetric(horizontal: 55, vertical: 40),
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: Image.asset("images/Tech BG-01.jpg").image,
                      fit: BoxFit.fill),
                ),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    AppBar(),
                    SizedBox(
                      height: 55,
                    ),
                    CenterWidget(),
                    SizedBox(
                      height: 15,
                    ),
                    Subheading1(),
                    Subheading2(),
                    SizedBox(
                      height: 75,
                    ),
                    ImageWidget(),
                  ],
                ),
              ),
              const SizedBox(
                height: 65,
              ),
              NavBar(),
              const SizedBox(
                height: 15,
              ),
              PhotoText(),
              SizedBox(height: 35,),
              PhotoText2(),
            ],
          ),
        ),
      ),
    );
  }
}
class PhotoText2 extends StatelessWidget {
  const PhotoText2({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 105),
              child: Container(
                //alignment: Alignment.centerRight,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: const [
                    BoxShadow(blurRadius: 15, offset: Offset(0, 10)),
                  ],
                ),
                height: 400,
                child: Image.asset("images/380270-PBYNEQ-273.jpg"),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 95, vertical: 125),
          child: Container(
            decoration: BoxDecoration(color: Colors.white),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 125),
                  child: CustomText(
                    text: "Write your first passing",
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: CustomText(
                    text: "test in minutes",
                    color: Color.fromARGB(255, 75, 1, 159),
                    textAlign: TextAlign.justify,
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: CustomText(
                    text:
                        "Getting started with flutter is breeze simply npm install ",
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                    textAlign: TextAlign.justify,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: CustomText(
                    text: "flutter.No dependencies,or configuration necessary",
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                    textAlign: TextAlign.justify,
                  ),
                ),
               
                InkWell(
                  onTap: () {},
                  child: const Text(
                    "Learn More.",
                    style: TextStyle(color: Colors.blue, fontSize: 20),
                  ),
                ),
              ],
            ),
          ),
        ),
        
      ],
    );
  }
}

class PhotoText extends StatelessWidget {
  const PhotoText({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 95, vertical: 125),
          child: Container(
            decoration: BoxDecoration(color: Colors.white),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 125),
                  child: CustomText(
                    text: "Leave the duct tape at",
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: CustomText(
                    text: "at home.",
                    color: Color.fromARGB(255, 75, 1, 159),
                    textAlign: TextAlign.justify,
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: CustomText(
                    text:
                        "Getting started with flutter is breeze simply npm install ",
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                    textAlign: TextAlign.justify,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: CustomText(
                    text: "flutter.No dependencies,or configuration necessary",
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                    textAlign: TextAlign.justify,
                  ),
                ),
                // CustomText(
                //   text: " .",
                //   fontSize: 20,
                //   fontWeight: FontWeight.w500,
                //   color: Colors.black,
                //   textAlign: TextAlign.justify,
                // ),
                InkWell(
                  onTap: () {},
                  child: const Text(
                    "Learn More.",
                    style: TextStyle(color: Colors.blue, fontSize: 20),
                  ),
                ),
              ],
            ),
          ),
        ),
        Column(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 105),
              child: Container(
                //alignment: Alignment.centerRight,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: const [
                    BoxShadow(blurRadius: 15, offset: Offset(0, 10)),
                  ],
                ),
                height: 400,
                child: Image.asset("images/dashboard3.png"),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class NavBar extends StatelessWidget {
  const NavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text(
          "The hardest things about testing ",
          style: TextStyle(
              color: Colors.black,
              fontSize: 55,
              fontWeight: FontWeight.bold,
              wordSpacing: 4),
        ),
        Text(
          "are easy with flutter.",
          style: TextStyle(
              color: Color.fromARGB(255, 71, 8, 229),
              fontSize: 55,
              fontWeight: FontWeight.bold,
              wordSpacing: 4),
        ),
        SizedBox(
          height: 25,
        ),
        Text(
          "Our Open Source Test Runner is fast and innituitve way to write,",
          style: TextStyle(
              color: Color.fromARGB(255, 97, 97, 97),
              fontSize: 20,
              fontWeight: FontWeight.w300,
              wordSpacing: 5),
        ),
        Text(
          "run and debug your automated tests",
          style: TextStyle(
              color: Color.fromARGB(255, 110, 110, 110),
              fontSize: 20,
              fontWeight: FontWeight.w300,
              wordSpacing: 5),
        ),
      ],
    );
  }
}

class Subheading2 extends StatelessWidget {
  const Subheading2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomText(
          text: "multi-platform applications from a single codebase. ",
          fontSize: 20,
          fontWeight: FontWeight.w500,
          color: Colors.white,
        )
      ],
    );
  }
}

class Subheading1 extends StatelessWidget {
  const Subheading1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomText(
          text:
              "Flutter is an open source framework by Google for building beautiful, natively compiled, ",
          fontSize: 20,
          fontWeight: FontWeight.w500,
          color: Colors.white,
        )
      ],
    );
  }
}

class ImageWidget extends StatelessWidget {
  const ImageWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(blurRadius: 15.0, offset: Offset(0, 8)),
            ],
          ),
          height: 250,
          alignment: Alignment.center,
          child: Image.asset("images/380270-PBYNEQ-273.jpg"),
        ),
        SizedBox(
          width: 35,
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(blurRadius: 15.0, offset: Offset(0, 8)),
            ],
          ),
          height: 250,
          alignment: Alignment.center,
          child: Image.asset(
            "images/2849727.jpg",
          ),
        ),
      ],
    );
  }
}

class CenterWidget extends StatelessWidget {
  const CenterWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomText(
          text: "Testing",
          fontSize: 55,
          fontWeight: FontWeight.bold,
          color: Color.fromARGB(255, 7, 208, 157),
        ),
        CustomText(
          text: " your",
          fontSize: 55,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
        CustomText(
          text: " code ",
          fontSize: 55,
          fontWeight: FontWeight.bold,
          color: Color.fromARGB(255, 7, 208, 157),
        ),
        CustomText(
          text: "doesn't have to painful.",
          fontSize: 55,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        )
      ],
    );
  }
}

class AppBar extends StatelessWidget {
  const AppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              "images/flutterlogo.jpeg",
              height: 40,
            ),
            const SizedBox(
              width: 10,
            ),
            InkWell(
              onTap: (){},
              child: CustomText(
                text: "Flutter",
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () {
                
              },
              child: CustomText(
                text: "Home",
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              width: 65,
            ),
            InkWell(
              onTap: () {
                
              },
              child: CustomText(
                text: "Why Flutter",
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              width: 65,
            ),
            InkWell(
              onTap: () {
                
              },
              child: InkWell(
                onTap: () {
                  
                },
                child: CustomText(
                  text: "Services",
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(
              width: 65,
            ),
            InkWell(
              onTap: () {
                
              },
              child: CustomText(
                text: "AboutUs",
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
          ],
        ),
        Row(
          children: [
            InkWell(
              child: CustomText(
                text: "Login",
                color: Color.fromARGB(255, 4, 232, 46),
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              width: 65,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Color.fromARGB(182, 153, 153, 153),
                  borderRadius: BorderRadius.circular(15)),
              child: TextButton(
                onPressed: () {},
                child: CustomText(
                  text: "SignUp",
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
