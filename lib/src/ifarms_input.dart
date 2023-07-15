part of '../ifarms_theme.dart';

class IFInput {
  final InputDecoration _inputDecoration = InputDecoration(
    filled: true,
    labelStyle: TextStyle(color: IFTheme.color.black),
    hintStyle: IFTheme.textStyle.h2Reg.copyWith(
      color: IFTheme.color.grey,
    ),
    contentPadding: const EdgeInsets.all(15.0),
    errorStyle: IFTheme.textStyle.smallReg.copyWith(
      color: IFTheme.color.red,
    ),
    alignLabelWithHint: true,
    fillColor: IFTheme.color.white,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10.0),
      borderSide: BorderSide(
        width: 1,
        color: IFTheme.color.lightGrey,
      ),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10.0),
      borderSide: BorderSide(width: 1, color: IFTheme.color.lightGrey),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10.0),
      borderSide: BorderSide(width: 1, color: IFTheme.color.red),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10.0),
      borderSide: BorderSide(
        color: IFTheme.color.blue,
      ),
    ),
  );
  Widget baseInput({
    String? title,
    String? hint,
    String? helperText,
    String? initialValue,
    String? prefix,
    Widget? prefixWidget,
    String? suffix,
    Widget? suffixWidget,
    TextEditingController? controller,
    FormFieldValidator? validator,
    SuffixType? suffixType = SuffixType.noSuffix,
    PrefixType? prefixType = PrefixType.noSuffix,
    int? maxLength,
    bool? obscureText = false,
    bool? longText = false,
    bool? showPrefix = false,
    bool? showClearbutton = false,
    bool? readOnly = false,
    bool? enabled = true,
    MandatoryStatus? mandatory = MandatoryStatus.etc,
    List<TextInputFormatter>? inputFormatters,
    Function()? suffixAction,
    Function()? prefixAction,
    Function()? onTap,
    Function(String)? onChanged,
    TextInputType? inputType = TextInputType.text,
  }) {
    return Material(
      color: Colors.transparent,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              if (title != null) Text(title, style: IFTheme.textStyle.bodyReg),
              if (mandatory == MandatoryStatus.optional)
                Text(
                  ' (Jika ada)',
                  style: IFTheme.textStyle.bodyReg.copyWith(
                    color: IFTheme.color.grey,
                  ),
                ),
              if (mandatory == MandatoryStatus.required)
                Text(
                  ' *',
                  style: IFTheme.textStyle.bodyReg.copyWith(
                    color: IFTheme.color.red,
                  ),
                ),
            ],
          ),
          // Test
          TextFormField(
            maxLines: obscureText! ? 1 : 5,
            minLines: longText! ? 5 : 1,
            maxLength: maxLength,
            controller: controller,
            initialValue: initialValue,
            keyboardType: inputType,
            validator: validator,
            readOnly: readOnly!,
            enabled: enabled,
            onTap: onTap,
            onChanged: onChanged,
            obscureText: obscureText,
            style: IFTheme.textStyle.bodyReg,
            inputFormatters: inputFormatters,
            decoration: InputDecoration(
              filled: true,
              fillColor:
                  enabled! ? IFTheme.color.white : IFTheme.color.lightGrey,
              labelStyle: TextStyle(color: IFTheme.color.black),
              hintText: hint,
              hintStyle: IFTheme.textStyle.bodyReg.copyWith(
                color: IFTheme.color.grey,
              ),
              contentPadding: const EdgeInsets.all(15.0),
              errorStyle: IFTheme.textStyle.smallReg.copyWith(
                color: IFTheme.color.red,
              ),
              prefixIcon: prefixBuilder(
                type: prefixType,
                asset: prefix,
                widget: prefixWidget,
                prefixAction: prefixAction,
              ),
              suffixIcon: suffixBuilder(
                type: suffixType,
                asset: suffix,
                widget: suffixWidget,
                suffixAction: suffixAction,
              ),
              alignLabelWithHint: true,
              helperText: helperText,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide(
                  width: 1,
                  color: IFTheme.color.lightGrey,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide:
                    BorderSide(width: 1, color: IFTheme.color.lightGrey),
              ),
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide(width: 1, color: IFTheme.color.red),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide(
                  color: IFTheme.color.blue,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  suffixBuilder({
    SuffixType? type,
    String? asset,
    Widget? widget,
    Function()? suffixAction,
  }) {
    switch (type) {
      case SuffixType.svg:
        return IconButton(
          onPressed: suffixAction,
          icon: SvgPicture.asset(
            asset ?? 'assets/svgs/close-circle.svg',
            height: ScreenUtil().setHeight(20),
            colorFilter: ColorFilter.mode(
              IFTheme.color.grey,
              BlendMode.srcIn,
            ),
          ),
        );
      case SuffixType.text:
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(asset ?? ''),
            ),
          ],
        );
      case SuffixType.widget:
        return Padding(
          padding: const EdgeInsets.all(2.0),
          child: widget,
        );
      default:
        return null;
    }
  }

  prefixBuilder({
    PrefixType? type,
    String? asset,
    Widget? widget,
    Function()? prefixAction,
  }) {
    switch (type) {
      case PrefixType.svg:
        return IconButton(
          onPressed: prefixAction,
          icon: SvgPicture.asset(
            asset ?? 'assets/svgs/close-circle.svg',
            height: ScreenUtil().setHeight(20),
            colorFilter: ColorFilter.mode(
              IFTheme.color.grey,
              BlendMode.srcIn,
            ),
          ),
        );
      case PrefixType.text:
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text(asset ?? ''),
            ),
          ],
        );
      case PrefixType.widget:
        return Padding(
          padding: const EdgeInsets.all(2.0),
          child: widget,
        );
      default:
        return null;
    }
  }

  dropdownSearchNet<T>({
    required String? label,
    MandatoryStatus? mandatory = MandatoryStatus.etc,
    bool? showSearchBox = true,
    FormFieldValidator? validator,
    required T? selectedData,
    required Future<List<T>> Function(String)? getData,
    required Widget Function(BuildContext, T, bool)? itemBuilder,
    required Widget Function(BuildContext, T?)? dropdownBuilder,
    required bool Function(T, T)? compareFn,
    void Function(T?)? onChanged,
  }) {
    return Column(
      children: [
        Row(
          children: [
            if (label != null)
              Text(
                label,
                style: IFTheme.textStyle.bodyReg,
              ),
            if (mandatory == MandatoryStatus.optional)
              Text(
                ' *',
                style: IFTheme.textStyle.bodyReg.copyWith(
                  color: IFTheme.color.red,
                ),
              ),
            if (label != null && mandatory == MandatoryStatus.optional)
              Text(
                ' (Jika ada)',
                style: IFTheme.textStyle.bodyReg.copyWith(
                  color: IFTheme.color.grey,
                ),
              ),
          ],
        ),
        DropdownSearch<T>(
          selectedItem: selectedData,
          asyncItems: getData,
          popupProps: PopupProps.menu(
            showSearchBox: showSearchBox!,
            isFilterOnline: true,
            showSelectedItems: true,
            searchDelay: const Duration(milliseconds: 500),
            fit: FlexFit.loose,
            menuProps: MenuProps(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              backgroundColor: IFTheme.color.white,
            ),
            searchFieldProps: TextFieldProps(
              decoration: _inputDecoration,
            ),
            itemBuilder: itemBuilder,
          ),
          dropdownBuilder: dropdownBuilder,
          onChanged: onChanged,
          compareFn: compareFn,
          validator: validator,
          dropdownDecoratorProps: DropDownDecoratorProps(
            dropdownSearchDecoration: _inputDecoration,
          ),
        ),
      ],
    );
  }

  dropdownSearchNetMulti<T>({
    required String? label,
    bool? mandatory = false,
    FormFieldValidator? validator,
    required T? selectedData,
    required Future<List<T>> Function(String)? getData,
    required Widget Function(BuildContext, T, bool)? itemBuilder,
    required Widget Function(BuildContext, T?)? dropdownBuilder,
    required bool Function(T, T)? compareFn,
    void Function(T?)? onChanged,
  }) {
    return Column(
      children: [
        Row(
          children: [
            if (label != null)
              Text(
                label,
                style: IFTheme.textStyle.bodyReg,
              ),
            if (mandatory!)
              Text(
                ' *',
                style: IFTheme.textStyle.bodyReg.copyWith(
                  color: IFTheme.color.red,
                ),
              ),
            if (label != null && !mandatory)
              Text(
                ' (Jika ada)',
                style: IFTheme.textStyle.bodyReg.copyWith(
                  color: IFTheme.color.grey,
                ),
              ),
          ],
        ),
        DropdownSearch<T>(
          selectedItem: selectedData,
          asyncItems: getData,
          popupProps: PopupProps.menu(
            showSearchBox: true,
            isFilterOnline: true,
            showSelectedItems: true,
            searchDelay: const Duration(milliseconds: 500),
            fit: FlexFit.loose,
            menuProps: MenuProps(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              backgroundColor: IFTheme.color.white,
            ),
            searchFieldProps: TextFieldProps(
              decoration: _inputDecoration,
            ),
            itemBuilder: itemBuilder,
          ),
          dropdownBuilder: dropdownBuilder,
          onChanged: onChanged,
          compareFn: compareFn,
          validator: validator,
          dropdownDecoratorProps: DropDownDecoratorProps(
            dropdownSearchDecoration: _inputDecoration,
          ),
        ),
      ],
    );
  }
}
