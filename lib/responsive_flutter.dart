library responsive_flutter;

import 'scaling_query.dart';

class ResponsiveFlutter {
  static ScalingQuery of(context) {
    return new ScalingQuery(context);
  }
}
