import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'scroll_pixel_state.dart';

class ScrollPixelCubit extends Cubit<double> {
  ScrollPixelCubit() : super(0.0);

  double currentPixels = 0.0;

  double get getCurrentPixels => currentPixels;

  set setCurrentPixel(double pixel) {
    this.currentPixels = pixel;
  }
}
