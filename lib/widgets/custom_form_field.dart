import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomFormField extends Container {
  CustomFormField({
    Key? formFieldKey,
    double? height,
    Widget? prefix,
    Widget? label,
    TextEditingController? controller,
    Color? fillColor,
    double? hintTextSize,
    Color? hintTextColor,
    double? borderRadiusSize,
    String? hintText,
    Widget? suffix,
    Color? textColor,
    Color? validationColor,
    double? validationFontSize,
    FontWeight? validationFontWeight,
    bool readonly = false,
    String? initialValue,
    TextInputType? keyboardType,
    TextInputAction? textInputAction,
    TextDirection? textDirection,
    FormFieldValidator<String>? validator,
    ValueChanged<String>? onChanged,
    FormFieldSetter<String>? onSaved,
    bool? enabled,
    Color? cursorColor,
    Color? focusBorderColor,
    ValueChanged<String>? onFieldSubmitted,
    bool obscureText = false,
    String obscuringCharacter = "*",
    FocusNode? focusNode,
    InputDecoration? inputDecoration,
    EdgeInsetsGeometry? padding,
    EdgeInsetsGeometry? margin,
    bool autoFocus = false,
    int? maxLength,
    int? maxLines = 1,
    int? minLines = 1,
    bool expands = false,
    EdgeInsets? contentPadding,
    List<TextInputFormatter>? inputFormatters,
    Key? key,
  }) : super(
          key: key,
          height: height,
          margin: margin,
          padding: padding,
          child: Column(
            children: <Widget>[
              TextFormField(
                maxLength: maxLength,
                readOnly: readonly,
                autofocus: autoFocus,
                controller: controller,
                initialValue: initialValue,
                maxLines: maxLines,
                minLines: minLines,
                expands: expands,
                keyboardType: keyboardType,
                textInputAction: textInputAction,
                style: GoogleFonts.montserrat(
                  color: textColor,
                ),
                textDirection: textDirection,
                validator: validator,
                inputFormatters: inputFormatters,
                onChanged: onChanged,
                onSaved: onSaved,
                enabled: enabled,
                focusNode: focusNode,
                cursorColor: cursorColor,
                onFieldSubmitted: onFieldSubmitted,
                obscureText: obscureText,
                obscuringCharacter: obscuringCharacter,
                key: formFieldKey,
                decoration: inputDecoration ??
                    InputDecoration(
                      prefixIcon: prefix,
                      label: label,
                      errorStyle: GoogleFonts.montserrat(
                        color: validationColor,
                        fontWeight: validationFontWeight ?? FontWeight.normal,
                        fontSize: validationFontSize ?? 12.0,
                      ),
                      fillColor: fillColor,
                      filled: true,
                      contentPadding: contentPadding ??
                          const EdgeInsets.only(
                            left: 10.0,
                          ),
                      suffixIcon: suffix != null
                          ? Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 12.0,
                                vertical: 12.0,
                              ),
                              child: suffix,
                            )
                          : null,
                      border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            15.0,
                          ),
                        ),
                        borderSide: BorderSide(),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(
                            12.0,
                          ),
                        ),
                        borderSide: BorderSide(
                          color: focusBorderColor ?? Colors.grey.shade400,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(
                            12.0,
                          ),
                        ),
                        borderSide: BorderSide(
                          color: Colors.grey.shade400,
                        ),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(
                            12.0,
                          ),
                        ),
                        borderSide: BorderSide(
                          color: validationColor ?? Colors.grey.shade400,
                        ),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(
                            12.0,
                          ),
                        ),
                        borderSide: BorderSide(
                          color: validationColor ?? Colors.grey.shade400,
                        ),
                      ),
                      hintText: hintText,
                      hintStyle: GoogleFonts.sourceSansPro(
                        fontSize: hintTextSize ?? 16.0,
                        fontWeight: FontWeight.normal,
                        color: hintTextColor,
                      ),
                    ),
              ),
            ],
          ),
        );
}
