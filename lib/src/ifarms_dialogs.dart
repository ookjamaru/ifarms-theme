part of '../ifarms_theme.dart';

class IFDialog {
  Widget baseDialog({
    required BuildContext context,
    String? title = 'Perhatian',
    String? description,
    DialogType? type = DialogType.primary,
    DialogIconType? iconType = DialogIconType.none,
    String? confirmLabel = 'Ok',
    String? cancelLabel = 'Tutup',
    String? customIcon,
    Widget? customIconWidget,
    VoidCallback? onCancel,
    VoidCallback? onConfirm,
  }) {
    return AlertDialog(
      insetPadding: const EdgeInsets.symmetric(horizontal: 20),
      backgroundColor: IFTheme.color.white,
      surfaceTintColor: IFTheme.color.white,
      iconPadding: const EdgeInsets.only(
        top: 30,
        bottom: 15,
        left: 30,
        right: 30,
      ),
      titlePadding: const EdgeInsets.all(10),
      contentPadding: const EdgeInsets.all(10),
      titleTextStyle: IFTheme.textStyle.h1BoldBlack,
      contentTextStyle: IFTheme.textStyle.bodyReg,
      alignment: Alignment.center,
      actionsPadding: const EdgeInsets.all(10),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      icon: iconBuilder(
        iconType!,
        customIcon: customIcon,
        customWidget: customIconWidget,
      ),
      title: Text(title!),
      content: description == null
          ? null
          : Text(
              description,
              textAlign: TextAlign.center,
            ),
      actions: [
        if (type != DialogType.info && type != DialogType.noAction)
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: IFTheme.button.baseButton(
                  label: cancelLabel!,
                  type: ButtonType.outline,
                  onPressed: onCancel ?? () => Navigator.pop(context),
                ),
              ),
              const SizedBox(width: 20),
              Expanded(
                child: IFTheme.button.baseButton(
                  label: confirmLabel!,
                  type: _confirmButtonType(type!),
                  onPressed: onConfirm,
                ),
              )
            ],
          ),
        if (type == DialogType.info)
          Row(
            children: [
              Expanded(
                child: IFTheme.button.baseButton(
                  label: cancelLabel!,
                  type: ButtonType.outline,
                  onPressed: onCancel ?? () => Navigator.pop(context),
                ),
              ),
            ],
          ),
        if (type == DialogType.singleAction)
          Row(
            children: [
              Expanded(
                child: IFTheme.button.baseButton(
                  label: confirmLabel!,
                  type: ButtonType.primary,
                  onPressed: onConfirm ?? () => Navigator.pop(context),
                ),
              ),
            ],
          ),
      ],
    );
  }

  ButtonType _confirmButtonType(DialogType type) {
    switch (type) {
      case DialogType.success:
        return ButtonType.success;
      case DialogType.warning:
        return ButtonType.warning;
      case DialogType.danger:
        return ButtonType.danger;
      default:
        return ButtonType.primary;
    }
  }

  Widget iconBuilder(DialogIconType customIcontype, {String? customIcon, Widget? customWidget}) {
    switch (customIcontype) {
      case DialogIconType.svg:
        return customIcon != null ? SvgPicture.asset(customIcon, height: 40) : SvgPicture.asset('assets/common/svgs/info.svg');
      case DialogIconType.widget:
        return customWidget ?? const SizedBox.shrink();
      default:
        return SvgPicture.asset('assets/common/svgs/info.svg');
    }
  }
}
