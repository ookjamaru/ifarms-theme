part of '../ifarms_theme.dart';

class IFChip {
  Chip baseChip({
    required bool active,
    required String label,
    String? deleteIcon = 'assets/svg/close_circle.svg',
    VoidCallback? onDelete,
  }) {
    onDelete ??= () {};
    return Chip(
      labelStyle: IFTheme.textStyle.h2Reg.copyWith(
        color: active ? IFTheme.color.white : IFTheme.color.black,
      ),
      side: active
          ? BorderSide.none
          : BorderSide(
              width: 1,
              color: IFTheme.color.blue,
            ),
      label: Text(label),
      labelPadding: const EdgeInsets.all(0),
      backgroundColor: active ? IFTheme.color.blue : IFTheme.color.white,
      deleteIcon: SvgPicture.asset(deleteIcon!),
      onDeleted: active ? onDelete : null,
    );
  }
}
