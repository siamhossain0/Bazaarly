import 'package:bazaar_ly/common/widgets/custom_appbar/custom_appbar.dart';
import 'package:bazaar_ly/common/widgets/images/circulat_image.dart';
import 'package:bazaar_ly/common/widgets/texts/section_heading.dart';
import 'package:bazaar_ly/personalization/screens/profile/widgets/profile_menu.dart';
import 'package:bazaar_ly/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import '../../../utils/constants/image_strings.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      ///appbar
      appBar: CustomAppBar(
        showBackArrow:true,
        title: Text("Profile",),
      ),
      /// body
      body: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          children: [
            /// Profile Picture
            SizedBox(
              width:double.infinity,
              child: Column(

                children: [
                  CircularImage(image: TImages.user,width: 80,height: 80),
                  TextButton(onPressed: (){}, child:Text("Change Profile Picture"))
              
                ],
              ),
            ),
            /// Details
            ///
            SizedBox(height: TSizes.spaceBtwItems/2),
            const Divider(),
            SizedBox(height: TSizes.spaceBtwItems),
            SectionHeading(title: 'Profile Information',showActionButton: false),
            SizedBox(height: TSizes.spaceBtwItems),

            ProfileMenu(onPressed: () {  }, title: 'name', value: 'Siam Hossain'),
            ProfileMenu(onPressed: () {  }, title: 'UserName', value: 'Siam_Hossain'),
            SizedBox(height: TSizes.spaceBtwItems),
            const Divider(),
            SizedBox(height: TSizes.spaceBtwItems),
            ProfileMenu(onPressed: () {  }, title: 'User ID', value: '5257',icon: Iconsax.copy,),
            ProfileMenu(onPressed: () {  }, title: 'E-mail', value: 'mdsiamhosaain0@gmail.com'),
            ProfileMenu(onPressed: () {  }, title: 'Phone Number', value: '01716995440'),
            ProfileMenu(onPressed: () {  }, title: 'Gender', value: 'Male'),
            ProfileMenu(onPressed: () {  }, title: 'Date of Birth', value: '13 jan 1999'),
            Divider(),
            SizedBox(height: TSizes.spaceBtwItems),
            Center(
              child: TextButton(onPressed: (){}, child:Text('Close Account ',style: TextStyle(color: Colors.red),)),
            )
            




          ],
        ),
        ),


      ),
    );
  }
}


