// ignore: depend_on_referenced_packages
import 'package:flutter_screenutil/flutter_screenutil.dart';

extension SizeExt on num {
  double get w => ScreenUtil().setWidth(this);
  double get h => ScreenUtil().setHeight(this);
  double get r => ScreenUtil().radius(this);
  double get sp => ScreenUtil().setSp(this);
  double get sw => ScreenUtil().screenWidth * this;
  double get sh => ScreenUtil().screenHeight * this;
  double get sb => ScreenUtil().statusBarHeight * this;
}
