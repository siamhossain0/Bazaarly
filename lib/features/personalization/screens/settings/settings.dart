import 'package:bazaar_ly/common/widgets/custom_appbar/custom_appbar.dart';
import 'package:bazaar_ly/common/widgets/custom_shape/containers/primary_header_container.dart';
import 'package:bazaar_ly/common/widgets/list_tiles/settings_menu_tile.dart';
import 'package:bazaar_ly/common/widgets/texts/section_heading.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import '../../../common/widgets/list_tiles/user_profile_tile.dart';
import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';
import '../profile/profile.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ///header
            PrimaryHeaderContainer(
              child: Column(
                children: [
                  ///AppBar
                  CustomAppBar(
                    title: Text(
                      'Account',
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium!
                          .apply(color: TColors.white),
                    ),
                  ),
                  const SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),

                  ///User Profile Card
                  UserProfileTile(onPressed:()=> Get.to(()=>ProfileScreen())),
                  SizedBox(
                    height: TSizes.spaceBtwSections,
                  )
                ],
              ),
            ),

            ///body
            Padding(
              padding: EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  /// Account settings
                  SectionHeading(
                    title: "Account Settings",
                    showActionButton: false,
                  ),
                  SizedBox(height: TSizes.spaceBtwItems),
                  SettingsMenuTile(
                    icon: Iconsax.safe_home,
                    title: "My Address",
                    subTitle: "Set shopping delivery address",
                    onTap: () {},
                  ),
                  SettingsMenuTile(
                    icon: Iconsax.shopping_cart,
                    title: "My Cart",
                    subTitle: "Add,remove products and move to checkout",
                    onTap: () {},
                  ),
                  SettingsMenuTile(
                    icon: Iconsax.bag_tick,
                    title: "Bank Account",
                    subTitle: "Withdraw balance to registered bank account",
                    onTap: () {},
                  ),
                  SettingsMenuTile(
                    icon: Iconsax.discount_shape,
                    title: "My Coupons",
                    subTitle: "List of all the discounted coupons",
                    onTap: () {},
                  ),
                  SettingsMenuTile(
                    icon: Iconsax.notification,
                    title: "Notifications",
                    subTitle: "Set any kind of notification message",
                    onTap: () {},
                  ),
                  SettingsMenuTile(
                    icon: Iconsax.security_card,
                    title: "Account Privacy",
                    subTitle: "Manage data usage and connected accounts",
                    onTap: () {},
                  ),

                  /// app settings
                  SizedBox(height: TSizes.spaceBtwSections),
                  SectionHeading(
                      title: 'App Settings', showActionButton: false),
                  SizedBox(height: TSizes.spaceBtwItems),
                  SettingsMenuTile(
                      icon: Iconsax.document_upload,
                      title: 'Load Data',
                      subTitle: 'Upload Data to your Cloud Firebase'),
                  SettingsMenuTile(
                    icon: Iconsax.location,
                    title: "location",
                    subTitle: 'set recommendation based on location',
                    trailing: Switch(value: true, onChanged: (value) {}),
                  ),
                  SettingsMenuTile(
                    icon: Iconsax.security_user,
                    title: "Safe Mode",
                    subTitle: 'Search result is safe for all ages',
                    trailing: Switch(value: false, onChanged: (value) {}),
                  ),
                  SettingsMenuTile(
                    icon: Iconsax.image,
                    title: "HD Image Quality",
                    subTitle: 'set image quality to be seen',
                    trailing: Switch(value: false, onChanged: (value) {}),
                  ),

                  SizedBox(height: TSizes.spaceBtwSections),
                  SizedBox(
                      width: double.infinity,
                      child: OutlinedButton(
                          onPressed: () {}, child: const Text('Logout'))),
                  SizedBox(height: TSizes.spaceBtwSections * 2.5)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
