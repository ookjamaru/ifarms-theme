part of '../ifarms_theme.dart';

class IFDialog {
  Widget baseDialog({
    required BuildContext context,
    String? title = 'Perhatian',
    String? description,
    DialogType? type = DialogType.primary,
    String? confirmLabel = 'Ok',
    String? cancelLabel = 'Tutup',
    Widget? customIcon = const Icon(Icons.info),
    VoidCallback? onConfirm,
  }) {
    return AlertDialog(
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
      icon: customIcon,
      title: Text(title!),
      content: description == null
          ? null
          : Text(
              description,
              textAlign: TextAlign.center,
            ),
      actions: [
        if (type != DialogType.info)
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: IFTheme.button.baseButton(
                  label: cancelLabel!,
                  type: ButtonType.outline,
                  onPressed: () => Navigator.pop(context),
                ),
              ),
              SizedBox(
                width: ScreenUtil().setWidth(20),
              ),
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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: IFTheme.button.baseButton(
                  label: cancelLabel!,
                  type: ButtonType.outline,
                  onPressed: () => Navigator.pop(context),
                ),
              ),
            ],
          ),
      ],
    );
  }

  ButtonType _confirmButtonType(DialogType type) {
    switch (type) {
      case DialogType.warning:
        return ButtonType.warning;
      case DialogType.danger:
        return ButtonType.danger;
      default:
        return ButtonType.primary;
    }
  }
}
