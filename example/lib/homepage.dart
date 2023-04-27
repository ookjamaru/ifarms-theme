import 'package:flutter/material.dart';
import 'package:ifarms_theme/ifarms_theme.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController inputCtl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Stack(
          children: [
            IFTheme.assets.defaultBackground(),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Center(
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Heading 1 Bold',
                        style: IFTheme.textStyle.h1BoldBlack,
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        'Heading 2 Bold',
                        style: IFTheme.textStyle.h2Bold,
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        'Heading 2 Reg',
                        style: IFTheme.textStyle.h2Reg,
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        'Body Bold',
                        style: IFTheme.textStyle.bodyBold,
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        'Body Reg',
                        style: IFTheme.textStyle.bodyReg,
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Expanded(
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: [
                                  IFTheme.button.baseButton(
                                    label: 'Primary',
                                    type: ButtonType.primary,
                                  ),
                                  IFTheme.button.baseButton(
                                    label: 'Success',
                                    type: ButtonType.success,
                                  ),
                                  IFTheme.button.baseButton(
                                    label: 'Warning',
                                    type: ButtonType.warning,
                                  ),
                                  IFTheme.button.baseButton(
                                    label: 'Danger',
                                    type: ButtonType.danger,
                                  ),
                                  IFTheme.button.baseButton(
                                    label: 'Danger',
                                    type: ButtonType.disabled,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Expanded(
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: [
                                  IFTheme.button.baseButton(
                                    label: 'Primary',
                                    type: ButtonType.primary,
                                    iconPosition: ButtonIconPosition.left,
                                  ),
                                  IFTheme.button.baseButton(
                                    label: 'Outline',
                                    type: ButtonType.outline,
                                    iconPosition: ButtonIconPosition.right,
                                  ),
                                  IFTheme.button.baseButton(
                                    label: 'Disabled',
                                    type: ButtonType.disabled,
                                    iconPosition: ButtonIconPosition.right,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Expanded(
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: [
                                  IFTheme.button.baseButton(
                                    label: 'Large No Outline',
                                    type: ButtonType.outline,
                                    noBorder: true,
                                    mode: ButtonMode.large,
                                    iconPosition: ButtonIconPosition.left,
                                  ),
                                  IFTheme.button.baseButton(
                                    label: 'Large Outline',
                                    type: ButtonType.outline,
                                    mode: ButtonMode.large,
                                    iconPosition: ButtonIconPosition.right,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Expanded(
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: [
                                  IFTheme.button.baseButton(
                                    type: ButtonType.primary,
                                    icon: SvgPicture.asset(
                                      'assets/svgs/plus-outlined.svg',
                                      colorFilter: ColorFilter.mode(
                                        IFTheme.color.white,
                                        BlendMode.srcIn,
                                      ),
                                    ),
                                    mode: ButtonMode.rounded,
                                  ),
                                  IFTheme.button.baseButton(
                                    type: ButtonType.success,
                                    icon: SvgPicture.asset(
                                      'assets/svgs/plus-outlined.svg',
                                      colorFilter: ColorFilter.mode(
                                        IFTheme.color.white,
                                        BlendMode.srcIn,
                                      ),
                                    ),
                                    mode: ButtonMode.circle,
                                  ),
                                  IFTheme.button.baseButton(
                                    type: ButtonType.warning,
                                    icon: SvgPicture.asset(
                                      'assets/svgs/plus-outlined.svg',
                                      colorFilter: ColorFilter.mode(
                                        IFTheme.color.white,
                                        BlendMode.srcIn,
                                      ),
                                    ),
                                    mode: ButtonMode.rounded,
                                  ),
                                  IFTheme.button.baseButton(
                                    label: 'Danger',
                                    type: ButtonType.danger,
                                    icon: SvgPicture.asset(
                                      'assets/svgs/plus-outlined.svg',
                                      colorFilter: ColorFilter.mode(
                                        IFTheme.color.white,
                                        BlendMode.srcIn,
                                      ),
                                    ),
                                    mode: ButtonMode.circle,
                                  ),
                                  IFTheme.button.baseButton(
                                    type: ButtonType.outline,
                                    icon: SvgPicture.asset(
                                      'assets/svgs/plus-outlined.svg',
                                      colorFilter: ColorFilter.mode(
                                        IFTheme.color.blue,
                                        BlendMode.srcIn,
                                      ),
                                    ),
                                    mode: ButtonMode.rounded,
                                  ),
                                  IFTheme.button.baseButton(
                                    type: ButtonType.outlineGreen,
                                    icon: SvgPicture.asset(
                                      'assets/svgs/plus-outlined.svg',
                                      colorFilter: ColorFilter.mode(
                                        IFTheme.color.blue,
                                        BlendMode.srcIn,
                                      ),
                                    ),
                                    mode: ButtonMode.circle,
                                  ),
                                  IFTheme.button.baseButton(
                                    type: ButtonType.outlineRed,
                                    icon: SvgPicture.asset(
                                      'assets/svgs/plus-outlined.svg',
                                      colorFilter: ColorFilter.mode(
                                        IFTheme.color.blue,
                                        BlendMode.srcIn,
                                      ),
                                    ),
                                    mode: ButtonMode.rounded,
                                  ),
                                  IFTheme.button.baseButton(
                                    type: ButtonType.disabled,
                                    icon: SvgPicture.asset(
                                      'assets/svgs/plus-outlined.svg',
                                      colorFilter: ColorFilter.mode(
                                        IFTheme.color.white,
                                        BlendMode.srcIn,
                                      ),
                                    ),
                                    mode: ButtonMode.circle,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Expanded(
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: [
                                  IFTheme.button.baseButton(
                                    label: 'Outline',
                                    type: ButtonType.outline,
                                  ),
                                  IFTheme.button.baseButton(
                                    label: 'No Outline',
                                    type: ButtonType.outline,
                                    noBorder: true,
                                  ),
                                  IFTheme.button.baseButton(
                                    label: 'Outline green',
                                    type: ButtonType.outlineGreen,
                                  ),
                                  IFTheme.button.baseButton(
                                    label: 'Outline red',
                                    type: ButtonType.outlineRed,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Expanded(
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: [
                                  IFTheme.button.baseButton(
                                    label: 'Primary Dialog',
                                    type: ButtonType.primary,
                                    onPressed: () {
                                      showDialog(
                                        context: context,
                                        builder: (context) {
                                          return IFTheme.dialog.baseDialog(
                                            context: context,
                                          );
                                        },
                                      );
                                    },
                                  ),
                                  IFTheme.button.baseButton(
                                    label: 'Warning Dialog',
                                    type: ButtonType.warning,
                                    onPressed: () {
                                      showDialog(
                                        context: context,
                                        builder: (context) {
                                          return IFTheme.dialog.baseDialog(
                                            context: context,
                                            type: DialogType.warning,
                                          );
                                        },
                                      );
                                    },
                                  ),
                                  IFTheme.button.baseButton(
                                    label: 'Info Dialog',
                                    type: ButtonType.outline,
                                    onPressed: () {
                                      showDialog(
                                        context: context,
                                        builder: (context) {
                                          return IFTheme.dialog.baseDialog(
                                            context: context,
                                            type: DialogType.info,
                                          );
                                        },
                                      );
                                    },
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Expanded(
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: [
                                  IFTheme.button.baseButton(
                                    label: 'Primary Toast',
                                    type: ButtonType.outline,
                                    onPressed: () {
                                      showDialog(
                                        context: context,
                                        builder: (context) {
                                          return IFTheme.dialog.baseDialog(
                                            context: context,
                                          );
                                        },
                                      );
                                    },
                                  ),
                                  IFTheme.button.baseButton(
                                    label: 'Warning Toast',
                                    type: ButtonType.outline,
                                    onPressed: () {
                                      showDialog(
                                        context: context,
                                        builder: (context) {
                                          return IFTheme.dialog.baseDialog(
                                            context: context,
                                            type: DialogType.warning,
                                          );
                                        },
                                      );
                                    },
                                  ),
                                  IFTheme.button.baseButton(
                                    label: 'Info Toast',
                                    type: ButtonType.outline,
                                    onPressed: () {
                                      showDialog(
                                        context: context,
                                        builder: (context) {
                                          return IFTheme.dialog.baseDialog(
                                            context: context,
                                            type: DialogType.info,
                                          );
                                        },
                                      );
                                    },
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Expanded(
                            child: SingleChildScrollView(
                              child: Row(
                                children: [
                                  IFTheme.chip.baseChip(
                                    label: 'Active chip',
                                    active: true,
                                  ),
                                  IFTheme.chip.baseChip(
                                    label: 'Inactive chip',
                                    active: false,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Form(
                        autovalidateMode: AutovalidateMode.always,
                        child: Column(
                          children: [
                            IFTheme.input.baseInput(
                              controller: inputCtl,
                              title: 'Required input',
                              hint: 'This is hint',
                              required: true,
                              showClearbutton: true,
                              showSuffix: true,
                              validator: (s) =>
                                  IFTheme.validator.nikValidator(s),
                            ),
                            IFTheme.input.baseInput(
                              title: 'Optional input',
                              showPrefix: true,
                              required: false,
                            ),
                            IFTheme.input.baseInput(
                              title: 'Long text input',
                              required: false,
                              longText: true,
                            ),
                            IFTheme.input.baseInput(
                              title: 'Disabled input',
                              hint: 'This is hint',
                              enabled: false,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
