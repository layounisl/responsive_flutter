library responsive_flutter;

import 'scaling_query.dart';

class ResponsiveFlutter {
  static ScalingQuery _scalingQuery;

  static ScalingQuery of(context) {
    if (_scalingQuery == null) {
      _scalingQuery = new ScalingQuery(context);
    }
    return _scalingQuery;
  }
}
