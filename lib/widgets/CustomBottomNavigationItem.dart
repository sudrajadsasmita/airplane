import '../shared/theme.dart';
import 'package:flutter/material.dart';

class CustomBottomNavigationItem extends StatelessWidget {
  final String imgUrl;
  final bool isSelected;
  const CustomBottomNavigationItem({
    Key? key,
    required this.imgUrl,
    this.isSelected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const SizedBox(),
        Container(
          width: defaultMargin,
          height: defaultMargin,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                imgUrl,
              ),
            ),
          ),
        ),
        Container(
          width: 30,
          height: 2,
          decoration: BoxDecoration(
            color: isSelected ? kPrimaryColor : kTransparentColor,
            borderRadius: BorderRadius.circular(18),
          ),
        )
      ],
    );
  }
}
