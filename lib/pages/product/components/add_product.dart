import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
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

/// add product form
class AddProduct extends StatefulWidget {
  final bool isEditing;
  final ProductModel? product;
  const AddProduct({
    super.key,
    this.isEditing = false,
    this.product,
  });

  @override
  State<AddProduct> createState() => _AddProductState();
}

class _AddProductState extends State<AddProduct> {
  /// form key
  final GlobalKey<FormBuilderState> _formKey = GlobalKey<FormBuilderState>();

  bool _dragging = false;

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
    _dragging = false;
    super.initState();
  }

  @override
  void didChangeDependencies() {
    /// if the user is editing a product
    /// populate the form fields with the product data
    if (widget.isEditing) {
      _formKey.currentState?.fields['name']?.didChange(widget.product?.name);
      _formKey.currentState?.fields['description']?.didChange(widget.product?.description);
      _formKey.currentState?.fields['depo']?.didChange(widget.product?.depo);
      _formKey.currentState?.fields['price']?.didChange(widget.product?.price.amount.toString());
      _formKey.currentState?.fields['currency']?.didChange(widget.product?.price.currency);
      _formKey.currentState?.fields['brand']?.didChange(widget.product?.brand);
      _formKey.currentState?.fields['category']?.didChange(widget.product?.category);
      _formKey.currentState?.fields['sizes']?.didChange(widget.product?.sizes);
      _formKey.currentState?.fields['colors']?.didChange(widget.product?.colors);
      _formKey.currentState?.fields['number_in_stock']?.didChange(widget.product?.numInStock.toString());
    }
    super.didChangeDependencies();
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
      width: MediaQuery.of(context).size.width * 0.85,
      margin: const EdgeInsets.symmetric(
        horizontal: 20.0,
        vertical: 25.0,
      ),
      child: Card(
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
                  "${widget.isEditing ? 'Edit' : 'Add'} Product".toUpperCase(),
                  fontSize: 24.0,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 1.5,
                ),
                const Gap(20.0),

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
                              // FormBuilderValidators.minLength(10, errorText: "The product description cannot be less than 10 words"),
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
                                return (_list.isEmpty || widget.isEditing == false)
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
                            clipBehavior: Clip.antiAlias,
                            padding: const EdgeInsets.all(0.0),
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
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
                    const Gap(20.0),
                    if (widget.isEditing)
                      CustomButton(
                        height: 55.0,
                        width: MediaQuery.of(context).size.width * 0.18,
                        onPressed: () {
                          context.pop();
                        },
                        text: "Cancel",
                        fontSize: 24.0,
                        buttonColor: Colors.redAccent,
                      ),
                  ],
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
        children: widget.isEditing
            ? List.generate(widget.product!.images.length, (int index) {
                return Stack(
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(0.0),
                        bottomRight: Radius.circular(0.0),
                        topLeft: Radius.circular(0.0),
                        topRight: Radius.circular(0.0),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(0.0),
                        child: CachedNetworkImage(
                          // width: 38.0,
                          // height: 38.0,
                          imageUrl: widget.product!.images[index],
                          fit: BoxFit.cover,
                          placeholder: (BuildContext context, String url) => Container(
                            // width: 38.0,
                            // height: 38.0,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(Assets.imagesProductPlaceholderImage),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          errorWidget: (BuildContext context, String url, dynamic dynamic) {
                            return Container(
                              // width: 38.0,
                              // height: 38.0,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(Assets.imagesProductPlaceholderImage),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ),

                    /// delete button
                    Positioned(
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            widget.product!.images.remove(widget.product!.images[index]);
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
              })
            : List.generate(_list.length, (int index) {
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
      dartz.Either<Failure, ProductModel> response;
      if (widget.isEditing) {
        /// edit the product
        response = await helperMethods.updateProduct(
          id: widget.product!.id,
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
      } else {
        response = await helperMethods.createProduct(
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
      }
      if (!mounted) return;
      context.pop();
      response.fold(
        (Failure failure) {
          notificationService.showErrorNotification(
            context: context,
            title: "Response Error",
            message: failure.message.toString(),
          );
          return;
        },
        (ProductModel productModel) async {
          if (widget.isEditing) {
            context.pop();
          }
          notificationService.showSuccessNotification(
            context: context,
            title: "Success",
            message: "Product ${widget.isEditing ? 'Updated' : 'Added'} to Inventory",
          );

          /// clear the form fields
          _formKey.currentState?.reset();
          setState(() {
            _list.clear();
          });

          /// fetch the product to update the app state with the new populated data
          employeeController.resetEmployeeList();
          await helperMethods.getProducts();
          await helperMethods.getEmployees();
        },
      );
    } catch (e) {
      context.pop();
      notificationService.showErrorNotification(
        context: context,
        title: "Error",
        message: "An error occurred adding the product",
      );
      debugPrint(e.toString());
    }
  }
}
