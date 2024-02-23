import 'package:dartz/dartz.dart' as dartz;
import 'package:dus_dashboard/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class SalesView extends StatefulWidget {
  const SalesView({super.key});

  @override
  State<SalesView> createState() => _SalesViewState();
}

class _SalesViewState extends State<SalesView> {
  /// List of [BasketItemModel]s
  final List<BasketItemModel> _selectedProducts = <BasketItemModel>[];

  var subTotal = 0.0;
  var total = 0.0;

  ///List of [DataRow]s for the selected [Product]s and the [quantity]
  final List<DataRow> _selectedProductsRows = <DataRow>[];

  /// add to cart
  void addToCheckout(ProductModel product) {
    /// check if the product is already in the list
    bool isProductInList = false;
    for (BasketItemModel productQuantity in _selectedProducts) {
      if (productQuantity.product.id == product.id) {
        isProductInList = true;
        break;
      }
    }

    /// if the product is not in the list, add it else increment the quantity
    if (!isProductInList) {
      _selectedProducts.add(BasketItemModel(product: product, quantity: 1));
    } else {
      for (BasketItemModel productQuantity in _selectedProducts) {
        if (productQuantity.product.id == product.id) {
          productQuantity.quantity++;
          break;
        }
      }
    }

    /// update the UI
    setState(() {
      _selectedProductsRows.clear();
      for (BasketItemModel productQuantity in _selectedProducts) {
        var totalAmount = productQuantity.product.price.amount * productQuantity.quantity;
        // leave the total amount to three decimal places
        totalAmount = double.parse(totalAmount.toStringAsFixed(3));
        _selectedProductsRows.add(
          DataRow(
            cells: <DataCell>[
              DataCell(
                Text(
                  productQuantity.product.name,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  style: GoogleFonts.poppins(),
                ),
              ),
              DataCell(
                Text(
                  productQuantity.quantity.toString(),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  style: GoogleFonts.poppins(),
                ),
              ),
              DataCell(
                Text(
                  totalAmount.toString(),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  style: GoogleFonts.poppins(),
                ),
              ),
            ],
          ),
        );
      }
    });

    /// calculate total
    calculateTotal();
  }

  /// remove from cart
  void removeFromCheckout(ProductModel product) {
    /// check if the product is already in the list
    bool isProductInList = false;
    for (BasketItemModel productQuantity in _selectedProducts) {
      if (productQuantity.product.id == product.id) {
        isProductInList = true;
        break;
      }
    }

    /// if the product is in the list, and the quantity is greater than 1,
    /// decrement the quantity else remove the product
    if (isProductInList) {
      for (BasketItemModel productQuantity in _selectedProducts) {
        if (productQuantity.product.id == product.id) {
          if (productQuantity.quantity > 1) {
            productQuantity.quantity--;
          } else {
            _selectedProducts.remove(productQuantity);
          }
          break;
        }
      }
    }

    /// update the UI
    setState(() {
      _selectedProductsRows.clear();
      for (BasketItemModel productQuantity in _selectedProducts) {
        var totalAmount = productQuantity.product.price.amount * productQuantity.quantity;
        // leave the total amount to three decimal places
        totalAmount = double.parse(totalAmount.toStringAsFixed(3));
        _selectedProductsRows.add(
          DataRow(
            cells: <DataCell>[
              DataCell(
                Text(
                  productQuantity.product.name,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  style: GoogleFonts.poppins(),
                ),
              ),
              DataCell(
                Text(
                  productQuantity.quantity.toString(),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  style: GoogleFonts.poppins(),
                ),
              ),
              DataCell(
                Text(
                  totalAmount.toString(),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  style: GoogleFonts.poppins(),
                ),
              ),
            ],
          ),
        );
      }
    });

    /// calculate total
    calculateTotal();
  }

