import 'package:flutter/material.dart';

class Money_withdraw_Request extends StatefulWidget {
  const Money_withdraw_Request({Key? key}) : super(key: key);

  @override
  _Money_withdraw_RequestState createState() => _Money_withdraw_RequestState();
}

class _Money_withdraw_RequestState extends State<Money_withdraw_Request> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.only(left: 10),
            child: Text(
              "Money Withdraw Request",
              style: TextStyle(fontSize: 30),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                Icons.person_rounded,
                size: 35,
                color: Color(0xfff9A825),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.08,
                width: MediaQuery.of(context).size.width * 0.8,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  border: Border.all(color: Colors.yellow)
                ),
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  style: TextStyle(color: Colors.black),
                  scrollPadding: EdgeInsets.all(10),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(20),
                    border: InputBorder.none,
                    hintText: "User Name",
                    hintStyle: TextStyle(
                      fontSize: 16,
                      color: Colors.black.withOpacity(0.4),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                Icons.paid,
                size: 35,
                color: Color(0xfff9A825),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.08,
                width: MediaQuery.of(context).size.width * 0.8,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    border: Border.all(color: Colors.yellow)
                ),
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  style: TextStyle(color: Colors.black),
                  scrollPadding: EdgeInsets.all(10),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(20),
                    border: InputBorder.none,
                    hintText: "Transaction ID",
                    hintStyle: TextStyle(
                      fontSize: 16,
                      color: Colors.black.withOpacity(0.4),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                Icons.monetization_on_outlined,
                size: 35,
                color: Color(0xfff9A825),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.08,
                width: MediaQuery.of(context).size.width * 0.8,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    border: Border.all(color: Colors.yellow)
                ),
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  style: TextStyle(color: Colors.black),
                  scrollPadding: EdgeInsets.all(10),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(20),
                    border: InputBorder.none,
                    hintText: "Amount",
                    hintStyle: TextStyle(
                      fontSize: 16,
                      color: Colors.black.withOpacity(0.4),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                Icons.date_range,
                size: 35,
                color: Color(0xfff9A825),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.08,
                width: MediaQuery.of(context).size.width * 0.8,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    border: Border.all(color: Colors.yellow)
                ),
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  style: TextStyle(color: Colors.black),
                  scrollPadding: EdgeInsets.all(10),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(20),
                    border: InputBorder.none,
                    hintText: "Withdraw Date",
                    hintStyle: TextStyle(
                      fontSize: 16,
                      color: Colors.black.withOpacity(0.4),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20,),
          Container(
            height: MediaQuery.of(context).size.height * 0.08,
            width: MediaQuery.of(context).size.width * 0.6,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(18),
            ),
            child: Center(
              child: TextField(
                obscureText: true,
                keyboardType: TextInputType.text,
                style: TextStyle(color: Colors.black),
                scrollPadding: EdgeInsets.all(10),
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(20),
                  border: InputBorder.none,
                  hintText: "Varification Code",
                  prefixIcon: Icon(
                    Icons.vpn_key_outlined,
                    size: 18,
                    color: Colors.red,
                  ),
                  hintStyle: TextStyle(
                    fontSize: 15,
                    color: Colors.black87.withOpacity(0.3),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 20,),
          Container(
            height: MediaQuery.of(context).size.height * 0.07,
            width: MediaQuery.of(context).size.width * 0.6,
            //color: Color(0xF60D72),
            child: ElevatedButton(
              child: Text(
                "Request",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              onPressed: () {
                //Get.to(BottomNevigation());
              },
              style: ElevatedButton.styleFrom(
                primary: Color(0xfff9A825),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18)),
              ),
            ),
            decoration: BoxDecoration(
              //color: Color(0xF60D72),
                borderRadius: BorderRadius.circular(18)),
          ),
        ],
      ),
    );
  }
}
