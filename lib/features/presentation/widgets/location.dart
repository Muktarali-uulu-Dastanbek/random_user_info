import 'package:flutter/material.dart';
import 'package:tapbarr_exemple/internal/helpers/text_helper.dart';

class Location extends StatelessWidget {
  const Location({
    super.key,
    required this.phoneNumber,
    required this.location,
    required this.city,
    required this.email,
    required this.age,
  });

  final String? phoneNumber;
  final String? location;
  final String? city;
  final String? email;
  final int? age;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Phone number:",
              style: Theme.of(context).textTheme.titleLarge,
            ),
            Text(
              "$phoneNumber",
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Location:",
              style: Theme.of(context).textTheme.titleLarge,
            ),
            Text(
              "$location",
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "City:",
              style: Theme.of(context).textTheme.titleLarge,
            ),
            Text(
              "$city",
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Email:",
              style: Theme.of(context).textTheme.titleLarge,
            ),
            Text(
              "$email",
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
