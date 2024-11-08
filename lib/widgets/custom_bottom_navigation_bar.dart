// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:get/get.dart';
//
// class CustomBottomNavigationBar extends StatelessWidget {
//   const CustomBottomNavigationBar({
//     Key? key,
//     required this.controller,
//   }) : super(key: key);
//
//   final LayoutController controller;
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       clipBehavior: Clip.antiAliasWithSaveLayer,
//       decoration: BoxDecoration(
//           color: Colors.white,
//           borderRadius: const BorderRadius.all(Radius.circular(22)),
//           boxShadow: [
//             BoxShadow(
//               offset: const Offset(0, -3),
//               color: const Color(0xFF5E5E5E).withOpacity(.25),
//               spreadRadius: 0,
//               blurRadius: 11.2,
//             )
//           ]),
//       child: Obx(
//         () => Row(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: [
//             customBottomNavigationItem(
//               onPressed: () {
//                 controller.onPressed(0);
//               },
//               imagePath: AppImages.home,
//               color: controller.getColor(0),
//             ),
//             customBottomNavigationItem(
//               onPressed: () {
//                 controller.onPressed(1);
//               },
//               imagePath: AppImages.patients,
//               color: controller.getColor(1),
//             ),
//             customBottomNavigationItem(
//               onPressed: () {
//                 controller.onPressed(2);
//               },
//               imagePath: AppImages.dates,
//               color: controller.getColor(2),
//             ),
//             customBottomNavigationItem(
//               onPressed: () {
//                 controller.onPressed(3);
//               },
//               imagePath: AppImages.aboutUs,
//               color: controller.getColor(3),
//             ),
//           ],
//         ).paddingSymmetric(vertical: context.height / 80),
//       ),
//     ).paddingOnly(bottom: 16, left: 16, right: 16);
//   }
//
//   Widget customBottomNavigationItem({
//     required VoidCallback onPressed,
//     required String imagePath,
//     Color? color,
//   }) {
//     return IconButton(
//       onPressed: onPressed,
//       icon: SvgPicture.asset(
//         imagePath,
//         colorFilter:
//             color == null ? null : ColorFilter.mode(color, BlendMode.srcIn),
//       ),
//     );
//   }
// }
