import 'package:flutter/material.dart';
import 'package:tapbarr_exemple/internal/helpers/text_helper.dart';

class E_mail extends StatelessWidget {
  const E_mail({
    super.key,
    required this.firstName,
    required this.email,
    required this.userName,
    required this.phoneNumber,
    required this.cell,
    required this.registred,
  });

  final String? firstName;
  final String? email;
  final String? userName;
  final String? phoneNumber;
  final String? cell;
  final DateTime? registred;

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
              "$firstName",
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
              "User name:",
              style: Theme.of(context).textTheme.titleLarge,
            ),
            Text(
              "$userName",
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Phone:",
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
              "Cell:",
              style: Theme.of(context).textTheme.titleLarge,
            ),
            Text(
              "$cell",
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Registred:",
              style: Theme.of(context).textTheme.titleLarge,
            ),
            Text(
              "$registred",
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ],
        ),
      ],
    );
  }
}
