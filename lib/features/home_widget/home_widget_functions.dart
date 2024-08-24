  import 'package:home_widget/home_widget.dart';
import 'package:uwords/features/home_widget/home_widgets_conts.dart';
import 'package:uwords/features/home_widget/streak_widget_data.dart';

void updateHeadline(StreakWidgetData newHeadline) {
    HomeWidget.saveWidgetData<String>('headline_title', newHeadline.title);
    HomeWidget.saveWidgetData<String>(
        'headline_description', newHeadline.description);
    HomeWidget.updateWidget(
      androidName: HomeWidgetsConts.androidWidgetName,
    );
  }