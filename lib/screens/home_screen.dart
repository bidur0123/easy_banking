import 'package:easy_banking/Send%20Money/send_money.dart';
import 'package:flutter/material.dart';
import 'package:easy_banking/constants/app_textstyle.dart';
import 'package:easy_banking/constants/color_constants.dart';
import 'package:easy_banking/data/card_data.dart';
import 'package:easy_banking/data/transaction_data.dart';
import 'package:easy_banking/widgets/my_card.dart';
import 'package:easy_banking/widgets/transaction_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          "Easy Banking",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontFamily: "Poppins",
            color: kPrimaryColor,
          ),
        ),
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundImage:
                AssetImage("assets/icons/avatar1.png")
          ),
        ),
        actions: [
          IconButton(
              icon: Icon(
                Icons.notifications_active_outlined,
                color: Colors.black,
                size: 27,
              ),
              onPressed: () {})
        ],
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("My Bank Account" , style: ApptextStyle.BODY_TEXT,),
              SizedBox(height: 20.0),
              Container(
                height: 200,
                child: ListView.separated(
                    physics: ClampingScrollPhysics(),
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        width: 10,
                      );
                    },
                    itemCount: myCards.length,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return MyCard(
                        card: myCards[index],
                      );
                    }),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                "Other Operation",
                style: ApptextStyle.BODY_TEXT,
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> SendMoney()));
                    },
                    child: Card(
                      child: Container(
                        height: 50.0,
                        width: 130.0,
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          border: Border.all(
                            color: kPrimaryColor,
                          ),
                        ),
                        child: Row(
                          children: [
                            Container(
                                margin: const EdgeInsets.all(8.0),
                                child: Image.asset("assets/icons/next.png")),
                            Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.all(5.0),
                                  child: Column(
                                    children: const [
                                      Text("Send" , style: TextStyle(fontSize: 16 , color: kPrimaryColor, fontWeight: FontWeight.bold)),
                                      Text("Money" , style: TextStyle(fontSize: 16 , color: kPrimaryColor , fontWeight: FontWeight.bold)),
                                    ],
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 30.0,
                  ),
                  InkWell(
                    onTap: (){},
                    child: Card(
                      child: Container(
                        height: 50.0,
                        width: 130.0,
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          border: Border.all(
                            color: kPrimaryColor,
                          ),
                        ),
                        child: Row(
                          children: [
                            Container(
                                margin: EdgeInsets.all(8.0),
                                child: Image.asset("assets/icons/previous.png")),
                            Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.all(5.0),
                                  child: Column(
                                    children: [
                                      Text("Receive" , style: TextStyle(fontSize: 16 , color: kPrimaryColor, fontWeight: FontWeight.bold)),
                                      Text("Money" , style: TextStyle(fontSize: 16 , color: kPrimaryColor , fontWeight: FontWeight.bold)),
                                    ],
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
