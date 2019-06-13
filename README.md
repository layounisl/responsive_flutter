# responsive_flutter

[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg?style=flat-square)](http://makeapullrequest.com)

A Flutter package for scaling the size your apps UI and fontSize across different sized devices, insipred from [react-native-size-matters](https://github.com/nirsky/react-native-size-matters) and [react-native-responsive-dimensions](https://github.com/DaniAkash/react-native-responsive-dimensions)

## Installation

You just need to add `responsive_flutter` as a [dependency in your pubspec.yaml file](https://flutter.io/using-packages/).

```yaml
dependencies:
  responsive_flutter: ^0.0.1
```

## Usage

```dart

// Inside build function to pass context

@override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.red,
        width: ResponsiveFlutter.of(context).scale(120),
        height: ResponsiveFlutter.of(context).verticalScale(100),
        padding: EdgeInsets.all(ResponsiveFlutter.of(context).moderateScale(8)),
        child: Text("Responsive flutter",
            style: TextStyle(fontSize: ResponsiveFlutter.of(context).fontSize(3))));
  }

```

### Functions

- `fontSize(double size)`  
  Will return fontSize that occupies exactly size% of the screen size.
- `scale(double size)`  
  Will return linear scaled result of the provided size, based on your device's screen width.
- `verticalScale(double size)`  
  Will return linear scaled result of the provided size, based on your device's screen height.
- `moderateScale(double size, [double factor])`
  Sometimes you don't want to scale everything in a linear manner, that's where moderate scale comes in.  
  The cool thing about it is that you can control the resize factor (default is 0.5).  
  If normal scale will increase your size by +2X, moderateScale will only increase it by +X, for example:  
  ➡️ scale(10) = 20  
  ➡️ moderateScale(10) = 15  
  ➡️ moderateScale(10, 0.1) = 11
