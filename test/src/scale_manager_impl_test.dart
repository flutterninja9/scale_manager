import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:scale_manager/scale_manager.dart';

class MockScaleManager extends Mock implements ScaleManager {}

void main() {
  const double tSpace = 54.0;
  const double kMockupWidth = 411.0;
  const double kDeviceWidth = 360.0;
  const double kImageFactor = kMockupWidth / kDeviceWidth;
  const double kTextFactor = kDeviceWidth / kMockupWidth;
  const double rSpacing = tSpace / kMockupWidth * kDeviceWidth;
  MockScaleManager scaleManager;
  setUp(() {
    scaleManager = MockScaleManager();
  });

  test('When getter deviceWidth is called device width should be returned', () {
    //arrange
    when(scaleManager.deviceWidth).thenReturn(kDeviceWidth);
    //act
    final result = scaleManager.deviceWidth;
    //assert
    verify(scaleManager.deviceWidth);
    expect(result, kDeviceWidth);
  });
  test(
      'When getter imageFactor is called then calculated imageFactor should be returned',
      () {
    //arrange
    when(scaleManager.imageFactor).thenReturn(kImageFactor);
    //act
    final result = scaleManager.imageFactor;
    //assert
    verify(scaleManager.imageFactor);
    expect(result, kImageFactor);
  });
  test(
      'When getter textFactor is called then calculated textScaleFactor should be returned',
      () {
    //arrange
    when(scaleManager.textScaleFactor).thenReturn(kTextFactor);
    //act
    final result = scaleManager.textScaleFactor;
    //assert
    verify(scaleManager.textScaleFactor);
    expect(result, kTextFactor);
  });
  test(
      'When spaceScale() is called then calculated spacing value should be returned',
      () {
    //arrange
    when(scaleManager.spaceScale(space: tSpace)).thenReturn(rSpacing);
    //act
    final result = scaleManager.spaceScale(space: tSpace);
    //assert
    verify(scaleManager.spaceScale(space: tSpace));
    expect(result, rSpacing);
  });
}
