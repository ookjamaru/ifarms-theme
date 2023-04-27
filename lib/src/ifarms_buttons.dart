part of '../ifarms_theme.dart';

class IFButton {
  Widget baseButton({
    String? label = '-',
    required ButtonType type,
    ButtonMode? mode = ButtonMode.common,
    ButtonIconPosition? iconPosition,
    Widget? icon,
    bool noBorder = false,
    VoidCallback? onPressed,
  }) {
    if (onPressed == null && type != ButtonType.disabled) {
      onPressed = () {};
    }
    if (icon == null && iconPosition != null) {
      icon = SvgPicture.asset(
        'assets/svgs/plus-outlined.svg',
        colorFilter: ColorFilter.mode(
          _iconColor(type),
          BlendMode.srcIn,
        ),
      );
    }
    switch (mode) {
      case ButtonMode.circle:
        return SizedBox.fromSize(
          size: const Size(45, 45),
          child: IconButton(
            onPressed: onPressed,
            icon: icon!,
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(
                _buttonColor(type),
              ),
              iconColor: MaterialStateProperty.all(
                _iconColor(type),
              ),
              side: MaterialStateBorderSide.resolveWith(
                (states) => noBorder
                    ? BorderSide.none
                    : BorderSide(
                        color: _outlineColor(type),
                        width: 1,
                      ),
              ),
            ),
          ),
        );
      case ButtonMode.rounded:
        return SizedBox.fromSize(
          size: const Size(45, 45),
          child: FloatingActionButton(
            mini: true,
            elevation: 0,
            onPressed: onPressed,
            backgroundColor: _buttonColor(type),
            foregroundColor: _iconColor(type),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
              side: noBorder
                  ? BorderSide.none
                  : BorderSide(
                      color: _outlineColor(type),
                      width: 1,
                    ),
            ),
            child: icon,
          ),
        );
      default:
        return SizedBox(
          height: mode == ButtonMode.large ? 70 : 45,
          child: MaterialButton(
            minWidth: 45,
            elevation: 0,
            color: mode == ButtonMode.text
                ? IFTheme.color.white.withAlpha(9)
                : _buttonColor(type),
            disabledColor: _buttonColor(type),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
              side: noBorder
                  ? BorderSide.none
                  : BorderSide(
                      color: _outlineColor(type),
                      width: 1,
                    ),
            ),
            onPressed: onPressed,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                if (iconPosition == ButtonIconPosition.left)
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: icon!,
                  ),
                Text(
                  label!,
                  style: mode == ButtonMode.large
                      ? IFTheme.textStyle.h2Reg
                      : _textStyle(type),
                ),
                if (iconPosition == ButtonIconPosition.right)
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: icon!,
                  ),
              ],
            ),
          ),
        );
    }
  }

  Widget setDefaultIcon() {
    return SvgPicture.asset(
      'assets/svgs/plus-outlined.svg',
      colorFilter: ColorFilter.mode(
        IFTheme.color.white,
        BlendMode.srcIn,
      ),
    );
  }

  Color _buttonColor(ButtonType type) {
    switch (type) {
      case ButtonType.primary:
        return IFTheme.color.blue;
      case ButtonType.warning:
        return IFTheme.color.yellow;
      case ButtonType.danger:
        return IFTheme.color.red;
      case ButtonType.success:
        return IFTheme.color.green;
      case ButtonType.disabled:
        return IFTheme.color.grey;
      default:
        return IFTheme.color.white;
    }
  }

  Color _outlineColor(ButtonType type) {
    switch (type) {
      case ButtonType.warning:
        return IFTheme.color.yellow;
      case ButtonType.danger:
        return IFTheme.color.red;
      case ButtonType.success:
        return IFTheme.color.green;
      case ButtonType.outline:
        return IFTheme.color.lightGrey;
      case ButtonType.outlineGreen:
        return IFTheme.color.green;
      case ButtonType.outlineRed:
        return IFTheme.color.red;
      case ButtonType.disabled:
        return IFTheme.color.grey;
      default:
        return IFTheme.color.blue;
    }
  }

  TextStyle _textStyle(ButtonType type) {
    switch (type) {
      case ButtonType.warning:
        return IFTheme.textStyle.h2Reg.copyWith(color: IFTheme.color.black);
      case ButtonType.outline:
        return IFTheme.textStyle.h2Reg.copyWith(color: IFTheme.color.blue);
      case ButtonType.outlineGreen:
        return IFTheme.textStyle.h2Reg.copyWith(color: IFTheme.color.green);
      case ButtonType.outlineRed:
        return IFTheme.textStyle.h2Reg.copyWith(color: IFTheme.color.red);
      default:
        return IFTheme.textStyle.h2Reg.copyWith(color: IFTheme.color.white);
    }
  }

  Color _iconColor(ButtonType type) {
    switch (type) {
      case ButtonType.warning:
        return IFTheme.color.black;
      case ButtonType.outline:
        return IFTheme.color.blue;
      case ButtonType.outlineGreen:
        return IFTheme.color.green;
      case ButtonType.outlineRed:
        return IFTheme.color.red;
      default:
        return IFTheme.color.white;
    }
  }
}
