import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:world_picker/world_picker.dart';

class CountryFlag extends StatelessWidget {
  const CountryFlag({
    super.key,
    required this.size,
    required this.country,
  });

  final double? size;
  final Country? country;

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
      child: ClipOval(
        child: SvgPicture.asset(
          country!.flagAssetPath,
        ),
      ),
    );
  }
}
