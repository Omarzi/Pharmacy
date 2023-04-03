import 'package:flutter/material.dart';
import 'package:pharmazool/app/patient/home/presentation/screens/bottom_screens/barcode.dart';

import '../../../../../core/utils/assets_images_path.dart';

class FloatingBotton extends StatelessWidget {
  const FloatingBotton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => BarCode()));
      },
      child: Image.asset(
        // cacheHeight: 20,
        scan,
        color: Colors.black,
        fit: BoxFit.scaleDown,
      ),
    );
  }
}
