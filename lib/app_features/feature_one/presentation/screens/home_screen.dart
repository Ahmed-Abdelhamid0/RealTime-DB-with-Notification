import 'package:flutter/material.dart';
import 'package:realtime_ex/app_base/core/realtime_db/data/services/realtime_db_service_impl.dart';
import 'package:realtime_ex/app_base/shared/constants/colors.dart';
import 'package:realtime_ex/app_base/shared/constants/strings.dart';
import 'package:realtime_ex/app_base/shared/models/button_model.dart';
import 'package:realtime_ex/app_base/shared/widgets/app_button.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final List<ButtonModel> btnmdl = [
    ButtonModel(
      childWidget: Text(AppStrings.createData),
      onClick: () {
        RealtimeDBImp dbImp = RealtimeDBImp();
        dbImp.createNewRef();
      },
    ),
    ButtonModel(
      childWidget: Text(AppStrings.getData),
      onClick: () {
        RealtimeDBImp dbImp = RealtimeDBImp();
        dbImp.getDatafromDatabase();
      },
    ),
    ButtonModel(
      childWidget: Text(AppStrings.updateData),
      onClick: () {
        RealtimeDBImp dbImp = RealtimeDBImp();
        dbImp.updateData();
      },
    ),
    ButtonModel(
      childWidget: Text(AppStrings.removeData),
      onClick: () {
        RealtimeDBImp dbImp = RealtimeDBImp();
        dbImp.removeData();
      },
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.brandColor,
        centerTitle: true,
        title: Text(
          AppStrings.appBarTitle,
          style: TextStyle(
            color: AppColors.whiteColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: btnmdl.map((e) => CustomAppButton(buttonModel: e)).toList(),
        ),
      ),
    );
  }
}