  /// void calculate total
  void calculateTotal() {
    var tempSub = 0.0;
    var tempTotal = 0.0;
    for (BasketItemModel productQuantity in _selectedProducts) {
      tempSub += productQuantity.product.price.amount * productQuantity.quantity;
    }
    tempTotal = tempSub;

    setState(() {
      subTotal = tempSub;
      total = tempTotal;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        /// left side column
        Expanded(
          child: Column(
            children: <Widget>[
              /// main class of products
              Obx(
                () => Padding(
                  padding: const EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0),
                  child: Row(
                    children: <Widget>[
                      ClassCard(
                        title: 'Women',
                        items: productsController.numberOfWomenProducts,
                        color: Colors.pink.shade100,
                        onTap: () {
                          productsController.filterProductsByDepo('Women');
                        },
                      ),
                      ClassCard(
                        title: 'Kids',
                        items: productsController.numberOfKidProducts,
                        color: Colors.purple.shade100,
                        onTap: () {
                          productsController.filterProductsByDepo('Kids');
                        },
                      ),
                      ClassCard(
                        title: 'Men',
                        items: productsController.numberOfMenProducts,
                        color: Colors.teal.shade100,
                        onTap: () {
                          productsController.filterProductsByDepo('Men');
                        },
                      ),
                      ClassCard(
                        title: 'All',
                        items: productsController.numberOfProducts,
                        color: Colors.blueGrey.shade100,
                        onTap: () {
                          productsController.filterProductsByDepo('');
                        },
                      ),
                    ],
                  ),
                ),
              ),

              Gap(10.0.h),
              const BrandDivider(),

              /// products
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 10.0, left: 10.0, right: 0.0),
                  child: LayoutBuilder(
                    builder: (BuildContext context, BoxConstraints constraint) {
                      return Obx(
                        () => GridView.builder(
                          itemCount: productsController.filteredProducts.length,
                          itemBuilder: (BuildContext context, int index) {
                            ProductModel product = productsController.filteredProducts[index];
                            return ProductTile(
                              product: product,
                              showDeleteButton: false,
                              showControls: true,
                              onAddToCart: () {
                                /// if the numInStock is 0, show a notification
                                if (product.numInStock == 0) {
                                  notificationService.showInfoNotification(
                                    context: context,
                                    title: "Info",
                                    message: "Product is out of stock",
                                  );
                                  return;
                                }
                                addToCheckout(product);
                              },
                              onRemoveCart: () {
                                removeFromCheckout(product);
                              },
                            );
                          },
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            mainAxisSpacing: 20.0,
                            crossAxisSpacing: 20.0,
                            crossAxisCount: constraint.maxWidth > 700 ? 5 : 3,
                            childAspectRatio: 1.0,
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
        const VerticalDivider(),
        const Gap(2.0),

        /// right side column
        Column(
          children: <Widget>[
            /// data table
            Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10.0,
                  vertical: 10.0,
                ),
                width: 400.0,
                child: DataTable(
                  clipBehavior: Clip.antiAlias,
                  showCheckboxColumn: false,
                  decoration: BoxDecoration(
                    border: Border(
                      top: BorderSide(width: 1.0, color: Colors.grey.shade300),
                      left: BorderSide(width: 1.0, color: Colors.grey.shade300),
                      right: BorderSide(width: 1.0, color: Colors.grey.shade300),
                      bottom: BorderSide(width: 1.0, color: Colors.grey.shade300),
                    ),
                    boxShadow: const <BoxShadow>[
                      BoxShadow(
                        color: Colors.white,
                        blurRadius: 0.0,
                        offset: Offset(0.0, 0.0),
                      ),
                    ],
                    borderRadius: const BorderRadius.all(
                      Radius.circular(15.0),
                    ),
                  ),
                  columns: <DataColumn>[
                    DataColumn(
                      label: Text(
                        "Product",
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                        style: GoogleFonts.poppins(),
                      ),
                    ),
                    DataColumn(
                      label: Text(
                        "QTY",
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                        style: GoogleFonts.poppins(),
                      ),
                    ),
                    DataColumn(
                      label: Text(
                        "Price",
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                        style: GoogleFonts.poppins(),
                      ),
                    ),
                  ],
                  rows: <DataRow>[
                    ..._selectedProductsRows,

                    ///  add empty row for spacing
                    _buildEmptyRow(),

                    /// sub total row
                    _buildSubTotalRow(),

                    /// total row
                    _buildTotalRow(),
                  ],
                ),
              ),
            ),
            const Gap(15.0),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                /// checkout button
                CustomButton(
                  width: 150.0,
                  fontSize: 18.0,
                  onPressed: () async {
                    /// if no employee is selected
                    if (employeeController.activeEmployee == null) {
                      notificationService.showInfoNotification(
                        context: context,
                        title: "Info",
                        message: "Please select an employee to complete the sale",
                      );
                      return;
                    }

                    /// if no product is selected
                    if (_selectedProducts.isEmpty) {
                      notificationService.showInfoNotification(
                        context: context,
                        title: "Info",
                        message: "Please select a product to complete the sale",
                      );
                      return;
                    }

                    /// create a list of products for the sale
                    List<String> products = <String>[];

                    /// get the total items in the cart
                    var quantity = 0;
                    for (BasketItemModel productQuantity in _selectedProducts) {
                      quantity += productQuantity.quantity;
                      products.add(productQuantity.product.id.toString());
                    }

                    /// convert the products to a string separated by comma
                    /// for the server
                    String productsString = products.join(",");

                    // show a loading dialog
                    showLoading(context);

                    dartz.Either<Failure, SaleModel> response = await helperMethods.createSale(
                      products: productsString,
                      quantity: quantity,
                      currency: appController.defaultLanguage.currency,
                      amount: total,
                      employee: employeeController.activeEmployee!.id,
                    );

                    if (!mounted) return;

                    response.fold(
                      (Failure l) {
                        context.pop();
                        notificationService.showErrorNotification(
                          context: context,
                          title: "Error",
                          message: l.message,
                        );
                      },
                      (SaleModel r) {
                        context.pop();
                        // clear the selected products
                        setState(() {
                          _selectedProducts.clear();
                          _selectedProductsRows.clear();
                          subTotal = 0.0;
                          total = 0.0;
                        });
                        notificationService.showSuccessNotification(
                          context: context,
                          title: "Done",
                          message: "Sale Completed",
                        );
                      },
                    );
                  },
                  text: "Checkout",
                ),

                const Gap(10.0),

                /// clear button
                CustomButton(
                  width: 150.0,
                  fontSize: 18.0,
                  buttonColor: Colors.red,
                  onPressed: () {
                    // clear the selected products
                    setState(() {
                      _selectedProducts.clear();
                      _selectedProductsRows.clear();
                      subTotal = 0.0;
                      total = 0.0;
                    });
                  },
                  text: "Clear",
                ),
              ],
            ),

            const Gap(10.0),
          ],
        ),
      ],
    );
  }

