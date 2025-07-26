import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:world_picker/model/model.dart';
import 'package:world_picker/world_picker.dart';

import 'package:world_picker/validation/phone_number_text_input_formatter.dart';

/// A widget that allows users to input and validate phone numbers.
///
/// It uses the [PhoneNumber] model to represent the phone number
/// and its associated country ISO code.
class WorldPickerPhoneNumberField extends StatefulWidget {
  /// The controller for managing the text input.
  final TextEditingController? controller;

  /// Callback that is triggered when the phone number changes.
  final Function(PhoneNumber) onPhoneNumberChanged;

  /// Initial value for the phone number field.
  final PhoneNumber? initialValue;

  /// Configuration options for customizing the country picker dialog.
  final WorldPickerOptions options;

  /// Whether to display the international dial code (e.g., "+1"). Defaults to false.
  final bool showDialCode;

  /// The default country ISO code to use when no country is selected. Defaults to "US".
  final String defaultCountryIsoCode;

  /// The size of the flag icon. Defaults to 32.0.
  final double? size;

  final InputDecoration decoration;
  final TextInputType keyboardType;
  final TextInputAction? textInputAction;
  final TextStyle? style;
  final StrutStyle? strutStyle;
  final TextAlignVertical? textAlignVertical;
  final bool autofocus;
  final String obscuringCharacter;
  final bool obscureText;
  final bool autocorrect;
  final SmartDashesType? smartDashesType;
  final SmartQuotesType? smartQuotesType;
  final bool enableSuggestions;
  final Widget Function(BuildContext, EditableTextState)? contextMenuBuilder;
  final bool? showCursor;
  final Function()? onEditingComplete;
  final Function(PhoneNumber)? onSubmitted;
  final AppPrivateCommandCallback? onAppPrivateCommand;
  final Function(PointerDownEvent)? onTapOutside;
  final double cursorWidth;
  final double? cursorHeight;
  final Radius? cursorRadius;
  final Color? cursorColor;
  final Brightness? keyboardAppearance;
  final EdgeInsets scrollPadding;
  final bool enableInteractiveSelection;
  final TextSelectionControls? selectionControls;
  final MouseCursor? mouseCursor;
  final ScrollPhysics? scrollPhysics;
  final ScrollController? scrollController;
  final Iterable<String>? autofillHints;
  final bool enableIMEPersonalizedLearning;
  final List<TextInputFormatter>? inputFormatters;

  WorldPickerPhoneNumberField({
    super.key,
    this.controller,
    required this.onPhoneNumberChanged,
    this.initialValue,
    this.options = const WorldPickerOptions(),
    this.showDialCode = false,
    this.defaultCountryIsoCode = 'US',
    this.size = 32.0,
    this.decoration = const InputDecoration(),
    this.keyboardType = TextInputType.phone,
    this.textInputAction,
    this.style,
    this.strutStyle,
    this.textAlignVertical,
    this.autofocus = false,
    this.obscuringCharacter = '•',
    this.obscureText = false,
    this.autocorrect = false,
    this.smartDashesType,
    this.smartQuotesType,
    this.enableSuggestions = true,
    this.contextMenuBuilder,
    this.showCursor,
    this.onEditingComplete,
    this.onSubmitted,
    this.onAppPrivateCommand,
    this.onTapOutside,
    this.cursorWidth = 2.0,
    this.cursorHeight,
    this.cursorRadius,
    this.cursorColor,
    this.keyboardAppearance,
    this.scrollPadding = const EdgeInsets.all(20.0),
    this.enableInteractiveSelection = true,
    this.selectionControls,
    this.mouseCursor,
    this.scrollPhysics,
    this.scrollController,
    this.autofillHints,
    this.enableIMEPersonalizedLearning = true,
    this.inputFormatters,
  }) {
    assert(
      (controller != null && initialValue == null) ||
          (controller == null && initialValue != null),
      'Either controller or initialValue must be provided, but not both.',
    );
  }

  @override
  State<WorldPickerPhoneNumberField> createState() =>
      _WorldPickerPhoneNumberFieldState();
}

class _WorldPickerPhoneNumberFieldState
    extends State<WorldPickerPhoneNumberField> {
  bool get selectionEnabled => widget.enableInteractiveSelection;

  late Country selectedCountry;

  @override
  void initState() {
    super.initState();
    selectedCountry = WorldPickerService.fromIsoCode(
          widget.initialValue?.isoCode ?? widget.defaultCountryIsoCode,
        ) ??
        WorldPickerService.defaultCountry();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      decoration: widget.decoration.copyWith(
        labelText: widget.decoration.labelText ?? 'Phone Number',
        prefixIcon: Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: IntrinsicWidth(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: WorldPickerIcon(
                showDialCode: widget.showDialCode,
                size: widget.size,
                onSelect: (country) {
                  setState(() {
                    selectedCountry = country;
                  });

                  final phoneNumber = PhoneNumber(
                    isoCode: country.isoCode,
                    phoneNumber: widget.controller?.text ?? '',
                    dialCode: country.dialCode,
                    country: country,
                  );
                  widget.onPhoneNumberChanged(phoneNumber);
                },
                selectedCountry: selectedCountry,
                options: widget.options,
              ),
            ),
          ),
        ),
      ),
      keyboardType: widget.keyboardType,
      textInputAction: widget.textInputAction,
      style: widget.style,
      strutStyle: widget.strutStyle,
      textAlignVertical: widget.textAlignVertical,
      autofocus: widget.autofocus,
      obscuringCharacter: widget.obscuringCharacter,
      obscureText: widget.obscureText,
      autocorrect: widget.autocorrect,
      smartDashesType: widget.smartDashesType,
      smartQuotesType: widget.smartQuotesType,
      enableSuggestions: widget.enableSuggestions,
      contextMenuBuilder: widget.contextMenuBuilder,
      showCursor: widget.showCursor,
      onEditingComplete: widget.onEditingComplete,
      onAppPrivateCommand: widget.onAppPrivateCommand,
      onTapOutside: widget.onTapOutside,
      cursorWidth: widget.cursorWidth,
      cursorHeight: widget.cursorHeight,
      cursorRadius: widget.cursorRadius,
      cursorColor: widget.cursorColor,
      keyboardAppearance: widget.keyboardAppearance,
      scrollPadding: widget.scrollPadding,
      enableInteractiveSelection: widget.enableInteractiveSelection,
      selectionControls: widget.selectionControls,
      mouseCursor: widget.mouseCursor,
      scrollPhysics: widget.scrollPhysics,
      scrollController: widget.scrollController,
      autofillHints: widget.autofillHints,
      enableIMEPersonalizedLearning: widget.enableIMEPersonalizedLearning,
      inputFormatters: <TextInputFormatter>[
        WorldPickerPhoneNumberTextInputFormatter(
            isoCode: selectedCountry.isoCode),
        FilteringTextInputFormatter.deny(RegExp(r'[\s]')),
        ...?widget.inputFormatters,
      ],
      onChanged: (value) {
        final phoneNumber = PhoneNumber(
          isoCode: selectedCountry.isoCode,
          phoneNumber: value,
          dialCode: selectedCountry.dialCode,
          country: selectedCountry,
        );
        widget.onPhoneNumberChanged(phoneNumber);
      },
    );
  }
}
