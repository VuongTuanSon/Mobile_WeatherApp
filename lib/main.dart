import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather_app/src/ui/home/home_binding.dart';
import 'package:weather_app/src/ui/home/home_screen.dart';
import 'package:home_widget/home_widget.dart';
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  HomeWidget.registerBackgroundCallback(backgroundCallback);
  runApp(App());
}
Future<void> backgroundCallback(Uri uri) async {
  if (uri.host == 'updatecounter') {
    int _counter;
    await HomeWidget.getWidgetData<int>('_counter', defaultValue: 0).then((value) {
      _counter = value;
      _counter++;
    });
    await HomeWidget.saveWidgetData<int>('_counter', _counter);
    await HomeWidget.updateWidget(name: 'AppWidgetProvider', iOSName: 'AppWidgetProvider');
  }
}
class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      getPages: [
        GetPage(
          name: '/',
          page: () => HomeScreen(),
          binding: HomeBinding(),
        )
      ],
    );
  }
}
