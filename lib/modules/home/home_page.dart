import 'package:flutter/material.dart';
import 'package:payflow_app/modules/home/home_controller.dart';
import 'package:payflow_app/shared/themes/colors.dart';

import '../../shared/themes/fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = HomeController();
  final pages = [
    Container(color: Colors.red),
    Container(color: Colors.blue),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(152),
        child: Container(
          height: 152,
          color: AppColors.primary,
          child: Center(
            child: ListTile(
              title: Text.rich(TextSpan(
                  text: "Olá",
                  style: AppFonts.titleRegular,
                  children: [
                    TextSpan(text: "Pedro", style: AppFonts.titleBoldBackground)
                  ])),
              subtitle: Text(
                "Mantenha suas contas em dia",
                style: AppFonts.captionShape,
              ),
              trailing: Container(
                height: 48,
                width: 48,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            ),
          ),
        ),
      ),
      body: pages[controller.currentPage],
      bottomNavigationBar: SizedBox(
        height: 90,
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          IconButton(
              onPressed: () {
                controller.setPage(0);
                setState(() {});
              },
              icon: const Icon(
                Icons.home,
                color: AppColors.primary,
              )),
          GestureDetector(
            onTap: () {},
            child: Container(
              height: 56,
              width: 56,
              decoration: BoxDecoration(
                  color: AppColors.primary,
                  borderRadius: BorderRadius.circular(5)),
              child: const Icon(
                Icons.add_box_outlined,
                color: AppColors.background,
              ),
            ),
          ),
          IconButton(
              onPressed: () {
                controller.setPage(0);
                setState(() {});
              },
              icon: const Icon(
                Icons.description_outlined,
                color: AppColors.background,
              )),
        ]),
      ),
    );
  }
}
