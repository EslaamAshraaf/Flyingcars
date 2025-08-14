import 'package:carshop/Ui/HomePageScreen/Tabs/Edite_Profile.dart';
import 'package:flutter/material.dart';

import '../../Auth/Loginscreen.dart';

class Profile extends StatelessWidget {
  static const String routeName = "MyProfile";

  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFf7f7fa),
        body: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: CircleAvatar(radius: 30, child: Icon(Icons.person)),
                  ),
                  SizedBox(width: 10),
                  Column(
                    children: [
                      Text(
                        "User Name",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      Text(
                        "Edit Profile",
                        style: TextStyle(color: Colors.blue, fontSize: 12),
                      ),
                    ],
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.edit, color: Colors.blue),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Divider(height: 2, indent: 15, endIndent: 15),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  spacing: 10,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Container(
                        height: 130,

                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.credit_card,
                                  color: Colors.blue,
                                ),
                              ),
                            ),
                            Text("License", style: TextStyle(fontSize: 16)),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 130,

                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.book, color: Colors.blue),
                              ),
                            ),
                            Text("Passport ", style: TextStyle(fontSize: 16)),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 130,

                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.description,
                                  color: Colors.blue,
                                ),
                              ),
                            ),
                            Text("Contact", style: TextStyle(fontSize: 16)),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              ListTile(
                leading: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Color(0xFFE7E9F4),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Icon(Icons.person_2_outlined, color: Colors.black),
                ),
                title: Text(
                  "My Profile",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  size: 16,
                  color: Colors.grey,
                ),
                onTap: () {},
              ),
              SizedBox(height: 15),
              ListTile(
                leading: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Color(0xFFE7E9F4),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Icon(Icons.calendar_today, color: Colors.black),
                ),
                title: Text(
                  "My Bookings",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  size: 16,
                  color: Colors.grey,
                ),
                onTap: () {},
              ),
              SizedBox(height: 15),
              ListTile(
                leading: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Color(0xFFE7E9F4),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Icon(Icons.settings_outlined, color: Colors.black),
                ),
                title: Text(
                  "My Settings",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  size: 16,
                  color: Colors.grey,
                ),
                onTap: () {
                  Navigator.pushNamed(context,EditeProfile.routeName );
                },
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: ListTile(
                  leading: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Color(0xFFE7E9F4),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: IconButton(
                      onPressed: () {
                        Navigator.pushReplacementNamed(
                          context,
                          LoginScreen.routename,
                        );
                      },
                      icon: Icon(Icons.logout),
                    ),
                  ),
                  title: Text(
                    "Logout",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),

                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
