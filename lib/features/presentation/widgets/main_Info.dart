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
              style: Theme.of(context).textTheme.titleLarge,
            ),
            Text(
              "$titleName",
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "First name:",
              style: Theme.of(context).textTheme.titleLarge,
            ),
            Text(
              "$firstName",
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Last name:",
              style: Theme.of(context).textTheme.titleLarge,
            ),
            Text(
              "$lastName",
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Gender:",
              style: Theme.of(context).textTheme.titleLarge,
            ),
            Text(
              "$gender",
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Date of birth:",
              style: Theme.of(context).textTheme.titleLarge,
            ),
            Text(
              "$dateOfBirth",
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Age:",
              style: Theme.of(context).textTheme.titleLarge,
            ),
            Text(
              "$age",
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ],
        ),
      ],
    );
  }
}
