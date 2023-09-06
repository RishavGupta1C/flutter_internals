import 'package:flutter/material.dart';
import 'package:flutter_internals/demo_buttons.dart';

class UIUpdatesDemo extends StatelessWidget {
  const UIUpdatesDemo({Key? key}) : super(key: key);

  // NOT NEEDED TO OVERRIDE THIS METHOD
  // CREATED TO SHOW ELEMENT IS CREATED BEFORE BUILD METHOD
  // FLUTTER CREATES ELEMENTS FOR EVERY WIDGET
//   @override
//   StatefulElement createElement() {
//     print('UIUpdatesDemo CREATEELEMENT called');
//     return super.createElement();
//   }

//   @override
//   State<UIUpdatesDemo> createState() {
//     return _UIUpdatesDemo();
//   }
// }

// class _UIUpdatesDemo extends State<UIUpdatesDemo> {

// ONLY DemoButtons BUILD is called and not UIUpdatesDemo BUILD
// on clicking on yes and no, which means flutter did not look into UIUpdateDemo Build method
// and checked for the differences and UI update as the update was only needed on the Column
// So we separated the column into a demo_buttons.dart.
// So we should keep our StatefulWidhet as small as possible to improve performance.
// We should only keep that part in StatefulWidget whose state is going to change.
  @override
  Widget build(BuildContext context) {
    print('UIUpdatesDemo BUILD called');
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            Text(
              'Every Flutter developer should have a basic understanding of Flutter\'s internals!',
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Text(
              'Do you understand how Flutter updates UIs?',
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 24),
            DemoButtons(),
          ],
        ),
      ),
    );
  }
}
