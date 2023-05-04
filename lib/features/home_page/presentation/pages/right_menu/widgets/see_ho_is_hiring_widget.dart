



import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:linked_in_web/features/home_page/presentation/pages/right_menu/widgets/footer_widget.dart';

import '../../../../../provider/scroll_pixel/scroll_pixel_cubit.dart';

class SeeHoIsHiringWidget extends StatelessWidget {
  const SeeHoIsHiringWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider.of<ScrollPixelCubit>(context).getCurrentPixels > 345? SizedBox():Column(
      children: [
        Container(
          width: 290,
          child: Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: ClipRRect(borderRadius: BorderRadius.circular(10),child: Image.asset("assets/see_ho_is_hiring.png")),
          ),
        ),
        SizedBox(height: 15,),
        FooterWidget()
      ],
    );
  }


}
