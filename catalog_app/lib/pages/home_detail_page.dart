import 'package:catalog_app/models/catalog.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeDetailPage extends StatelessWidget {
  final Item catalog;
  const HomeDetailPage({
    Key? key,
    required this.catalog,
  })  : assert(catalog != null),
        super(key: key);

  get static => null;

  @override
  Widget build(BuildContext context) {
    final Color darkBluishColor = Color(0xff403b58);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff403b58),
      ),
      backgroundColor: Color(0xfff5f5f5),
      bottomNavigationBar: ButtonBar(
        alignment: MainAxisAlignment.spaceBetween,
        children: [
          "\$${catalog.price}".text.bold.xl4.make(),
          ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(darkBluishColor),
                      shape: MaterialStateProperty.all(StadiumBorder())),
                  child: "Add to cart".text.make())
              .wh(120, 50)
        ],
      ).p4(),
      body: SafeArea(
        bottom: false,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Hero(
                tag: Key(catalog.id.toString()),
                child: Image.network(
                  catalog.image,
                  alignment: Alignment.center,
                )).h32(context),
            Expanded(
                child: VxArc(
              height: 30,
              arcType: VxArcType.CONVEY,
              edge: VxEdge.TOP,
              child: Container(
                color: Colors.white,
                width: context.screenWidth,
                child: Column(
                  children: [
                    catalog.name.text.xl4.color(darkBluishColor).bold.make(),
                    catalog.desc.text.make(),
                    10.heightBox,
                    "Kasd ea et duo duo clita duo et, eos amet nonumy diam invidunt sed magna, sea et takimata ipsum nonumy."
                        .text
                        .make()
                        .p16()
                  ],
                ).py64(),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