  /// build empty row
  DataRow _buildEmptyRow() {
    return DataRow(
      cells: <DataCell>[
        DataCell(
          Text(
            "",
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            style: GoogleFonts.poppins(),
          ),
        ),
        DataCell(
          Text(
            "",
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            style: GoogleFonts.poppins(),
          ),
        ),
        DataCell(
          Text(
            "",
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            style: GoogleFonts.poppins(),
          ),
        ),
      ],
    );
  }

  /// build sub total
  DataRow _buildSubTotalRow() {
    return DataRow(
      cells: <DataCell>[
        DataCell(
          Text(
            "Sub Total",
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            style: GoogleFonts.poppins(),
          ),
        ),
        DataCell(
          Text(
            "",
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            style: GoogleFonts.poppins(),
          ),
        ),
        DataCell(
          Text(
            "${appController.defaultLanguage.currency} ${subTotal.toStringAsFixed(2)}",
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
            style: GoogleFonts.poppins(
              fontSize: 12.0,
            ),
          ),
        ),
      ],
    );
  }

  /// build total
  DataRow _buildTotalRow() {
    return DataRow(
      cells: <DataCell>[
        DataCell(
          Text(
            "Total",
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            style: GoogleFonts.poppins(),
          ),
        ),
        DataCell(
          Text(
            "",
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            style: GoogleFonts.poppins(),
          ),
        ),
        DataCell(
          Text(
            "${appController.defaultLanguage.currency}  ${total.toStringAsFixed(2)}",
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
            style: GoogleFonts.poppins(
              fontSize: 12.0,
            ),
          ),
        ),
      ],
    );
  }
}
