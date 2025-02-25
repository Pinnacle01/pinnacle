import 'package:flutter/material.dart';

class ScrollableNotesBox extends StatefulWidget {
  const ScrollableNotesBox({super.key});

  @override
  ScrollableNotesBoxState createState() => ScrollableNotesBoxState();
}

class ScrollableNotesBoxState extends State<ScrollableNotesBox> {
  final TextEditingController _notesController = TextEditingController();
  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 89, // Fixed height
      decoration: BoxDecoration(
        color: Colors.grey[900],
        borderRadius: BorderRadius.circular(10),
      ),
      padding: const EdgeInsets.all(8),
      child: Scrollbar(
        controller: _scrollController,
        thumbVisibility: true,
        child: TextField(
          controller: _notesController,
          maxLength: 500,
          maxLines: null, // Allows multiple lines inside
          keyboardType: TextInputType.multiline,
          scrollController: _scrollController, // Enables scrolling
          decoration: const InputDecoration(
            hintText: 'Notes...',
            border: InputBorder.none, // No outer border
            counterText: '', // Hides character counter
          ),
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
