import 'package:flutter/material.dart';
import 'package:tic_tac_toe_example/ui/widget/custom_text_widget/custom_text_widget.dart';
import 'package:tic_tac_toe_example/ui/widget/mixins/size_mixin/size_mixin.dart';
import 'package:tic_tac_toe_example/utilities/constants/app_theme/app_theme.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({super.key});

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> with SizeMixin {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    setSize(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomText(
              text: "Hello",
            ),
            _buildTextButton(
              buttonText: "Play With Computer",
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTextButton({
    String buttonText = 'Button',
    required void Function() onPressed,
  }) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        backgroundColor: AppColors.colorPalate[500],
        padding: EdgeInsets.symmetric(
          horizontal: screenWidth * 0.1,
          vertical: screenHeight * 0.025,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
      ),
      child: CustomText(
        text: buttonText,
        color: Colors.white,
      ),
    );
  }
}
