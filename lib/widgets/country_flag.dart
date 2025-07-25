import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:world_picker/world_picker.dart';

/// Defines the shape options for displaying country flags.
///
/// - [circle]: Displays the flag in a circular shape with clipped edges
/// - [square]: Displays the flag in its original rectangular shape
enum CountryFlagShape { circle, square }

/// A widget that displays a country's flag with customizable shape and size.
///
/// This widget renders SVG flag assets and supports both circular and square
/// display modes. It includes a subtle border for better visual definition.
///
/// Example:
/// ```dart
/// CountryFlag(
///   size: 48.0,
///   country: selectedCountry,
///   shape: CountryFlagShape.circle,
/// )
/// ```
class CountryFlag extends StatelessWidget {
  /// Creates a new [CountryFlag] widget.
  ///
  /// [size] determines the width and height of the flag display.
  /// [country] provides the flag asset path and country information.
  /// [shape] controls whether the flag is displayed as a circle or square.
  const CountryFlag({
    super.key,
    required this.size,
    required this.country,
    this.shape = CountryFlagShape.circle,
  });

  /// The size (width and height) of the flag display.
  final double? size;

  /// The country whose flag should be displayed.
  final Country? country;

  /// The shape in which to display the flag.
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
