import 'package:dine/utils/app_layout.dart';
import 'package:dine/utils/app_styles.dart';
import 'package:dine/widgets/thick_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Ticketview extends StatelessWidget {
  const Ticketview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size=AppLayout.getSize(context);
    return SizedBox(
      width: size.width,
      height: 200,
      child: Container(
        margin: const EdgeInsets.all(16),
        child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                color: Color(0xff526799),
                borderRadius: BorderRadius.only(topLeft: Radius.circular(21),topRight: Radius.circular(21))
              ),
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text("NYC",style: Styles.headLineStyle3.copyWith(color: Colors.white)),
                      Expanded(child: Container()),
                      const ThickContainer(),
                      Expanded(child:
                      Stack(
                        children: [
                          SizedBox(
                            height: 24,
                            child: LayoutBuilder(
                              builder: (BuildContext context, BoxConstraints constraints) {
                                print("The width is ${constraints.constrainWidth()}");
                                return Flex(
                                  direction: Axis.horizontal,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  mainAxisSize: MainAxisSize.max,
                                  children: List.generate((constraints.constrainWidth()/6).floor(),
                                          (index) => const SizedBox(
                                        width: 3,
                                        height: 1,
                                        child:
                                        DecoratedBox(
                                          decoration: BoxDecoration(color: Colors.white),
                                        ),
                                      )),

                                );
                              },
                            ),
                          ),
                          Center(child: Transform.rotate(angle: 1.5,child: const Icon(Icons.local_airport_rounded,color: Colors.white,),)),
                        ],
                      )),
                      const ThickContainer(),
                      Expanded(child: Container()),
                      Text("London",style: Styles.headLineStyle3.copyWith(color: Colors.white))

                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 100,
                        child: Text("NewYork",style: Styles.headLineStyle4,),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
