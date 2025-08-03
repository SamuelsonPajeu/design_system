import 'package:design_system/core/components/molecules/chip/ds_chip.dart';
import 'package:flutter/material.dart';

class CustomChips extends StatefulWidget {
  const CustomChips({super.key});

  @override
  State<CustomChips> createState() => _CustomChipsState();
}

class _CustomChipsState extends State<CustomChips> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Input Chips Variations'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Label Only'),
              DSChip(
                typeOfChip: TypeOfChip.labelOnly,
                label: 'Label',
                onPressed: () {},
              ),
              const SizedBox(height: 16),
              const Text('Label & Trailing Icon'),
              DSChip(
                typeOfChip: TypeOfChip.labelAndTralingIcon,
                label: 'Label',
                onPressed: () {},
              ),
              const SizedBox(height: 16),
              const Text('Leading Icon & Label'),
              DSChip(
                typeOfChip: TypeOfChip.labelAndLeadingIcon,
                avatar: const Icon(Icons.lock),
                label: 'Label',
                onPressed: () {},
              ),
              const SizedBox(height: 16),
              const Text('Leading Icon, Label & Trailing Icon'),
              DSChip(
                typeOfChip: TypeOfChip.labelAndAvatarAndIcon,
                avatar: const Icon(Icons.lock),
                label: 'Label',
                onPressed: () {},
              ),
              const SizedBox(height: 16),
              const Text('Label & Avatar'),
              DSChip(
                typeOfChip: TypeOfChip.labelAndAvatar,
                avatar: const Icon(
                  Icons.people,
                  size: 10,
                ),
                label: 'Label',
                onPressed: () {},
              ),
              const SizedBox(height: 16),
              const Text('Label, Avatar & Trailing Icon'),
              DSChip(
                typeOfChip: TypeOfChip.labelAvatarAndIcon,
                avatar: const Icon(
                  Icons.manage_accounts,
                  size: 10,
                ),
                label: 'Label',
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
