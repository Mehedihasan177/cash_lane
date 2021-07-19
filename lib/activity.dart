import 'package:flutter/material.dart';

import 'model/activityinformationlist.dart';
import 'model/activityinformations.dart';

class Activity extends StatefulWidget {
  const Activity({Key? key}) : super(key: key);

  @override
  _ActivityState createState() => _ActivityState();
}

class _ActivityState extends State<Activity> {
  List<ActivityInformation> items = List.of(allinformations);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(left: 30),
                height: 100,
                color: Colors.white.withOpacity(0.5),
                child: Row(
                  children: [
                    Text(
                      "Activity",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 130,
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.search,
                        color: Colors.black,
                        size: 33,
                      ),
                      onPressed: () {
                        // do something
                      },
                    ),
                    IconButton(
                      icon: Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 3),
                            borderRadius: BorderRadius.circular(100)),
                        child: Icon(
                          Icons.person_rounded,
                          color: Colors.black,
                        ),
                      ),
                      onPressed: () {
                        // do something
                      },
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                child: Container(
                  height: 200,
                  //padding: EdgeInsets.only(top: 50),
                  child: ListView.builder(
                      itemCount: items.length,
                      itemBuilder: (context, index) {
                        final item = items[index];
                        return buildListTile(item);
                      }),
                ),
              ),
              SizedBox(
                height: 20,
              ),
                 Container(
                   alignment: Alignment.center,
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Color(0xfff9A825)
                  ),
                  child: Center(child: FlatButton(onPressed: () {}, child: Icon(Icons.add, size: 30,color: Colors.white,)))
                  ),
              SizedBox(height: 20),
              Text("Invite friends, Get \$15!", style: TextStyle(fontSize: 20),)
            ],
          ),
        ),
      ),
    );
  }
}

Widget buildListTile(ActivityInformation item) => SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: 70,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white.withOpacity(0.6),
            ),

            child: ListTile(
              leading: CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage(
                  item.image,
                ),
              ),

              title: Container(
                alignment: Alignment.centerLeft,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      item.name,
                      style: TextStyle(fontSize: 18, color: Colors.black),
                    ),
                    Text(
                      item.workwise,
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    ),
                  ],
                ),
              ),

              //subtitle: Text(item.experience,style: TextStyle(color: Colors.black),),

              onTap: () {
                //Get.to(DoctorAppointment());
              },
            ),
          ),
        ],
      ),
    );
