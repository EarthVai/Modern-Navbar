import 'package:flutter/material.dart';
import 'package:modern_navbar/components/profile_img.dart';
import 'package:modern_navbar/components/profile_menu.dart';
import 'package:modern_navbar/constant/constant.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_back_ios,
          size: 24,
          color: iconSecondaryColor,
        ),
        title: Center(
            child: Text(
          'Profile',
          style: textTitle,
        )),
        actions: const [
          Icon(
            Icons.light_mode,
            size: 24,
            color: iconSecondaryColor,
          ),
          SizedBox(
            width: 20,
          ),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Center(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 20,
              ),
              //Image Profile
              const ProfileImage(),
        
              // Detail Profile
              const SizedBox(
                height: 10,
              ),
              Text(
                'Pinkie',
                style: textTitle,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                's6507012660061@email.kmutnb.ac.th',
                style: textSubtitle,
              ),
              const SizedBox(
                height: 10,
              ),
        
              //Button Edit
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 200,
                height: 35,
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(25.0)),
                  child: Center(
                      child: Text(
                    'Edit Profile',
                    style: textBtn,
                  )),
                ),
              ),
        
              // Menu Profile
              const SizedBox(
                height: 30,
              ),
        
              //setting
              ProfileMenu(title: 'Setting', icons: Icons.settings,),
              ProfileMenu(title: 'Billing Detail', icons: Icons.wallet,),
              ProfileMenu(title: 'User Management', icons: Icons.person,),
              SizedBox(height: 40,),
              ProfileMenu(title: 'Information', icons: Icons.info,),
              ProfileMenu(title: 'Logout', icons: Icons.logout,),
            ],
          ),
        ),
      ),
    );
  }
}