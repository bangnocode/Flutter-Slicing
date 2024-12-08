import 'package:basic_widget/basic_widget/bw_row.dart';
import 'package:flutter/material.dart';

// BASIC WIDGET
import 'basic_widget/bw_scaffold.dart';
import 'basic_widget/bw_appbar.dart';
import 'basic_widget/bw_container.dart';
import 'basic_widget/bw_column.dart';
import 'basic_widget/bw_text.dart';
import 'basic_widget/bw_icon.dart';
import 'basic_widget/bw_button.dart';
import 'basic_widget/bw_image.dart';
import 'basic_widget/bw_circleAvatar.dart';

// LAYOUT
import 'layout/ly_aspecRatio.dart';
import 'layout/ly_center.dart';
import 'layout/ly_expanded.dart';
import 'layout/ly_gridview.dart';
import 'layout/ly_listview.dart';
import 'layout/ly_padding.dart';
import 'layout/ly_sizedBox.dart';
import 'layout/ly_stack.dart';
import 'layout/ly_wrap.dart';

// FORM
import 'form/f_form.dart';

// NAVIGATOR
import 'navigator/nv_popPush.dart';
import 'navigator/nv_bottomNavbar.dart';
import 'navigator/nv_tabBar.dart';
import 'navigator/nv_drawer.dart';
import 'navigator/nv_silverAppBar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Praktek Flutter Fachrezy',
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: NvTabbar(),
    );
  }
}