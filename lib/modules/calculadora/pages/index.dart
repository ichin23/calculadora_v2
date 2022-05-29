import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController contaCtrl = TextEditingController();
  String contaStr = "";
  String result = "";

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    var buttonStyle = ButtonStyle(
        textStyle: MaterialStateProperty.all(TextStyle(fontSize: 40)),
        backgroundColor:
            MaterialStateProperty.all(Theme.of(context).primaryColor),
        shape: MaterialStateProperty.all(RoundedRectangleBorder(
            borderRadius: BorderRadius.circular((width / 2) / 3))));
    return Scaffold(
        appBar: AppBar(
            toolbarHeight: 50,
            title: Row(
              children: const [
                Icon(Icons.calculate),
                Padding(
                    padding: EdgeInsets.only(left: 30),
                    child: Text("Calculadora v2"))
              ],
            )),
        body: SizedBox(
          width: width,
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Container(
                padding: const EdgeInsets.only(top: 10, left: 10),
                height: height,
                width: width / 2 - 70,
                child: GridView(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10),
                  children: [
                    TextButton(
                        style: buttonStyle,
                        onPressed: () {
                          setState(() {
                            contaStr += 6.toString();
                          });
                          contaCtrl.text = contaStr;
                        },
                        child: Text("6",
                            style:
                                TextStyle(color: Colors.white, fontSize: 40))),
                    TextButton(
                        style: buttonStyle,
                        onPressed: () {
                          setState(() {
                            contaStr += 7.toString();
                          });
                          contaCtrl.text = contaStr;
                        },
                        child: Text("7",
                            style:
                                TextStyle(color: Colors.white, fontSize: 40))),
                    TextButton(
                        style: buttonStyle,
                        onPressed: () {
                          setState(() {
                            contaStr += 8.toString();
                          });
                          contaCtrl.text = contaStr;
                        },
                        child: Text("8",
                            style:
                                TextStyle(color: Colors.white, fontSize: 40))),
                    TextButton(
                        style: buttonStyle,
                        onPressed: () {
                          setState(() {
                            contaStr += 9.toString();
                          });
                          contaCtrl.text = contaStr;
                        },
                        child: Text("9",
                            style:
                                TextStyle(color: Colors.white, fontSize: 40))),
                    TextButton(
                        style: buttonStyle,
                        onPressed: () {
                          setState(() {
                            contaStr += 2.toString();
                          });
                          contaCtrl.text = contaStr;
                        },
                        child: Text("2",
                            style:
                                TextStyle(color: Colors.white, fontSize: 40))),
                    TextButton(
                        style: buttonStyle,
                        onPressed: () {
                          setState(() {
                            contaStr += 3.toString();
                          });
                          contaCtrl.text = contaStr;
                        },
                        child: Text("3",
                            style:
                                TextStyle(color: Colors.white, fontSize: 40))),
                    TextButton(
                        style: buttonStyle,
                        onPressed: () {
                          setState(() {
                            contaStr += 4.toString();
                          });
                          contaCtrl.text = contaStr;
                        },
                        child: Text("4",
                            style:
                                TextStyle(color: Colors.white, fontSize: 40))),
                    TextButton(
                        style: buttonStyle,
                        onPressed: () {
                          setState(() {
                            contaStr += 5.toString();
                          });
                          contaCtrl.text = contaStr;
                        },
                        child: Text("5",
                            style:
                                TextStyle(color: Colors.white, fontSize: 40))),
                    TextButton(
                        style: buttonStyle,
                        onPressed: () {
                          setState(() {
                            contaStr += 1.toString();
                          });
                          contaCtrl.text = contaStr;
                        },
                        child: Text("1",
                            style:
                                TextStyle(color: Colors.white, fontSize: 40))),
                    TextButton(
                        style: buttonStyle,
                        onPressed: () {
                          setState(() {
                            contaStr += 0.toString();
                          });
                          contaCtrl.text = contaStr;
                        },
                        child: Text("0",
                            style:
                                TextStyle(color: Colors.white, fontSize: 40))),
                    TextButton(
                        style: buttonStyle,
                        onPressed: () {
                          setState(() {
                            contaStr += ",";
                          });
                          contaCtrl.text = contaStr;
                        },
                        child: Text(",",
                            style:
                                TextStyle(color: Colors.white, fontSize: 40))),
                    TextButton(
                        style: buttonStyle,
                        onPressed: () {
                          contaStr = contaStr.replaceAll(",", ".");
                          if (contaStr.contains("/")) {
                            var nums = contaStr.split("/");
                            result =
                                (double.parse(nums[0]) / double.parse(nums[1]))
                                    .toString();
                            contaCtrl.text = result;
                          } else if (contaStr.contains("X")) {
                            var nums = contaStr.split("X");
                            result =
                                (double.parse(nums[0]) * double.parse(nums[1]))
                                    .toString();
                            contaCtrl.text = result;
                          } else if (contaStr.contains("+")) {
                            var nums = contaStr.split("+");
                            result =
                                (double.parse(nums[0]) + double.parse(nums[1]))
                                    .toString();
                            contaCtrl.text = result;
                          } else if (contaStr.contains("-")) {
                            var nums = contaStr.split("-");
                            result =
                                (double.parse(nums[0]) - double.parse(nums[1]))
                                    .toString();
                            contaCtrl.text = result;
                          }
                          setState(() {});
                        },
                        child: Text("=",
                            style:
                                TextStyle(color: Colors.white, fontSize: 40))),
                    TextButton(
                        style: buttonStyle,
                        onPressed: () {
                          setState(() {
                            contaStr += "+";
                          });
                          contaCtrl.text = contaStr;
                        },
                        child: Text("+",
                            style:
                                TextStyle(color: Colors.white, fontSize: 40))),
                    TextButton(
                        style: buttonStyle,
                        onPressed: () {
                          setState(() {
                            contaStr += "-";
                          });
                          contaCtrl.text = contaStr;
                        },
                        child: Text("-",
                            style:
                                TextStyle(color: Colors.white, fontSize: 40))),
                    TextButton(
                        style: buttonStyle,
                        onPressed: () {
                          setState(() {
                            contaStr += "X";
                          });
                          contaCtrl.text = contaStr;
                        },
                        child: Text("X",
                            style:
                                TextStyle(color: Colors.white, fontSize: 40))),
                    TextButton(
                        style: buttonStyle,
                        onPressed: () {
                          setState(() {
                            contaStr += "/";
                          });
                          contaCtrl.text = contaStr;
                        },
                        child: Text("/",
                            style:
                                TextStyle(color: Colors.white, fontSize: 40))),
                  ],
                )),
            Container(
                padding: const EdgeInsets.only(top: 10, right: 10),
                height: height - 80,
                width: width / 2,
                child: Column(
                  children: [
                    Container(
                      width: width / 2,
                      // height: height - 80,
                      child: Row(children: [
                        Container(
                          width: width / 2 - 50,
                          child: TextFormField(
                            controller: contaCtrl,
                            readOnly: true,
                          ),
                        ),
                        IconButton(
                            onPressed: () {
                              contaStr = contaStr.replaceRange(
                                  contaStr.length - 1, null, "");
                              print(contaStr);
                              contaCtrl.text = contaStr;
                            },
                            icon: Icon(Icons.backspace))
                      ]),
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          result,
                          style: TextStyle(fontSize: 80),
                        ),
                        TextButton(
                          onPressed: () {
                            contaStr = "";
                            result = contaStr;
                            contaCtrl.text = result;
                            setState(() {});
                          },
                          child: Text(
                            "CE",
                            style: TextStyle(fontSize: 40, color: Colors.white),
                          ),
                          style: buttonStyle,
                        ),
                      ],
                    )
                  ],
                ))
          ]),
        ));
  }
}
