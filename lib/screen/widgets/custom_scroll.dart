import 'package:flutter/material.dart';

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
            SliverPinnedPersistentHeader(
              delegate: SliverHeaderDelegate(title: 'Section 1', backgroundColor: backgroundColor),
            ),
            SliverPadding(
              padding: const EdgeInsets.only(left: 6, right: 6),
              sliver: _getDecoratedSliverList(10),
            ),
            const SliverPadding(
              padding: EdgeInsets.only(left: 6, right: 6),
              sliver: SliverToBoxAdapter(
                  child: Divider(
                height: 1,
                thickness: 0.5,
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
            SliverPinnedPersistentHeader(
              delegate: SliverHeaderDelegate(title: 'Section 2', backgroundColor: backgroundColor),
            ),
            SliverPadding(
              padding: const EdgeInsets.only(left: 6, right: 6),
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
            SliverPinnedPersistentHeader(
              delegate: SliverHeaderDelegate(title: 'Section 3', backgroundColor: backgroundColor),
            ),
            SliverPadding(
              padding: const EdgeInsets.only(left: 6, right: 6),
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
                SliverPinnedPersistentHeader(
                  delegate: SliverHeaderDelegate(title: 'Section 4', backgroundColor: backgroundColor),
                ),
                SliverPadding(
                  padding: const EdgeInsets.only(left: 6, right: 6),
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
              SliverPersistentHeader(
                pinned: true,
                delegate: SliverHeaderDelegate(title: 'Section 5', backgroundColor: backgroundColor),
              ),
              SliverPadding(
                padding: const EdgeInsets.only(left: 6, right: 6),
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
              SliverPinnedPersistentHeader(
                delegate: SliverHeaderDelegate(title: 'Section 6', backgroundColor: backgroundColor),
              ),
              SliverPadding(
                padding: const EdgeInsets.only(left: 6, right: 6),
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
              SliverPersistentHeader(
                pinned: true,
                delegate: SliverHeaderDelegate(title: 'Section 7', backgroundColor: backgroundColor),
              ),
              SliverPadding(
                padding: const EdgeInsets.only(left: 6, right: 6),
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
            SliverPinnedPersistentHeader(
              delegate: SliverHeaderDelegate(title: 'Section 8', backgroundColor: backgroundColor),
            ),
            SliverPadding(
              padding: const EdgeInsets.only(left: 6, right: 6),
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
            SliverPersistentHeader(
              pinned: true,
              delegate: SliverHeaderDelegate(title: 'Section 9', backgroundColor: backgroundColor),
            ),
            SliverPadding(
              padding: const EdgeInsets.only(left: 6, right: 6),
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
              SliverPinnedPersistentHeader(
                delegate: SliverHeaderDelegate(title: 'Section 10', backgroundColor: backgroundColor),
              ),
              SliverPadding(
                padding: const EdgeInsets.only(left: 6, right: 6),
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
              SliverPersistentHeader(
                pinned: true,
                delegate: SliverHeaderDelegate(title: 'Section 11', backgroundColor: backgroundColor),
              ),
              SliverPadding(
                padding: const EdgeInsets.only(left: 6, right: 6),
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
            SliverPersistentHeader(
              pinned: true,
              delegate: SliverHeaderDelegate(title: 'Section 11', backgroundColor: backgroundColor),
            ),
            SliverPadding(
              padding: const EdgeInsets.only(left: 6, right: 6),
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
        color: Colors.grey.shade200.withOpacity(0.1),
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
  const SliverHeaderDelegate({required this.title, this.headerHeight = 50, this.backgroundColor = Colors.transparent});
  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Stack(
      fit: StackFit.expand,
      children: [
        DecoratedBox(
          decoration: BoxDecoration(
            color: backgroundColor,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 6, right: 6),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)),
              color: Colors.grey.shade200.withOpacity(0.1),
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

class SliverPinnedPersistentFooter extends SliverPersistentHeader {
  const SliverPinnedPersistentFooter({super.key, required super.delegate});
  @override
  bool get pinned => true;
}

class SliverFooterDelegate extends SliverPersistentHeaderDelegate {
  final String title;
  final double headerHeight;
  final Color backgroundColor;
  const SliverFooterDelegate({required this.title, this.headerHeight = 50, this.backgroundColor = Colors.transparent});
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
              borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20)),
              color: Colors.grey.shade200.withOpacity(0.1),
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
  double get minExtent => 10;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}