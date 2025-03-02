import 'package:flutter/material.dart';
import 'package:pinnacle_main/framework/constants/color.dart';
import 'package:pinnacle_main/framework/constants/enums.dart';
import 'package:pinnacle_main/framework/constants/size.dart';
import 'package:pinnacle_main/framework/constants/strings.dart';
import 'package:pinnacle_main/framework/digital/sizer.dart';
import 'package:pinnacle_main/framework/uikit/normal_button.dart';
import 'package:pinnacle_main/framework/uikit/text_field_widget.dart';
import 'package:pinnacle_main/framework/uikit/text_widget.dart';
import 'package:pinnacle_main/framework/widgets/tool_bar_widgets.dart';
import 'package:pinnacle_main/profile%20section/uikit/profile_pic.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.mainBackgroundColor161513,
      appBar: customAppBarWithShadow(
        titleName: GeneralString.editProfile,
        titleColor: CustomColors.mainTextColor,
        fontSize: Sizes.size20.sp,
        isCenter: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(Sizes.size20.dp),
          child: Column(
            children: [
              Center(
                child: ProfilePic(
                  isEditable: true,
                  userId: GeneralString.userId,
                  username: GeneralString.userName,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: Sizes.size20.dp),
                child: TextFieldWidget(
                  label: GeneralString.editUserId,
                  hintText: "@amitrana",
                  keyboardType: TextInputType.name,
                  textFieldTheme: TextFeildTheme.light,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: Sizes.size20.dp),
                child: TextFieldWidget(
                  label: GeneralString.editEmail,
                  hintText: "abcd@gmail.com",
                  keyboardType: TextInputType.emailAddress,
                  textFieldTheme: TextFeildTheme.light,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: Sizes.size20.dp,
                ),
                child: TextFieldWidget(
                  label: GeneralString.editPhone,
                  hintText: "65484615468",
                  keyboardType: TextInputType.phone,
                  textFieldTheme: TextFeildTheme.light,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: Sizes.size20.dp),
                child: TextFieldWidget(
                  label: GeneralString.editCity,
                  hintText: "Pune",
                  keyboardType: TextInputType.streetAddress,
                  textFieldTheme: TextFeildTheme.light,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: Sizes.size20.dp,
                ),
                child: TextFieldWidget(
                  label: GeneralString.editState,
                  hintText: "Maharastra",
                  keyboardType: TextInputType.streetAddress,
                  textFieldTheme: TextFeildTheme.light,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: Sizes.size20.dp, bottom: Sizes.size10.dp),
                child: NormalButton(
                    label: TextWidget(text: GeneralString.save),
                    onPress: () {},
                    buttonType: ButtonType.normal),
              )
            ],
          ),
        ),
      ),
    );
  }
}
