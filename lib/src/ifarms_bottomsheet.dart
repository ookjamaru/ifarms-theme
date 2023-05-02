part of '../ifarms_theme.dart';

class IFBtmSheet {
  Widget baseBtmSheet({
    required BuildContext context,
    Widget? widget = const SizedBox.shrink(),
    bool? large = false,
  }) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            color: IFTheme.color.white,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              if (large!) SizedBox(height: ScreenUtil().setHeight(40)),
              Center(
                child: FractionallySizedBox(
                  widthFactor: 0.25,
                  child: Container(
                    margin: const EdgeInsets.symmetric(vertical: 20),
                    child: Container(
                      height: 5.0,
                      decoration: BoxDecoration(
                        color: IFTheme.color.grey,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(2.5),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  physics: const AlwaysScrollableScrollPhysics(),
                  child: widget!,
                ),
              ),
              SizedBox(height: ScreenUtil().setHeight(20)),
            ],
          ),
        ),
        Positioned(
          top: large ? 40 : 0,
          right: 10,
          child: IFTheme.button.baseButton(
            type: ButtonType.text,
            mode: ButtonMode.circle,
            noBorder: true,
            icon: SvgPicture.asset(
              'assets/svgs/close-circle.svg',
              height: 25,
            ),
            onPressed: () => Navigator.pop(context),
          ),
        ),
      ],
    );
  }
}
