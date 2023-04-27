part of '../ifarms_theme.dart';

class IFAssets {
  Widget defaultBackground() {
    return Stack(
      children: [
        Positioned(
          top: 100,
          right: 0,
          child: SvgPicture.asset(
            'assets/svgs/cloud-top.svg',
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          bottom: 350,
          left: 0,
          child: SvgPicture.asset(
            'assets/svgs/cloud-mid.svg',
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          bottom: 0,
          child: SvgPicture.asset(
            'assets/svgs/bottom-shape.svg',
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          bottom: 20,
          left: 20,
          right: 20,
          child: SizedBox(
            child: Image.asset(
              'assets/images/anper.png',
            ),
          ),
        ),
      ],
    );
  }
}
