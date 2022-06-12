import 'package:flutter/material.dart';

class UserWelcome extends StatelessWidget {
  const UserWelcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Hi, Rambha', style: theme.textTheme.labelLarge),
              const SizedBox(height: 4),
              Text('Welcome to mumet', style: theme.textTheme.titleMedium),
            ],
          ),
          const CircleAvatar(
            radius: 24,
            backgroundImage: NetworkImage('https://d2qp0siotla746.cloudfront.net/img/use-cases/profile-picture/template_3.jpg'),
          ),
        ],
      ),
    );
  }
}