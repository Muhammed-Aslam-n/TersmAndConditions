import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:termandconditions/productspage.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class AgreementPage extends StatelessWidget {
  const AgreementPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var times=1;
     createAlert(){
      return Alert(context: context,title:"Notice",
      desc: "By Continuing you Agree with our Terms & Conditions",
        closeIcon: Icon(Icons.ac_unit_outlined),
        buttons: [
          DialogButton(child: Text("Continue"), onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => ProductPage()));})
        ]
      ).show();
    }
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(color: Color.fromARGB(255, 9, 87, 102)),
        child: ListView(
          children: <Widget>[
            const SizedBox(
              height: 50,
            ),
            Container(
              margin: const EdgeInsets.all(20),
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: const Color.fromRGBO(246, 246, 246, 1),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 5,
                  ),
                  const Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Terms and Conditions ",
                      style: TextStyle(color: Color.fromARGB(255, 9, 87, 102),
                          fontWeight: FontWeight.w800,
                          fontSize: 22,fontFamily:'Dosis_medium'),
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Container(
                    margin: const EdgeInsets.all(20),
                    child: const Center(
                      child: Text(
                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages",
                        style: TextStyle(
                            height: 1.8, fontStyle: FontStyle.italic,fontFamily: 'Dosis_light'),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      print("Continue CLicked $times");
                      times++;
                      createAlert();
                    },
                    child: const Text("Continue"),
                    style: ElevatedButton.styleFrom(
                        primary: const Color.fromARGB(255, 9, 87, 102),
                        fixedSize: const Size(200, 50)),
                  ),
                  const SizedBox(
                    height: 30,
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

