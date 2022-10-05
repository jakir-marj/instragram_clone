// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:instragram_clone/provider/user_provider.dart';
import 'package:instragram_clone/responsive/dimensions.dart';
import 'package:provider/provider.dart';

class RespossiveLauout extends StatefulWidget {
  final Widget webScreenLayout;
  final Widget mobileScreenLayout;
  const RespossiveLauout({
    Key? key,
    required this.webScreenLayout,
    required this.mobileScreenLayout,
  }) : super(key: key);

  @override
  State<RespossiveLauout> createState() => _RespossiveLauoutState();
}

class _RespossiveLauoutState extends State<RespossiveLauout> {
  @override
  void initState() {
    super.initState();
    addData();
  }

  addData() async {
    UserProvider userProvider = Provider.of(context, listen: false);
    await userProvider.refreshUser();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > webScreenSize) {
          return widget.webScreenLayout;
        }
        return widget.mobileScreenLayout;
      },
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:instragram_clone/responsive/dimensions.dart';

// import 'package:provider/provider.dart';

// class ResponsiveLayout extends StatefulWidget {
//   final Widget mobileScreenLayout;
//   final Widget webScreenLayout;
//   const ResponsiveLayout({
//     Key? key,
//     required this.mobileScreenLayout,
//     required this.webScreenLayout,
//   }) : super(key: key);

//   @override
//   State<ResponsiveLayout> createState() => _ResponsiveLayoutState();
// }

// class _ResponsiveLayoutState extends State<ResponsiveLayout> {
//   @override
//   void initState() {
//     super.initState();
//     addData();
//   }

//   addData() async {
//     UserProvider _userProvider =
//         Provider.of<UserProvider>(context, listen: false);
//     await _userProvider.refreshUser();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return LayoutBuilder(builder: (context, constraints) {
//       if (constraints.maxWidth > webScreenSize) {
//         // 600 can be changed to 900 if you want to display tablet screen with mobile screen layout
//         return widget.webScreenLayout;
//       }
//       return widget.mobileScreenLayout;
//     });
//   }
// }

