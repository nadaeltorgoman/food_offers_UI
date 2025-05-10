import 'package:flutter/material.dart';
import 'package:food_offers/utils/app_colors.dart';
import 'package:food_offers/utils/image_assets.dart';
import 'package:food_offers/utils/text_styles.dart';

class OffersScreen extends StatefulWidget {
  const OffersScreen({super.key});

  @override
  State<OffersScreen> createState() => _OffersScreenState();
}

class _OffersScreenState extends State<OffersScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_rounded),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                constraints: BoxConstraints(maxWidth: MediaQuery.of(context).size.width, maxHeight: 250),
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), image: DecorationImage(image: AssetImage(AppImages.offer), fit: BoxFit.cover)),
              ),
            ),
            const SizedBox(height: 20),
            const Text('Burger Mix Combo', style: AppTextStyles.title),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(children: [const Icon(Icons.star, color: AppColors.primaryColor), const SizedBox(width: 5), const Text('4(5)', style: AppTextStyles.body)]),
                Container(
                  height: 40,
                  width: 95,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: AppColors.buttonColor),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 35,
                        width: 35,
                        decoration: BoxDecoration(color: AppColors.backgroundColor, borderRadius: BorderRadius.circular(20)),
                        child: const Icon(Icons.remove, color: AppColors.primaryColor, size: 15),
                      ),
                      const SizedBox(width: 5),
                      const Text('0', style: TextStyle(color: Colors.white)),
                      const SizedBox(width: 5),
                      Container(
                        height: 35,
                        width: 35,
                        decoration: BoxDecoration(color: AppColors.primaryColor, borderRadius: BorderRadius.circular(20)),
                        child: const Icon(Icons.add, color: AppColors.backgroundColor, size: 15),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Text('Description', style: AppTextStyles.subtitle.copyWith(color: AppColors.primaryColor)),
            const SizedBox(height: 10),
            const Text('2 Burger, 2 Fries, 2 Drinks with 30% sale', style: AppTextStyles.body),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('EGP 160', style: AppTextStyles.subtitle),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(backgroundColor: AppColors.buttonColor, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
                  child: Center(child: Text('ADD TO CART', style: AppTextStyles.subtitle.copyWith(color: AppColors.backgroundColor, fontSize: 16, fontWeight: FontWeight.w600))),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Divider(color: AppColors.primaryColor, thickness: 1, indent: 10, endIndent: 10),
            const SizedBox(height: 10),
            Container(
              height: 100,
              padding: const EdgeInsets.all(10),
              width: double.infinity,
              decoration: BoxDecoration(color: AppColors.secondaryColor, borderRadius: BorderRadius.circular(5)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 10),
                      Text('Review', style: AppTextStyles.subtitle.copyWith(color: AppColors.primaryColor)),
                      const SizedBox(height: 5),
                      Text('Send Your Feedback Now', style: AppTextStyles.body.copyWith(color: AppColors.blackColor)),
                    ],
                  ),
                  IconButton(onPressed: () {}, icon: const Icon(Icons.keyboard_arrow_down_outlined, color: AppColors.buttonColor, size: 30)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
