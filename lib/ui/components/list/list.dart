import 'package:flutter/material.dart';
import 'package:mumet/ui/colors/colors.dart';

class ListWidget extends StatelessWidget {
  final String title;
  final String? subtitle;
  final String? trailing;
  final String leading;
  final VoidCallback? onTap;

  const ListWidget({
    Key? key,
    required this.title,
    this.subtitle,
    this.trailing,
    required this.leading,
    this.onTap,
  }) : super(key: key);

  EdgeInsetsGeometry get padding {
    if (subtitle == null) return const EdgeInsets.only(left: 20.0, right: 20.0, top: 8.0, bottom: 8.0);
    return const EdgeInsets.only(left: 20.0, right: 20.0);
  }

  Widget? _buildSubtitle(ThemeData theme) {
    if (subtitle == null) return null;
    return Text(subtitle!, style: theme.textTheme.labelMedium);
  }

  Widget? _buildTrailing(ThemeData theme) {
    if (trailing == null) return null;
    return Text(trailing!, style: theme.textTheme.titleSmall!.copyWith(color: XColors.DANGER));
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDarkMode = theme.brightness == Brightness.dark;

    return ListTile(
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(8), // Image border
        child: Container(
          width: 40,
          height: 40,
          color: isDarkMode? XColors.DARK_LIGHT_1 : XColors.GREY_LIGHT_1, // Image radius
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.network('https://cdn-icons-png.flaticon.com/512/198/198416.png', fit: BoxFit.cover),
          ),
        ),
      ),
      title: Text(title, style: theme.textTheme.titleSmall),
      subtitle: _buildSubtitle(theme),
      trailing: _buildTrailing(theme),
      onTap: onTap,
    );
  }
}
