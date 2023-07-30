import 'package:cheese_client/src/common/option.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CategorySelectDialog extends HookConsumerWidget {
  final List<Option> options;
  final ValueChanged<List<Option>> onSubmit;
  final VoidCallback onClose;
  final List<Option> selectedOptions;
  const CategorySelectDialog({
    Key? key,
    required this.options,
    required this.onClose,
    required this.onSubmit,
    required this.selectedOptions,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedCategory = useState<List<Option>>(selectedOptions);

    void onChecked(Option option) {
      if (selectedCategory.value.contains(option)) {
        selectedCategory.value = selectedCategory.value
            .where((element) => element != option)
            .toList();
      } else {
        selectedCategory.value = [...selectedCategory.value, option];
      }
    }

    return AlertDialog(
      title: const Text('カテゴリーを選択してください'),
      content: SizedBox(
        width: 300,
        height: 300,
        child: ListView.builder(
          itemCount: options.length,
          itemBuilder: (context, index) {
            final option = options[index];
            return CheckboxListTile(
              title: Text(option.label),
              value: selectedCategory.value.contains(option),
              onChanged: (_) {
                onChecked(option);
              },
            );
          },
        ),
      ),
      actions: [
        TextButton(
          onPressed: onClose,
          child: const Text(
            'キャンセル',
          ),
        ),
        TextButton(
          onPressed: () => onSubmit(selectedCategory.value),
          child: const Text('決定',
              style:
                  TextStyle(color: Colors.blue, fontWeight: FontWeight.bold)),
        ),
      ],
    );
  }
}
