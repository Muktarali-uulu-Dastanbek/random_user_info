import 'package:flutter/material.dart';
import 'package:tapbarr_exemple/internal/helpers/text_helper.dart';

class MainInfo extends StatelessWidget {
  const MainInfo({
    super.key,
    required this.titleName,
    required this.firstName,
    required this.lastName,
    required this.gender,
    required this.dateOfBirth,
    required this.age,
  });

  final String? titleName;
  final String? firstName;
  final String? lastName;
  final String? gender;
  final DateTime? dateOfBirth;
  final int? age;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Name:",
              style: TextHelper.w600s16,
            ),
            Text(
              "$titleName",
              style: TextHelper.w600s16,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "First name:",
              style: TextHelper.w600s16,
            ),
            Text(
              "$firstName",
              style: TextHelper.w600s16,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Last name:",
              style: TextHelper.w600s16,
            ),
            Text(
              "$lastName",
              style: TextHelper.w600s16,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Gender:",
              style: TextHelper.w600s16,
            ),
            Text(
              "$gender",
              style: TextHelper.w600s16,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Date of birth:",
              style: TextHelper.w600s16,
            ),
            Text(
              "$dateOfBirth",
              style: TextHelper.w600s16,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Age:",
              style: TextHelper.w600s16,
            ),
            Text(
              "$age",
              style: TextHelper.w600s16,
            ),
          ],
        ),
      ],
    );
  }
}
