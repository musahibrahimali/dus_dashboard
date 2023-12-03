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
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

/// add product form
class AddProduct extends StatefulWidget {
  const AddProduct({super.key});

  @override
  State<AddProduct> createState() => _AddProductState();
}

class _AddProductState extends State<AddProduct> {
  /// form key
  final GlobalKey<FormBuilderState> _formKey = GlobalKey<FormBuilderState>();

  bool _dragging = false;
  bool _isRequesting = false;

  /// list of product [Image]s
  final List<XFile> _list = [];

  /// the currencies the price of the [ProductModel] can be in
  final List<String> _currencies = <String>[
    'GH₵',
    '\$',
    '€',
  ];

  /// the class of the product
  final List<String> _classes = <String>[
    'Women',
    'Men',
    'Kids',
  ];

  /// The available categories a [ProductModel] belongs to
  final List<String> _categories = <String>[
    'Shirt',
    'Short',
    'Dress',
    'Under Wear',
    'Pant',
    'Trouser',
    'Jeans',
    'Other',
  ];

  /// list of available [Size]s for the product
  final List<String> _sizes = <String>[
    'S',
    'M',
    'L',
    'XL',
    'XXL',
  ];

  /// list of [Color]s for the product
  final List<String> _colors = <String>[
    'Red',
    'Blue',
    'Green',
    'Yellow',
    'Black',
    'White',
    'Grey',
    'Brown',
    'Pink',
    'Purple',
    'Orange',
    'Other',
  ];

  @override
  void initState() {
    _isRequesting = false;
    _dragging = false;
    super.initState();
  }

  @override
  void dispose() {
    _isRequesting = false;
    _dragging = false;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    CustomColors brandColors = Theme.of(context).extension<CustomColors>()!;

    return Container(
      width: MediaQuery.of(context).size.width * 0.85,
      margin: const EdgeInsets.symmetric(
        horizontal: 20.0,
        vertical: 25.0,
      ),
      child: _isRequesting
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : Card(
              elevation: 5.0,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: FormBuilder(
                  key: _formKey,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      /// form title
                      CustomText(
                        "Add Product".toUpperCase(),
                        fontSize: 24.0,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1.5,
                      ),
                      const Gap(10.0),

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
                                /// product name
                                FormBuilderTextField(
                                  name: 'name',
                                  keyboardType: TextInputType.text,
                                  textInputAction: TextInputAction.continueAction,
                                  decoration: const InputDecoration(
                                    labelText: 'Product Name',
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

                                /// product description
                                FormBuilderTextField(
                                  name: 'description',
                                  keyboardType: TextInputType.text,
                                  maxLines: 4,
                                  textInputAction: TextInputAction.continueAction,
                                  decoration: const InputDecoration(
                                    labelText: 'Description',
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(12.0),
                                      ),
                                    ),
                                  ),
                                  validator: FormBuilderValidators.compose([
                                    FormBuilderValidators.required(),
                                    FormBuilderValidators.minLength(10, errorText: "The product description cannot be less than 10 words"),
                                  ]),
                                ),

                                const Gap(10.0),

                                /// price row
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    /// currency
                                    Expanded(
                                      flex: 2,
                                      child: FormBuilderDropdown(
                                          name: 'currency',
                                          initialValue: _currencies[0],
                                          decoration: const InputDecoration(
                                            labelText: 'Currency',
                                            border: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(
                                                Radius.circular(12.0),
                                              ),
                                            ),
                                          ),
                                          items: _currencies.map(
                                            (String currency) {
                                              return DropdownMenuItem<String>(
                                                value: currency,
                                                child: Text(currency),
                                              );
                                            },
                                          ).toList()),
                                    ),
                                    const Gap(10.0),

                                    ///amount
                                    Expanded(
                                      flex: 5,
                                      child: FormBuilderTextField(
                                        name: 'price',
                                        keyboardType: TextInputType.number,
                                        textInputAction: TextInputAction.continueAction,
                                        decoration: const InputDecoration(
                                          labelText: 'Price',
                                          border: OutlineInputBorder(
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(12.0),
                                            ),
                                          ),
                                        ),
                                        validator: FormBuilderValidators.compose([
                                          FormBuilderValidators.required(),
                                          FormBuilderValidators.numeric(errorText: "Invalid Amount"),
                                        ]),
                                      ),
                                    ),
                                  ],
                                ),

                                const Gap(10.0),

                                /// images
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
                                      return _list.isEmpty
                                          ? InkWell(
                                              onTap: () async {
                                                List<PlatformFile>? files = <PlatformFile>[];
                                                try {
                                                  files = (await FilePicker.platform.pickFiles(
                                                    type: FileType.custom,
                                                    allowMultiple: true,
                                                    onFileLoading: (FilePickerStatus status) => debugPrint(
                                                      status.toString(),
                                                    ),
                                                    allowedExtensions: ['png', 'PNG', 'jpg', 'JPG', 'jpeg', 'JPEG', 'heic'],
                                                  ))
                                                      ?.files;
                                                  debugPrint("Files : $files");
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
                                                  /// add all the items in files to _list as XFile
                                                  _list.addAll(files!.map((PlatformFile file) => XFile(file.path!)));
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
                                                    _list.addAll(tempList);
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
                                                  color: _dragging
                                                      ? brandColors.brandSurface?.withOpacity(0.4)
                                                      : brandColors.brandSurfaceContainer?.withOpacity(0.3),
                                                  child: const Center(
                                                    child: Text("Drop Images"),
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
                                /// depo field
                                FormBuilderDropdown(
                                    name: 'depo',
                                    decoration: const InputDecoration(
                                      labelText: 'Class of Product',
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(12.0),
                                        ),
                                      ),
                                    ),
                                    items: _classes.map(
                                      (String depo) {
                                        return DropdownMenuItem<String>(
                                          value: depo,
                                          child: Text(depo),
                                        );
                                      },
                                    ).toList()),

                                const Gap(10.0),

                                /// category field
                                FormBuilderDropdown(
                                    name: 'category',
                                    decoration: const InputDecoration(
                                      labelText: 'Category',
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(12.0),
                                        ),
                                      ),
                                    ),
                                    items: _categories.map(
                                      (String category) {
                                        return DropdownMenuItem<String>(
                                          value: category,
                                          child: Text(category),
                                        );
                                      },
                                    ).toList()),

