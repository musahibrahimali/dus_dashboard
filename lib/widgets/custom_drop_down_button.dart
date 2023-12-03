import 'package:auto_size_text/auto_size_text.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:dus_dashboard/index.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class EmployeeDropDownButton extends StatefulWidget {
  final List<EmployeeModel> items;
  const EmployeeDropDownButton({
    Key? key,
    required this.items,
  }) : super(key: key);

  @override
  State<EmployeeDropDownButton> createState() => _EmployeeDropDownButtonState();
}

class _EmployeeDropDownButtonState extends State<EmployeeDropDownButton> {
  final TextEditingController employeeSearchController = TextEditingController();

  @override
  void dispose() {
    employeeSearchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: DropdownButtonHideUnderline(
        child: Obx(
          () => DropdownButton2<EmployeeModel>(
            isExpanded: true,
            hint: AutoSizeText(
              'Select Employee'.toUpperCase(),
              style: GoogleFonts.montserrat(
                color: Theme.of(context).hintColor,
              ),
            ),
            items: widget.items
                .map(
                  (item) => DropdownMenuItem(
                    value: item,
                    child: Text(
                      item.firstName,
                      style: GoogleFonts.montserrat(
                        fontSize: 14.0,
                      ),
                    ),
                  ),
                )
                .toList(),
            value: employeeController.selectedEmployee,
            onChanged: (value) {
              employeeController.changeSelectedUser(employee: value!);
            },
            buttonStyleData: ButtonStyleData(
              height: 40,
              width: 200.0,
              padding: const EdgeInsets.symmetric(
                horizontal: 8.0,
                vertical: 4.0,
              ),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey.shade400,
                ),
                borderRadius: const BorderRadius.all(
                  Radius.circular(15.0),
                ),
              ),
            ),
            dropdownStyleData: const DropdownStyleData(
              maxHeight: 200,
            ),
            menuItemStyleData: const MenuItemStyleData(
              height: 40,
            ),
            dropdownSearchData: DropdownSearchData(
              searchController: employeeSearchController,
              searchInnerWidgetHeight: 50,
              searchInnerWidget: Container(
                height: 50,
                padding: const EdgeInsets.only(
                  top: 8,
                  bottom: 4,
                  right: 8,
                  left: 8,
                ),
                child: TextFormField(
                  expands: true,
                  maxLines: null,
                  controller: employeeSearchController,
                  // cursorColor: BrandColors.kHideGray,
                  decoration: InputDecoration(
                    isDense: true,
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 8,
                    ),
                    prefixIcon: const Icon(
                      LineAwesomeIcons.search,
                    ),
                    hintText: 'Search for an employee...',
                    hintStyle: const TextStyle(fontSize: 12),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              ),
              searchMatchFn: (item, searchValue) {
                return (item.value!.firstName.toString().contains(searchValue));
              },
            ),
            onMenuStateChange: (isOpen) {
              if (!isOpen) {
                employeeSearchController.clear();
              }
            },
          ),
        ),
      ),
    );
  }
}
