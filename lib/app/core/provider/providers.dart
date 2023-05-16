import 'package:paipfood_app/app/core/shared/user_shared.dart';
import 'package:provider/provider.dart';

class Providers {
  static final providers = [
    ChangeNotifierProvider<UserShared>(create: (_) => UserShared()),
  ];
}
