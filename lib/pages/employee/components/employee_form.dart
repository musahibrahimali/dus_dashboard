import 'dart:io';

import 'package:cross_file/cross_file.dart';
import 'package:dartz/dartz.dart' as dartz;
import 'package:desktop_drop/desktop_drop.dart';
import 'package:dus_dashboard/index.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class AddEmployeeForm extends StatefulWidget {
  const AddEmployeeForm({super.key});

  @override
  State<AddEmployeeForm> createState() => _AddEmployeeFormState();
}

class _AddEmployeeFormState extends State<AddEmployeeForm> {
  /// form key
  final GlobalKey<FormBuilderState> _formKey = GlobalKey<FormBuilderState>();

  XFile? _file;
  bool _dragging = false;

  /// the class of the product
  final List<String> _designations = <String>[
    'Shop Keeper',
    'Cleaner',
    'Worker',
    'Other',
  ];

  @override
  void initState() {
    _dragging = false;
    super.initState();
  }

  @override
  void dispose() {
    _dragging = false;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    CustomColors brandColors = Theme.of(context).extension<CustomColors>()!;

    return Container(
      width: MediaQuery.of(context).size.width * 0.75,
      margin: const EdgeInsets.symmetric(
        horizontal: 20.0,
        vertical: 55.0,
      ),
      child: Card(
        elevation: 5.0,
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: FormBuilder(
            key: _formKey,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                /// form title
                CustomText(
                  "Create Employee".toUpperCase(),
                  fontSize: 24.0,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 1.5,
                ),
                const Gap(50.0),

                /// form
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    /// first column
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          /// first name
                          FormBuilderTextField(
                            name: 'first_name',
                            keyboardType: TextInputType.text,
                            textInputAction: TextInputAction.continueAction,
                            decoration: const InputDecoration(
                              labelText: 'First Name',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(12.0),
                                ),
                              ),
                            ),
                            validator: FormBuilderValidators.compose([
                              FormBuilderValidators.required(),
                            ]),
                          ),
                          const Gap(10.0),

                          /// last name
                          FormBuilderTextField(
                            name: 'last_name',
                            keyboardType: TextInputType.text,
                            textInputAction: TextInputAction.continueAction,
                            decoration: const InputDecoration(
                              labelText: 'Last Name',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(12.0),
                                ),
                              ),
                            ),
                            validator: FormBuilderValidators.compose([
                              FormBuilderValidators.required(),
                            ]),
                          ),
                          const Gap(10.0),

