import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:cross_file/cross_file.dart';
import 'package:dartz/dartz.dart' as dartz;
import 'package:dus_dashboard/index.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:form_builder_image_picker/form_builder_image_picker.dart';
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

  bool _isCategoryOther = false;

  /// list of product [Image]s
  final List<XFile> _list = <XFile>[];
  final List<String> _imageUrlList = <String>[];

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
    _isCategoryOther = false;

    /// if the user is editing a product
    /// populate the form fields with the product data
    WidgetsBinding.instance.addPostFrameCallback((Duration timeStamp) {
      if (widget.isEditing && widget.product != null) {
        _populateFormFields();
      }
    });
    super.initState();
  }

  void _populateFormFields() {
    final fields = _formKey.currentState?.fields;

    // debugPrint("Product : ${widget.product}");
    fields?['name']?.didChange(widget.product?.name);
    fields?['description']?.didChange(widget.product?.description);
    fields?['depo']?.didChange(widget.product?.depo);
    fields?['price']?.didChange(widget.product?.price.amount.toString());
    fields?['currency']?.didChange(widget.product?.price.currency);
    fields?['brand']?.didChange(widget.product?.brand);
    fields?['category']?.didChange(widget.product?.category);
    fields?['sizes']?.didChange(widget.product?.sizes);
    fields?['colors']?.didChange(widget.product?.colors);
    fields?['number_in_stock']?.didChange(widget.product?.numInStock.toString());
    for (String image in widget.product!.images) {
      _imageUrlList.add(image);
    }
  }

  @override
  void dispose() {
    _isCategoryOther = false;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.85,
      margin: const EdgeInsets.symmetric(
        horizontal: 20.0,
        vertical: 25.0,
      ),
      child: Container(
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.background,
          borderRadius: BorderRadius.circular(12.0.r),
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Theme.of(context).colorScheme.primaryContainer.withOpacity(0.3),
              blurRadius: 10.0,
              spreadRadius: 2.0,
              offset: const Offset(0.0, 0.0),
            ),
          ],
        ),
        child: FormBuilder(
          key: _formKey,
          child: SingleChildScrollView(
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
                Gap(20.0.h),

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
                          Gap(10.0.h),

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

                          Gap(10.0.h),

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
                              Gap(10.0.h),

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

                          Gap(10.0.h),

                          Column(
                            children: <Widget>[
                              FormBuilderImagePicker(
                                name: "images",
                                availableImageSources: const [ImageSourceOption.gallery],
                                maxImages: 10,
                                decoration: const InputDecoration(
                                  labelText: "Product Images",
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(12.0),
                                    ),
                                  ),
                                ),
                              ),
                              if (widget.isEditing) Gap(10.0.h),
                              if (widget.isEditing)
                                SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  physics: const BouncingScrollPhysics(),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12.0.r),
                                      border: Border.all(
                                        color: Theme.of(context).colorScheme.primary.withOpacity(0.3),
                                        width: 0.5,
                                      ),
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        // map through the images
                                        for (String image in _imageUrlList)
                                          Stack(
                                            children: <Widget>[
                                              Container(
                                                padding: const EdgeInsets.all(8.0),
                                                child: ClipRRect(
                                                  borderRadius: BorderRadius.circular(12.0.r),
                                                  child: CachedNetworkImage(
                                                    width: 50.0.w,
                                                    height: 150.0.h,
                                                    imageUrl: image,
                                                    fit: BoxFit.cover,
                                                    placeholder: (BuildContext context, String url) => Container(
                                                      width: 60.0.w,
                                                      height: 150.0.h,
                                                      decoration: const BoxDecoration(
                                                        image: DecorationImage(
                                                          image: AssetImage(Assets.imagesProductPlaceholderImage),
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                    ),
                                                    errorWidget: (BuildContext context, String url, dynamic dynamic) {
                                                      return Container(
                                                        width: 60.0.w,
                                                        height: 150.0.h,
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
                                                top: 8.0,
                                                right: 2.0.w,
                                                child: InkWell(
                                                  onTap: () {
                                                    setState(() {
                                                      // remove the image from the list
                                                      _imageUrlList.remove(image);
                                                      // delete image from the server
                                                    });
                                                  },
                                                  child: Container(
                                                    padding: const EdgeInsets.all(5.0),
                                                    decoration: BoxDecoration(
                                                      borderRadius: BorderRadius.only(
                                                        bottomLeft: Radius.circular(0.0.r),
                                                        bottomRight: Radius.circular(0.0.r),
                                                        topLeft: Radius.circular(0.0.r),
                                                        topRight: Radius.circular(12.0.r),
                                                      ),
                                                      color: Theme.of(context).colorScheme.background.withOpacity(0.4),
                                                    ),
                                                    child: Icon(
                                                      LineAwesomeIcons.times,
                                                      color: Theme.of(context).colorScheme.onBackground,
                                                      size: 30.0,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                      ],
                                    ),
                                  ),
                                ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Gap(20.0.h),

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

                          Gap(10.0.h),

                          /// category field
                          _isCategoryOther
                              ? FormBuilderTextField(
                                  name: 'category',
                                  keyboardType: TextInputType.text,
                                  textInputAction: TextInputAction.continueAction,
                                  decoration: const InputDecoration(
                                    labelText: 'Category',
                                    hintText: 'Enter Category',
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(12.0),
                                      ),
                                    ),
                                  ),
                                  validator: FormBuilderValidators.compose([
                                    FormBuilderValidators.required(),
                                  ]),
                                )
                              : FormBuilderDropdown(
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
                                        onTap: () {
                                          if (category == 'Other') {
                                            setState(() {
                                              _isCategoryOther = true;
                                            });
                                          }
                                        },
                                      );
                                    },
                                  ).toList()),

                          Gap(10.0.h),

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
                          Gap(10.0.h),

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
                          Gap(10.0.h),

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
                Gap(40.0.h),

                /// submit button
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    CustomButton(
                      height: 60.0.h,
                      width: 100.w,
                      buttonColor: Theme.of(context).colorScheme.primary,
                      onPressed: () => _addProduct(),
                      shadowColor: Theme.of(context).colorScheme.primaryContainer.withOpacity(0.3),
                      child: CustomText(
                        'Submit'.toUpperCase(),
                        color: Theme.of(context).colorScheme.onPrimary,
                        fontSize: 8.0.sp,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 2.5,
                      ),
                    ),
                    if (widget.isEditing) Gap(20.0.h),
                    if (widget.isEditing)
                      CustomButton(
                        height: 60.0.h,
                        width: 100.w,
                        onPressed: () {
                          context.pop();
                        },
                        text: "Cancel".toUpperCase(),
                        fontSize: 8.0.sp,
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
  // Widget _buildFiles() => Expanded(
  //       child: GridView.count(
  //         crossAxisCount: 2,
  //         children: widget.isEditing
  //             ? List.generate(widget.product!.images.length, (int index) {
  //                 return Stack(
  //                   children: <Widget>[
  //                     ClipRRect(
  //                       borderRadius: const BorderRadius.only(
  //                         bottomLeft: Radius.circular(0.0),
  //                         bottomRight: Radius.circular(0.0),
  //                         topLeft: Radius.circular(0.0),
  //                         topRight: Radius.circular(0.0),
  //                       ),
  //                       child: ClipRRect(
  //                         borderRadius: BorderRadius.circular(0.0),
  //                         child: CachedNetworkImage(
  //                           // width: 38.0,
  //                           // height: 38.0,
  //                           imageUrl: widget.product!.images[index],
  //                           fit: BoxFit.cover,
  //                           placeholder: (BuildContext context, String url) => Container(
  //                             // width: 38.0,
  //                             // height: 38.0,
  //                             decoration: const BoxDecoration(
  //                               image: DecorationImage(
  //                                 image: AssetImage(Assets.imagesProductPlaceholderImage),
  //                                 fit: BoxFit.cover,
  //                               ),
  //                             ),
  //                           ),
  //                           errorWidget: (BuildContext context, String url, dynamic dynamic) {
  //                             return Container(
  //                               // width: 38.0,
  //                               // height: 38.0,
  //                               decoration: const BoxDecoration(
  //                                 image: DecorationImage(
  //                                   image: AssetImage(Assets.imagesProductPlaceholderImage),
  //                                   fit: BoxFit.cover,
  //                                 ),
  //                               ),
  //                             );
  //                           },
  //                         ),
  //                       ),
  //                     ),
  //
  //                     /// delete button
  //                     Positioned(
  //                       child: InkWell(
  //                         onTap: () {
  //                           setState(() {
  //                             widget.product!.images.remove(widget.product!.images[index]);
  //                           });
  //                         },
  //                         child: Container(
  //                           padding: const EdgeInsets.all(5.0),
  //                           decoration: BoxDecoration(
  //                             borderRadius: BorderRadius.circular(0.0),
  //                             color: Theme.of(context).extension<CustomColors>()!.goldContainer,
  //                           ),
  //                           child: const Icon(
  //                             LineAwesomeIcons.alternate_trash,
  //                             color: Colors.redAccent,
  //                             size: 30.0,
  //                           ),
  //                         ),
  //                       ),
  //                     ),
  //                   ],
  //                 );
  //               })
  //             : List.generate(_list.length, (int index) {
  //                 return Stack(
  //                   children: <Widget>[
  //                     Container(
  //                       margin: const EdgeInsets.all(5.0),
  //                       decoration: BoxDecoration(
  //                         borderRadius: BorderRadius.circular(12.0),
  //                         border: Border.all(
  //                           color: Colors.grey.shade200,
  //                           width: 0.5,
  //                         ),
  //                       ),
  //                       child: Image.file(
  //                         File(_list[index].path),
  //                         fit: BoxFit.cover,
  //                       ),
  //                     ),
  //
  //                     /// delete button
  //                     Positioned(
  //                       child: InkWell(
  //                         onTap: () {
  //                           setState(() {
  //                             _list.remove(_list[index]);
  //                           });
  //                         },
  //                         child: Container(
  //                           padding: const EdgeInsets.all(5.0),
  //                           decoration: BoxDecoration(
  //                             borderRadius: BorderRadius.circular(0.0),
  //                             color: Theme.of(context).extension<CustomColors>()!.goldContainer,
  //                           ),
  //                           child: const Icon(
  //                             LineAwesomeIcons.alternate_trash,
  //                             color: Colors.redAccent,
  //                             size: 30.0,
  //                           ),
  //                         ),
  //                       ),
  //                     ),
  //                   ],
  //                 );
  //               }),
  //       ),
  //     );

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
        // get the images from the image picker
        dynamic images = _formKey.currentState?.fields['images']?.value;
        if (images != null) {
          List<XFile> imageList = images;
          setState(() {
            _list.addAll(imageList);
          });
        }

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
        // get the images from the image picker
        dynamic images = _formKey.currentState?.fields['images']?.value;
        // debugPrint(images.toString());
        if (images != null) {
          List<XFile> imageList = images;
          setState(() {
            _list.addAll(imageList);
          });
        }

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
