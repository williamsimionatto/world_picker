import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:world_picker/world_picker.dart';

enum CountryFlagShape { circle, square }

class CountryFlag extends StatelessWidget {
  const CountryFlag({
    super.key,
    required this.size,
    required this.country,
    this.shape = CountryFlagShape.circle,
  });

  final double? size;
  final Country? country;
  final CountryFlagShape shape;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: Colors.grey[200]!,
          width: 1.0,
        ),
      ),
      child: shape == CountryFlagShape.square
          ? SvgPicture.asset(
              country!.flagAssetPath,
              fit: BoxFit.cover,
            )
          : ClipOval(
              child: SvgPicture.asset(
                country!.flagAssetPath,
              ),
            ),
    );
  }
}
