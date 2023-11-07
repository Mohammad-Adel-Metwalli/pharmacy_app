import 'package:flutter/material.dart';
import 'home_view_body_items.dart';
import 'menu_section.dart';

class HomeViewBody extends StatefulWidget
{
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody>
{
  @override
  Widget build(BuildContext context)
  {
    return const Row(
      children: [
        MenuSection(),

        HomeViewBodyItems(),
      ],
    );
  }
}