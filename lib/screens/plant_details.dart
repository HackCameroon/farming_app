import 'package:farming_app/screens/post_page.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class PlantDetails extends StatefulWidget {
  @override
  _PlantDetailsState createState() => _PlantDetailsState();
}

class _PlantDetailsState extends State<PlantDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.withOpacity(0.9),
      body: ConstrainedBox(
        constraints: BoxConstraints(
          minHeight: MediaQuery.of(context).size.height
        ),
        child: Column(
        children: [
          Stack(
            children: [
              Container(
                 child: Image.asset("assets/img/tomatoes.jpeg",
                 fit: BoxFit.cover,),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                      onTap: () => Navigator.pop(context),
                      child: Padding(
                          padding: EdgeInsets.all(2.0),
                          child: const Icon(Icons.arrow_back))),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: Card(
                          elevation: 15,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(Icons.not_interested, size: 30,
                            color: Colors.red,),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),

            ],
          ),

          Expanded(
            child: Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  alignment: Alignment.bottomCenter,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Text('The Good Stuff',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 40
                          ),),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Text('Cannabacaeae',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              color: Colors.black.withOpacity(0.8), fontSize: 26, fontWeight: FontWeight.w100
                          ),),
                      ),
                      SizedBox(height: 15,)
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8),
                ),
                Container(
                  height: 1,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                      )
                  ),
                  width: MediaQuery.of(context).size.width,
                ),
                SizedBox(
                  height: 0,
                ),
                Container(
                  child: CircularPercentIndicator(
                    radius: 200,
                    lineWidth: 20,
                    animation: true,
                    percent: 0.8,
                    center: Icon(Icons.check_circle,
                      color: Colors.green,
                      size: 100,),
                    circularStrokeCap: CircularStrokeCap.round,
                    progressColor: Colors.green,
                  ),
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Test'),
                  ),
                ),
                SizedBox(width: 100,),
                Expanded(child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Text('Yo yo yo what is up my dudes I am back here again with another fresh shipment of your favorite snack. Get your fill here!)',
                  ),
                ),
                ),
                GestureDetector(
                  onTap: () => print('go to post page'),
                  child: Padding(
                    padding:
                    const EdgeInsets.all(9),
                    child: Material(
                        borderRadius: BorderRadius.circular(15.0),
                        color: Colors.white,
                        elevation: 0.0,
                        child: MaterialButton(
                          onPressed: () {},
                          minWidth: MediaQuery.of(context).size.width,
                          child: Text(
                            "Harvest and Sell",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0
                            ),
                          ),
                        )),
                  ),
                ),
              ],
            ),
          )
        ],
        ),
      ),

    );
  }
}
