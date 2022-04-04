import 'package:flutter/material.dart';
import '../../shared/theme.dart';
import '../../widgets/CustomBottomNavigationItem.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget customButtonNavigation() {
      return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: double.infinity,
          margin: EdgeInsets.only(
            bottom: 30,
            left: defaultMargin,
            right: defaultMargin,
          ),
          height: 60,
          decoration: BoxDecoration(
            color: kWhiteColor,
            borderRadius: BorderRadius.circular(18),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              CustomBottomNavigationItem(
                imgUrl: "assets/images/icon_home.png",
                isSelected: true,
              ),
              CustomBottomNavigationItem(
                imgUrl: "assets/images/icon_transaction.png",
                isSelected: false,
              ),
              CustomBottomNavigationItem(
                imgUrl: "assets/images/icon_card.png",
                isSelected: false,
              ),
              CustomBottomNavigationItem(
                imgUrl: "assets/images/icon_settings.png",
                isSelected: false,
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      body: Stack(
        children: [
          const Text("Main Page"),
          customButtonNavigation(),
        ],
      ),
    );
  }
}