                                const Gap(10.0),

                                /// brand
                                FormBuilderTextField(
                                  name: 'brand',
                                  keyboardType: TextInputType.text,
                                  textInputAction: TextInputAction.continueAction,
                                  decoration: const InputDecoration(
                                    labelText: 'Brand',
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(12.0),
                                      ),
                                    ),
                                  ),
                                  validator: FormBuilderValidators.compose([]),
                                ),
                                const Gap(10.0),

                                /// number in stock
                                FormBuilderTextField(
                                  name: 'number_in_stock',
                                  keyboardType: TextInputType.number,
                                  textInputAction: TextInputAction.continueAction,
                                  decoration: const InputDecoration(
                                    labelText: 'Number In Stock',
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(12.0),
                                      ),
                                    ),
                                  ),
                                  validator: FormBuilderValidators.compose([]),
                                ),
                                const Gap(10.0),

                                /// colors
                                FormBuilderFilterChip(
                                  name: 'colors',
                                  spacing: 10.0,
                                  runSpacing: 10.0,
                                  alignment: WrapAlignment.start,
                                  decoration: const InputDecoration(
                                    labelText: 'Available Colors',
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(12.0),
                                      ),
                                    ),
                                  ),
                                  options: <FormBuilderChipOption<String>>[
                                    for (String color in _colors)
                                      FormBuilderChipOption<String>(
                                        value: color,
                                        child: Text(color),
                                      ),
                                  ],
                                ),
                                const Gap(10.0),

                                /// Sizes
                                FormBuilderFilterChip(
                                  name: 'sizes',
                                  spacing: 10.0,
                                  runSpacing: 10.0,
                                  alignment: WrapAlignment.start,
                                  decoration: const InputDecoration(
                                    labelText: 'Available Sizes',
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(12.0),
                                      ),
                                    ),
                                  ),
                                  options: <FormBuilderChipOption<String>>[
                                    for (String size in _sizes)
                                      FormBuilderChipOption<String>(
                                        value: size,
                                        child: Text(size),
                                      ),
                                  ],
                                ),
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
                        onPressed: () => _addProduct(),
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
  Widget _buildFiles() => GridView.count(
        crossAxisCount: 2,
        children: List.generate(_list.length, (int index) {
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
                  File(_list[index].path),
                  fit: BoxFit.cover,
                ),
              ),

              /// delete button
              Positioned(
                child: InkWell(
                  onTap: () {
                    setState(() {
                      _list.remove(_list[index]);
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
        }),
      );

  /// Add a [ProductModel] to the database
  _addProduct() async {
    setState(() {
      _isRequesting = true;
    });
    bool? isFormValid = _formKey.currentState?.saveAndValidate();
    if (!isFormValid!) {
      notificationService.showInfoNotification(
        context: context,
        title: "Info",
        message: "Please fill all required fields",
      );
      setState(() {
        _isRequesting = false;
      });
      return;
    }

    try {
      dartz.Either<Failure, ProductModel> response = await helperMethods.createProduct(
        name: _formKey.currentState?.fields['name']?.value,
        description: _formKey.currentState?.fields['description']?.value,
        depo: _formKey.currentState?.fields['depo']?.value,
        price: double.parse(_formKey.currentState?.fields['price']?.value),
        currency: _formKey.currentState?.fields['currency']?.value,
        brand: _formKey.currentState?.fields['brand']?.value,
        category: _formKey.currentState?.fields['category']?.value,
        sizes: _formKey.currentState?.fields['sizes']?.value,
        colors: _formKey.currentState?.fields['colors']?.value,
        numberInStock: _formKey.currentState?.fields['number_in_stock']?.value,
        images: _list.map((XFile file) {
          File f = File(file.path);
          return PlatformFile(
            name: file.name,
            size: f.lengthSync(),
            path: file.path,
            bytes: f.readAsBytesSync(),
          );
        }).toList(),
      );
      if (!mounted) return;
      response.fold(
        (Failure failure) {
          notificationService.showErrorNotification(
            context: context,
            title: "Response Error",
            message: failure.message.toString(),
          );
          setState(() {
            _isRequesting = false;
          });
          return;
        },
        (ProductModel productModel) async {
          notificationService.showSuccessNotification(
            context: context,
            title: "Success",
            message: "Product Added to Inventory",
          );
          setState(() {
            _isRequesting = false;
          });

          /// clear the form fields
          _formKey.currentState?.reset();
          _list.clear();

          /// fetch the product to update the app state with the new populated data
          employeeController.resetEmployeeList();
          await helperMethods.getProducts();
          await helperMethods.getEmployees();
        },
      );
    } catch (e) {
      notificationService.showErrorNotification(
        context: context,
        title: "Error",
        message: "An error occurred adding the product",
      );
      setState(() {
        _isRequesting = false;
      });
      debugPrint(e.toString());
    }
  }
}
