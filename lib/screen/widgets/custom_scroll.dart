import 'dart:ui';

import 'package:flutter/material.dart';

import '../../config/app_config.dart';

class CustomScroll extends StatelessWidget {
  final Color backgroundColor;
  const CustomScroll({super.key, required this.backgroundColor});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SliverAppBar(
          backgroundColor: Colors.transparent,
          expandedHeight: 100,
          flexibleSpace: Text('test'),
        ),
        SliverMainAxisGroup(slivers: [
          SliverMainAxisGroup(slivers: [
            const SliverPinnedPersistentHeader(
              delegate: SliverHeaderDelegate(title: 'Section 1'),
            ),
            SliverPadding(
              padding: AppConfig.bodyPadding,
              sliver: _getDecoratedSliverList(10),
            ),
            const SliverPadding(
              padding: EdgeInsets.only(left: 6, right: 6),
              sliver: SliverToBoxAdapter(
                  child: Divider(
                height: 1,
                thickness: 0.1,
                color: Colors.white,
                indent: 8,
                endIndent: 8,
              )),
            ),
          ]),
          const SliverMainAxisGroup(slivers: [
            SliverPinnedPersistentFooter(delegate: SliverFooterDelegate(title: '')),
          ]),
          const SliverToBoxAdapter(child: SizedBox(height: 10)),
        ]), // Section 1
        SliverMainAxisGroup(slivers: [
          SliverMainAxisGroup(slivers: [
            const SliverPinnedPersistentHeader(
              delegate: SliverHeaderDelegate(title: 'Section 2'),
            ),
            SliverPadding(
              padding: AppConfig.bodyPadding,
              sliver: _getDecoratedSliverList(10),
            ),
          ]),
          const SliverMainAxisGroup(slivers: [
            SliverPinnedPersistentFooter(delegate: SliverFooterDelegate(title: '')),
          ]),
          const SliverToBoxAdapter(child: SizedBox(height: 10)),
        ]), // Section 2
        SliverMainAxisGroup(slivers: [
          SliverMainAxisGroup(slivers: [
            const SliverPinnedPersistentHeader(
              delegate: SliverHeaderDelegate(title: 'Section 3'),
            ),
            SliverPadding(
              padding: AppConfig.bodyPadding,
              sliver: _getDecoratedSliverList(10),
            ),
          ]),
          const SliverMainAxisGroup(slivers: [
            SliverPinnedPersistentFooter(delegate: SliverFooterDelegate(title: '')),
          ]),
          const SliverToBoxAdapter(child: SizedBox(height: 10)),
        ]), //Section 3
        SliverCrossAxisGroup(slivers: [
          SliverMainAxisGroup(
            slivers: [
              SliverMainAxisGroup(slivers: [
                const SliverPinnedPersistentHeader(
                  delegate: SliverHeaderDelegate(title: 'Section 4'),
                ),
                SliverPadding(
                  padding: AppConfig.padding,
                  sliver: _getDecoratedSliverList(10),
                ),
              ]),
              const SliverMainAxisGroup(slivers: [
                SliverPinnedPersistentFooter(delegate: SliverFooterDelegate(title: '')),
              ]),
              const SliverToBoxAdapter(child: SizedBox(height: 10)),
            ],
          ), // Section 4
          SliverMainAxisGroup(slivers: [
            SliverMainAxisGroup(slivers: [
              const SliverPersistentHeader(
                pinned: true,
                delegate: SliverHeaderDelegate(title: 'Section 5'),
              ),
              SliverPadding(
                padding: AppConfig.padding,
                sliver: _getDecoratedSliverList(10),
              ),
            ]),
            const SliverMainAxisGroup(slivers: [
              SliverPinnedPersistentFooter(delegate: SliverFooterDelegate(title: '')),
            ]),
            const SliverToBoxAdapter(child: SizedBox(height: 10)),
          ]),
        ]), // Section 4 and 5
        SliverCrossAxisGroup(slivers: [
          SliverMainAxisGroup(slivers: [
            SliverMainAxisGroup(slivers: [
              const SliverPinnedPersistentHeader(
                delegate: SliverHeaderDelegate(title: 'Section 6'),
              ),
              SliverPadding(
                padding: AppConfig.padding,
                sliver: _getDecoratedSliverList(10),
              ),
            ]),
            const SliverMainAxisGroup(slivers: [
              SliverPinnedPersistentFooter(delegate: SliverFooterDelegate(title: '')),
            ]),
            const SliverToBoxAdapter(child: SizedBox(height: 10)),
          ]),
          SliverMainAxisGroup(slivers: [
            SliverMainAxisGroup(slivers: [
              const SliverPersistentHeader(
                pinned: true,
                delegate: SliverHeaderDelegate(title: 'Section 7'),
              ),
              SliverPadding(
                padding: AppConfig.padding,
                sliver: _getDecoratedSliverList(10),
              ),
            ]),
            const SliverMainAxisGroup(slivers: [
              SliverPinnedPersistentFooter(delegate: SliverFooterDelegate(title: '')),
            ]),
            const SliverToBoxAdapter(child: SizedBox(height: 10)),
          ]),
        ]), // Section 6 and 7
        SliverMainAxisGroup(slivers: [
          SliverMainAxisGroup(slivers: [
            const SliverPinnedPersistentHeader(
              delegate: SliverHeaderDelegate(title: 'Section 8'),
            ),
            SliverPadding(
              padding: AppConfig.bodyPadding,
              sliver: _getDecoratedSliverList(10),
            ),
          ]),
          const SliverMainAxisGroup(slivers: [
            SliverPinnedPersistentFooter(delegate: SliverFooterDelegate(title: '')),
          ]),
          const SliverToBoxAdapter(child: SizedBox(height: 10)),
        ]), // Section 8
        SliverMainAxisGroup(slivers: [
          SliverMainAxisGroup(slivers: [
            const SliverPersistentHeader(
              pinned: true,
              delegate: SliverHeaderDelegate(title: 'Section 9'),
            ),
            SliverPadding(
              padding: AppConfig.bodyPadding,
              sliver: _getDecoratedSliverList(10),
            ),
          ]),
          const SliverMainAxisGroup(slivers: [
            SliverPinnedPersistentFooter(delegate: SliverFooterDelegate(title: '')),
          ]),
          const SliverToBoxAdapter(child: SizedBox(height: 10)),
        ]), // Section 9
        SliverCrossAxisGroup(slivers: [
          SliverMainAxisGroup(slivers: [
            SliverMainAxisGroup(slivers: [
              const SliverPinnedPersistentHeader(
                delegate: SliverHeaderDelegate(title: 'Section 10'),
              ),
              SliverPadding(
                padding: AppConfig.padding,
                sliver: _getDecoratedSliverList(10),
              ),
            ]),
            const SliverMainAxisGroup(slivers: [
              SliverPinnedPersistentFooter(delegate: SliverFooterDelegate(title: '')),
            ]),
            const SliverToBoxAdapter(child: SizedBox(height: 10)),
          ]),
          SliverMainAxisGroup(slivers: [
            SliverMainAxisGroup(slivers: [
              const SliverPersistentHeader(
                pinned: true,
                delegate: SliverHeaderDelegate(title: 'Section 11'),
              ),
              SliverPadding(
                padding: AppConfig.padding,
                sliver: _getDecoratedSliverList(10),
              ),
            ]),
            const SliverMainAxisGroup(slivers: [
              SliverPinnedPersistentFooter(delegate: SliverFooterDelegate(title: '')),
            ]),
            const SliverToBoxAdapter(child: SizedBox(height: 10)),
          ]),
        ]), // Section 10 and 11
        SliverMainAxisGroup(slivers: [
          SliverMainAxisGroup(slivers: [
            const SliverPersistentHeader(
              pinned: true,
              delegate: SliverHeaderDelegate(title: 'Section 11'),
            ),
            SliverPadding(
              padding: AppConfig.bodyPadding,
              sliver: _getDecoratedSliverList(10),
            ),
          ]),
          const SliverMainAxisGroup(slivers: [
            SliverPinnedPersistentFooter(delegate: SliverFooterDelegate(title: '')),
          ]),
          const SliverToBoxAdapter(child: SizedBox(height: 10)),
        ]), // Section 12
      ],
    );
  }

  Widget _getDecoratedSliverList(int itemCount) {
    return DecoratedSliver(
      decoration: BoxDecoration(
        color: AppConfig.backgroundColor,
      ),
      sliver: SliverList.separated(
        itemBuilder: (_, int index) => Padding(
          padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
          child: index == 0 ? const SizedBox.shrink() : SizedBox(height: 20, child: Text('Item $index')),
        ),
        separatorBuilder: (_, __) => const Divider(
          indent: 8,
          endIndent: 8,
          thickness: 0.1,
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

  const SliverHeaderDelegate({required this.title, this.headerHeight = 50});
  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Padding(
      padding: AppConfig.bodyPadding,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)),
          color: AppConfig.backgroundColor,
        ),
        width: double.infinity,
        height: headerHeight,
        child: Center(
          child: Text(
            title,
            style: const TextStyle(fontSize: 20),
          ),
        ),
      ),
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

class SliverPinnedPersistentFooter extends SliverPersistentHeader {
  const SliverPinnedPersistentFooter({super.key, required super.delegate});
  @override
  bool get pinned => true;
}

class SliverFooterDelegate extends SliverPersistentHeaderDelegate {
  final String title;
  final double headerHeight;

  const SliverFooterDelegate({required this.title, this.headerHeight = 50});
  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Padding(
      padding: AppConfig.bodyPadding,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20)),
          color: AppConfig.backgroundColor,
        ),
        width: double.infinity,
        height: headerHeight,
        child: Center(
          child: Text(title),
        ),
      ),
    );
  }

  @override
  double get maxExtent => minExtent;

  @override
  double get minExtent => 10;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}