                          /// avatar
                          Container(
                            height: 200.0,
                            width: double.infinity,
                            padding: const EdgeInsets.symmetric(
                              horizontal: 0.0,
                              vertical: 0.0,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(0.0),
                              border: Border.all(
                                color: Colors.grey.shade200,
                                width: 0.5,
                              ),
                            ),
                            child: Builder(
                              builder: (BuildContext context) {
                                return _file == null
                                    ? InkWell(
                                        onTap: () async {
                                          PlatformFile? file;
                                          try {
                                            // select a file
                                            var result = await FilePicker.platform.pickFiles(
                                              type: FileType.custom,
                                              allowedExtensions: <String>['png', 'jpg', 'jpeg', 'heic'],
                                            );
                                            // check if the result is null
                                            if (result == null) {
                                              return;
                                            }
                                            // get the file
                                            file = result.files.first;
                                            if (!mounted) return;
                                          } on PlatformException catch (e) {
                                            notificationService.showInfoNotification(
                                              context: context,
                                              title: "Info",
                                              message: e.message.toString(),
                                            );
                                          } catch (e) {
                                            notificationService.showInfoNotification(
                                              context: context,
                                              title: "Info",
                                              message: "An error occurred loading the selected images",
                                            );
                                          }

                                          setState(() {
                                            /// add image as XFile
                                            _file = XFile(file!.path!);
                                          });
                                        },
                                        child: DropTarget(
                                          enable: true,
                                          onDragDone: (DropDoneDetails detail) {
                                            /// check if all images are of type ['png', 'jpg', 'jpeg', 'heic']
                                            /// if not, remove the file from the list
                                            List<XFile> tempList = <XFile>[];
                                            for (XFile file in detail.files) {
                                              if (file.path.endsWith('.png') ||
                                                  file.path.endsWith('.PNG') ||
                                                  file.path.endsWith('.jpg') ||
                                                  file.path.endsWith('.JPG') ||
                                                  file.path.endsWith('.jpeg') ||
                                                  file.path.endsWith('.JPEG') ||
                                                  file.path.endsWith('.heic')) {
                                                tempList.add(file);
                                              }
                                            }
                                            setState(() {
                                              _file = tempList.first;
                                            });
                                          },
                                          onDragEntered: (DropEventDetails detail) {
                                            setState(() {
                                              _dragging = true;
                                            });
                                          },
                                          onDragExited: (DropEventDetails detail) {
                                            setState(() {
                                              _dragging = false;
                                            });
                                          },
                                          child: Container(
                                            // height: 200.0,
                                            // width: 200.0,
                                            color: _dragging ? brandColors.brandSurface?.withOpacity(0.4) : brandColors.brandSurfaceContainer?.withOpacity(0.3),
                                            child: const Center(
                                              child: Text("Drop Image"),
                                            ),
                                          ),
                                        ),
                                      )
                                    : _buildFiles();
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Gap(20.0),

                    /// second column
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          /// email
                          FormBuilderTextField(
                            name: 'email',
                            keyboardType: TextInputType.emailAddress,
                            textInputAction: TextInputAction.continueAction,
                            decoration: const InputDecoration(
                              labelText: 'Email Address',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(12.0),
                                ),
                              ),
                            ),
                            validator: FormBuilderValidators.compose([]),
                          ),

                          const Gap(20.0),

                          /// phone Number
                          FormBuilderTextField(
                            name: 'phone_number',
                            keyboardType: TextInputType.phone,
                            textInputAction: TextInputAction.continueAction,
                            decoration: const InputDecoration(
                              labelText: 'Phone Number',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(12.0),
                                ),
                              ),
                            ),
                            validator: FormBuilderValidators.compose([]),
                          ),
                          const Gap(20.0),

                          /// designation
                          FormBuilderDropdown(
                              name: 'designation',
                              initialValue: _designations[0],
                              decoration: const InputDecoration(
                                labelText: 'Designation',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(12.0),
                                  ),
                                ),
                              ),
                              items: _designations.map(
                                (String currency) {
                                  return DropdownMenuItem<String>(
                                    value: currency,
                                    child: Text(currency),
                                  );
                                },
                              ).toList()),
                          const Gap(10.0),
                        ],
                      ),
                    ),
                  ],
                ),
                const Gap(50.0),

                /// submit button
                CustomButton(
                  height: 55.0,
                  width: MediaQuery.of(context).size.width * 0.18,
                  buttonColor: Theme.of(context).colorScheme.primary,
                  onPressed: () => _addEmployee(),
                  shadowColor: Theme.of(context).colorScheme.primaryContainer.withOpacity(0.3),
                  child: CustomText(
                    'Submit'.toUpperCase(),
                    color: Theme.of(context).colorScheme.onPrimary,
                    fontSize: 24.0,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 2.5,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// build and display image [File]s after the drop
  Widget _buildFiles() {
    return Stack(
      children: <Widget>[
        Container(
          margin: const EdgeInsets.all(5.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.0),
            border: Border.all(
              color: Colors.grey.shade200,
              width: 0.5,
            ),
          ),
          child: Image.file(
            File(_file!.path),
            fit: BoxFit.cover,
          ),
        ),

        /// delete button
        Positioned(
          child: InkWell(
            onTap: () {
              setState(() {
                _file = null;
              });
            },
            child: Container(
              padding: const EdgeInsets.all(5.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(0.0),
                color: Theme.of(context).extension<CustomColors>()!.goldContainer,
              ),
              child: const Icon(
                LineAwesomeIcons.alternate_trash,
                color: Colors.redAccent,
                size: 30.0,
              ),
            ),
          ),
        ),
      ],
    );
  }

  /// Add a [ProductModel] to the database
  _addEmployee() async {
    showLoading(context);
    bool? isFormValid = _formKey.currentState?.saveAndValidate();
    if (!isFormValid!) {
      context.pop();
      notificationService.showInfoNotification(
        context: context,
        title: "Info",
        message: "Please fill all required fields",
      );
      return;
    }

    try {
      dartz.Either<Failure, EmployeeModel> response = await helperMethods.createEmployee(
        firstName: _formKey.currentState?.fields['first_name']?.value,
        lastName: _formKey.currentState?.fields['last_name']?.value,
        email: _formKey.currentState?.fields['email']?.value,
        designation: _formKey.currentState?.fields['designation']?.value,
        phoneNumber: _formKey.currentState?.fields['phone_number']?.value,
        avatar: _file != null
            ? PlatformFile(
                name: _file!.name,
                size: File(_file!.path).lengthSync(),
                path: _file!.path,
                bytes: File(_file!.path).readAsBytesSync(),
              )
            : null,
      );
      if (!mounted) return;
      response.fold(
        (Failure failure) {
          context.pop();
          notificationService.showErrorNotification(
            context: context,
            title: "Response Error",
            message: failure.message.toString(),
          );
          return;
        },
        (EmployeeModel r) async {
          context.pop();
          notificationService.showSuccessNotification(
            context: context,
            title: "Success",
            message: "Employee Registered Successfully",
          );

          /// clear the form fields
          _formKey.currentState?.reset();
          setState(() {
            _file = null;
          });

          /// fetch the product to update the app state with the new populated data
          employeeController.resetEmployeeList();
          await helperMethods.getProducts();
          await helperMethods.getEmployees();
        },
      );
    } catch (e) {
      context.pop();
      debugPrint(e.toString());
      notificationService.showErrorNotification(
        context: context,
        title: "Error",
        message: "An error occurred adding the product",
      );
    }
  }
}
