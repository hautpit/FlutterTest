import 'package:flutter/material.dart';
import 'package:pig_farm/constants.dart';
import 'package:pig_farm/screens/home/components/featured_plants.dart';
import 'package:pig_farm/screens/home/components/header_with_search_box.dart';
import 'package:pig_farm/screens/home/components/recomends_plants.dart';
import 'package:pig_farm/screens/home/components/title_with_more_button.dart';

final ButtonStyle flatButtonStyle = TextButton.styleFrom(
  primary: Colors.white,
  minimumSize: const Size(88, 44),
  padding: const EdgeInsets.symmetric(horizontal: 16.0),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(2.0)),
  ),
  backgroundColor: Colors.blue,
);

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithSearchBox(size: size),
          TitleWithMoreButton(
            title: "Recomended",
            press: () {},
          ),
          const RecomendsPlants(),
          TitleWithMoreButton(title: "Featured Plants", press: () {}),
          const FeaturedPlants(),
          const SizedBox(
            height: kDefaultPadding,
          )
        ],
      ),
    );
  }
}
