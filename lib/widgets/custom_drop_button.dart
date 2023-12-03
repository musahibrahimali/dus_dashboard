import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:dus_dashboard/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomDropButton extends StatelessWidget {
  final IconData? icon;
  final String hintText;
  final List<String> items;
  final String? value;
  final double? width;
  final void Function(String? value)? onChange;
  const CustomDropButton({
    Key? key,
    this.icon,
    required this.hintText,
    required this.items,
    this.value,
    required this.onChange,
    this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade400),
        borderRadius: const BorderRadius.all(
          Radius.circular(50.0),
        ),
      ),
      child: Row(
        children: <Widget>[
          icon != null ? Icon(icon) : Container(),
          const SizedBox(width: 8.0),
          Expanded(
            child: DropdownButtonHideUnderline(
              child: DropdownButton2(
                hint: Text(
                  hintText,
                  style: GoogleFonts.montserrat(
                    fontSize: 14.0,
                    color: Theme.of(context).hintColor,
                  ),
                ),
                items: items
                    .map(
                      (item) => DropdownMenuItem<String>(
                        value: item,
                        child: CustomText(
                          item,
                          fontSize: 14.0,
                        ),
                      ),
                    )
                    .toList(),
                value: value,
                onChanged: onChange,
                buttonStyleData: const ButtonStyleData(
                  height: 40.0,
                  width: 140.0,
                ),
                menuItemStyleData: const MenuItemStyleData(
                  height: 40.0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
