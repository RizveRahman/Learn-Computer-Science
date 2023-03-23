import 'package:flutter/material.dart';

import '../../../../../constants/text_string.dart';

class DashboardSearchBarWidget extends StatelessWidget {
  const DashboardSearchBarWidget({
    super.key,
    required this.textTheme,
  });

  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          border: Border(left: BorderSide(width: 3))),
      padding:
      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            rDashboardSearch,
            style: textTheme.headline2
                ?.apply(color: Colors.grey.withOpacity(0.5)),
          ),
          const Icon(
            Icons.mic,
            size: 25,
          ),
        ],
      ),
    );
  }
}