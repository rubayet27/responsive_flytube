import 'package:flutter/material.dart';

class ContentPage extends StatefulWidget {
  State<StatefulWidget> createState() {
    return _ContentPage();
  }
}

class _ContentPage extends State<ContentPage> {
  @override
  Widget build(BuildContext context) {
    double wid = MediaQuery.of(context).size.width;
    return Expanded(
      child: Container(
        child: GridView.builder(
          itemCount: 20,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: wid < 900
                ? 1
                : wid < 1100
                    ? 2
                    : wid < 1400
                        ? 3
                        : wid < 1700
                            ? 4
                            : 5,
            childAspectRatio: wid < 900 ? 200 / 100 : 200 / 200,
          ),
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(12.0),
              child: SizedBox(
                height: 200,
                width: 200,
                child: Column(
                  children: [
                    Flexible(
                      flex: 4,
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15),
                            topRight: Radius.circular(15),
                          ),
                        ),
                        child: Center(
                          child: Text(wid.toString()),
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(15),
                            bottomRight: Radius.circular(15),
                          ),
                        ),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 10, top: 5),
                                child: Text("The video Number is ${index + 1}"),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: IconButton(
                                  icon: const Icon(Icons.more_vert),
                                  onPressed: () {},
                                  splashRadius: 0.2,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
