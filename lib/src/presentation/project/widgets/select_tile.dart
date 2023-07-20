import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:do_it/src/core/app_export.dart';

class SelectTile extends StatelessWidget {
  const SelectTile({
    super.key,
    required this.title,
    required this.currency,
    this.isPng,
    this.onTap,
    this.trailing,
  });
  final Widget? trailing;

  final String title;

  final String currency;
  final void Function()? onTap;
  final bool? isPng;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return InkWell(
      onTap: onTap,
      child: Container(
        width: MediaQuery.sizeOf(context).width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            border: Border.all(
              color: Colors.grey,
              width: 0.3,
            )),
        child: ListTile(
            contentPadding: const EdgeInsets.all(AppDimensions.small),
            leading: Container(
              height: 48,
              width: 48,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                border: Border.all(
                  color: Colors.grey,
                  width: 0.3,
                ),
              ),
              child: isPng != true
                  ? Center(
                      child: SvgPicture.asset(
                      currency,
                      color: theme.colorScheme.onError,
                    ))
                  : Center(child: Image.asset(currency)),
            ),
            title: Text(
              title,
              style: textTheme.headlineMedium
                  ?.copyWith(color: Colors.grey, fontSize: 12),
            ),
            trailing: const Icon(Icons.arrow_forward_ios_outlined)),
      ),
    );
  }
}
