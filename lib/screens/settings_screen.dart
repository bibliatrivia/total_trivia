import 'package:flutter/material.dart';

import '../services/progress_service.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  static const green = Color(0xFF305A49);
  static const cream = Color(0xFFFFF8E9);
  bool _resetting = false;

  Future<void> _confirmReset() async {
    final confirmed = await showDialog<bool>(
      context: context,
      barrierDismissible: false,
      builder: (dialogContext) => AlertDialog(
        title: const Text('Reset all progress?'),
        content: const Text(
          'This permanently erases all Total Trivia best scores, quiz attempts, '
          'perfect scores, progress, and earned achievements on this device.\n\n'
          'This cannot be undone.',
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(dialogContext, false),
            child: const Text('CANCEL'),
          ),
          FilledButton(
            style: FilledButton.styleFrom(backgroundColor: Colors.red.shade700),
            onPressed: () => Navigator.pop(dialogContext, true),
            child: const Text('RESET EVERYTHING'),
          ),
        ],
      ),
    );

    if (confirmed != true || !mounted) return;

    setState(() => _resetting = true);
    await ProgressService.resetAll();
    if (!mounted) return;
    setState(() => _resetting = false);

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('All Total Trivia progress has been reset.'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) => Scaffold(
    backgroundColor: cream,
    appBar: AppBar(
      title: const Text('Settings'),
      actions: [
        IconButton(
          icon: const Icon(Icons.home),
          tooltip: 'Home',
          onPressed: () =>
              Navigator.of(context).popUntil((route) => route.isFirst),
        ),
      ],
    ),
    body: SafeArea(
      child: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          const Text(
            'Progress & Data',
            style: TextStyle(
              color: green,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 12),
          const Text('Your trivia progress is stored locally on this device.'),
          const SizedBox(height: 20),
          Card(
            child: ListTile(
              leading: Icon(
                Icons.delete_forever,
                color: Colors.red.shade700,
                size: 30,
              ),
              title: const Text(
                'Reset Progress',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: const Text(
                'Erase best scores, attempts, perfect scores, progress, '
                'and achievements.',
              ),
              trailing: _resetting
                  ? const SizedBox(
                      width: 22,
                      height: 22,
                      child: CircularProgressIndicator(strokeWidth: 2),
                    )
                  : const Icon(Icons.chevron_right),
              onTap: _resetting ? null : _confirmReset,
            ),
          ),
        ],
      ),
    ),
  );
}
