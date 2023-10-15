import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static const id = 'home';
  static Route route() =>
      MaterialPageRoute(builder: (context) => const HomeScreen(), settings: const RouteSettings(name: id));
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _backgroundColor = Colors.lightBlueAccent.shade200;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _backgroundColor,
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        backgroundColor: _backgroundColor,
        title: const Text('iOS Weather'),
      ),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 100,
            backgroundColor: _backgroundColor,
            flexibleSpace: Text('test'),
          ),
          SliverMainAxisGroup(slivers: [
            SliverPersistentHeader(
              pinned: true,
              delegate: SliverHeaderDelegate(title: 'Section 1', backgroundColor: _backgroundColor),
            ),
            SliverPadding(
              padding: const EdgeInsets.only(bottom: 8.0, left: 6, right: 6),
              sliver: _getDecoratedSliverList(10),
            ),
          ]),
          SliverMainAxisGroup(slivers: [
            SliverPersistentHeader(
              pinned: true,
              delegate: SliverHeaderDelegate(title: 'Section 2', backgroundColor: _backgroundColor),
            ),
            SliverPadding(
              padding: const EdgeInsets.only(bottom: 8, left: 6, right: 6),
              sliver: _getDecoratedSliverList(10),
            ),
          ]),
          SliverMainAxisGroup(slivers: [
            SliverPersistentHeader(
              pinned: true,
              delegate: SliverHeaderDelegate(title: 'Section 3', backgroundColor: _backgroundColor),
            ),
            SliverPadding(
              padding: const EdgeInsets.only(bottom: 8, left: 6, right: 6),
              sliver: _getDecoratedSliverList(10),
            ),
          ]),
          SliverCrossAxisGroup(slivers: [
            SliverMainAxisGroup(slivers: [
              SliverPersistentHeader(
                pinned: true,
                delegate: SliverHeaderDelegate(title: 'Section 4', backgroundColor: _backgroundColor),
              ),
              SliverPadding(
                padding: const EdgeInsets.only(bottom: 8, left: 6, right: 6),
                sliver: _getDecoratedSliverList(10),
              ),
            ]),
            SliverMainAxisGroup(slivers: [
              SliverPersistentHeader(
                pinned: true,
                delegate: SliverHeaderDelegate(title: 'Section 5', backgroundColor: _backgroundColor),
              ),
              SliverPadding(
                padding: const EdgeInsets.only(bottom: 8, left: 6, right: 6),
                sliver: _getDecoratedSliverList(10),
              ),
            ]),
          ]),
          SliverCrossAxisGroup(slivers: [
            SliverMainAxisGroup(slivers: [
              SliverPersistentHeader(
                pinned: true,
                delegate: SliverHeaderDelegate(title: 'Section 6', backgroundColor: _backgroundColor),
              ),
              SliverPadding(
                padding: const EdgeInsets.only(bottom: 8, left: 6, right: 6),
                sliver: _getDecoratedSliverList(10),
              ),
            ]),
            SliverMainAxisGroup(slivers: [
              SliverPersistentHeader(
                pinned: true,
                delegate: SliverHeaderDelegate(title: 'Section 7', backgroundColor: _backgroundColor),
              ),
              SliverPadding(
                padding: const EdgeInsets.only(bottom: 8, left: 6, right: 6),
                sliver: _getDecoratedSliverList(10),
              ),
            ]),
          ]),
          SliverMainAxisGroup(slivers: [
            SliverPersistentHeader(
              pinned: true,
              delegate: SliverHeaderDelegate(title: 'Section 8', backgroundColor: _backgroundColor),
            ),
            SliverPadding(
              padding: const EdgeInsets.only(bottom: 8, left: 6, right: 6),
              sliver: _getDecoratedSliverList(10),
            ),
          ]),
          SliverCrossAxisGroup(slivers: [
            SliverMainAxisGroup(slivers: [
              SliverPersistentHeader(
                pinned: true,
                delegate: SliverHeaderDelegate(title: 'Section 9', backgroundColor: _backgroundColor),
              ),
              SliverPadding(
                padding: const EdgeInsets.only(bottom: 8, left: 6, right: 6),
                sliver: _getDecoratedSliverList(10),
              ),
            ]),
            SliverMainAxisGroup(slivers: [
              SliverPersistentHeader(
                pinned: true,
                delegate: SliverHeaderDelegate(title: 'Section 10', backgroundColor: _backgroundColor),
              ),
              SliverPadding(
                padding: const EdgeInsets.only(bottom: 8, left: 6, right: 6),
                sliver: _getDecoratedSliverList(10),
              ),
            ]),
          ]),
        ],
      ),
    );
  }

  Widget _getDecoratedSliverList(int itemCount) {
    return DecoratedSliver(
      decoration: BoxDecoration(
        color: Colors.grey.shade200.withOpacity(0.2),
        borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20)),
      ),
      sliver: SliverList.separated(
        itemBuilder: (_, int index) => Padding(
          padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
          child: index == 0 ? const SizedBox.shrink() : SizedBox(height: 20, child: Text('Item $index')),
        ),
        separatorBuilder: (_, __) => const Divider(
          indent: 8,
          endIndent: 8,
          thickness: 0.5,
          color: Colors.white,
        ),
        itemCount: itemCount,
      ),
    );
  }
}

class SliverPinnedPersistentHeader extends SliverPersistentHeader {
  const SliverPinnedPersistentHeader({super.key, required super.delegate});
  @override
  bool get pinned => true;
}

class SliverHeaderDelegate extends SliverPersistentHeaderDelegate {
  final String title;
  final double headerHeight;
  final Color backgroundColor;
  const SliverHeaderDelegate(
      {required this.title, this.headerHeight = 50, this.backgroundColor = Colors.lightBlueAccent});
  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Container(
          decoration: BoxDecoration(
            color: backgroundColor,
          ),
          child: Center(
            child: Text(title),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 6, right: 6),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)),
              color: Colors.grey.shade200.withOpacity(0.2),
            ),
            width: double.infinity,
            height: headerHeight,
            child: Center(
              child: Text(title),
            ),
          ),
        ),
      ],
    );
  }

  @override
  double get maxExtent => minExtent;

  @override
  double get minExtent => 50;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}