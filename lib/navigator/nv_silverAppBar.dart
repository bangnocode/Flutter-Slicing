import 'package:flutter/material.dart';

class NvSilverappbar extends StatelessWidget {
  const NvSilverappbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            snap: false, 
            floating: true, 
            expandedHeight: 200.0, 
            flexibleSpace: const FlexibleSpaceBar(
              title: Text('Praktek Silver App Bar'),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return Container(
                  color: index.isOdd ? Colors.white : Colors.blue[200],
                  height: 100,
                  child: Center(
                    child: Text(
                      '$index',
                      textScaleFactor: 5,
                    ),
                  ),
                );
              },
              childCount: 10,
            ),
          ),
        ],
      ),
    );
  }
}
