// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_competition/features/main/prsentation/pages/profile/data/models/lat_long/lat_long_model.dart';
//
// class SaveAddressBottomSheet extends StatefulWidget {
//   const SaveAddressBottomSheet({
//     Key? key,
//     required this.addressText,
//     required this.latLongModel,
//   }) : super(key: key);
//
//   final String addressText;
//   final LatLongModel latLongModel;
//
//   @override
//   State<SaveAddressBottomSheet> createState() => _SaveAddressBottomSheetState();
// }
//
// class _SaveAddressBottomSheetState extends State<SaveAddressBottomSheet> {
//   final formGlobalKey = GlobalKey<FormState>();
//
//   TextEditingController titleController = TextEditingController();
//   TextEditingController addressController = TextEditingController();
//
//   @override
//   void initState() {
//     addressController.text = widget.addressText;
//     super.initState();
//   }
//
//   @override
//   void dispose() {
//     titleController.dispose();
//     addressController.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding:
//           EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
//       child: Form(
//         key: formGlobalKey,
//         child: Container(
//           height: myHeight(context) * 0.495,
//           padding: EdgeInsets.symmetric(
//             horizontal: 16.w,
//             vertical: 20.h,
//           ).w,
//           child: Column(
//             children: [
//               Text(
//                 "Save new address",
//                 style: MyTextStyle.workSansSemiBold.copyWith(
//                   fontSize: 20.sp,
//                   fontWeight: FontWeight.w600,
//                   color: MyColors.greyscale600,
//                 ),
//               ),
//               SizedBox(height: 32.h),
//               MyTexFormFiledWidget(
//                 text: "Title",
//                 controller: titleController,
//                 hintText: 'Enter address title',
//                 validator: (username) => username != null && username.length < 1
//                     ? "Enter your address title"
//                     : null,
//               ),
//               SizedBox(height: 24.h),
//               MyTexFormFiledWidget(
//                 isSuffixIconHave: true,
//                 controller: addressController,
//                 text: 'Address (street, number)',
//                 hintText: 'Enter address (street, number)',
//                 validator: (username) => username != null && username.length < 1
//                     ? "Enter your address (street, number)"
//                     : null,
//               ),
//               SizedBox(height: 32.h),
//               MyButton(
//                 title: "Save",
//                 onTap: () {
//                   if (formGlobalKey.currentState!.validate()) {
//                     formGlobalKey.currentState!.save();
//                     print('''
//                       ${titleController.text},
//                           ${addressController.text},
//                           ${widget.latLongModel.lat},
//                           ${widget.latLongModel.long},
//                     ''');
//                     BlocProvider.of<AddressBloc>(context).add(
//                       AddAddress(
//                         addressModel: AddressModel(
//                           title: titleController.text,
//                           subtitle: addressController.text,
//                           latLongModel: widget.latLongModel,
//                         ),
//                       ),
//                     );
//                     BlocProvider.of<AddressBloc>(context).add(FetchAddresses());
//                     MyUtils.getMyToast(
//                         message:
//                             "The address has been added to the address list");
//                     Future.delayed(Duration(milliseconds: 100)).then(
//                       (value) => Navigator.pop(context),
//                     );
//                   }
//                 },
//                 isActive: true,
//                 colorButton: MyColors.brandColor500,
//                 colorText: MyColors.greyscale900,
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
