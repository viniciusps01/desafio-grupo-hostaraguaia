import 'package:flutter/material.dart';

class SearchBar extends StatefulWidget {
  final Function(String) onSearchIconPressed;
  final Function(bool) onSearchEnableStateChanged;
  final bool isSearchEnabled;
  final Color backgroundColor;
  final Color searchIconActiveColor;

  const SearchBar({
    Key? key,
    required this.onSearchIconPressed,
    required this.backgroundColor,
    required this.searchIconActiveColor,
    required this.onSearchEnableStateChanged,
    required this.isSearchEnabled,
  }) : super(key: key);

  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  final _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        left: 15,
        right: 5,
        top: 8,
        bottom: 8,
      ),
      decoration: BoxDecoration(
          color: widget.backgroundColor,
          borderRadius: BorderRadius.circular(100),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade400,
              offset: const Offset(1, 1),
              blurRadius: 3,
            )
          ]),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: _textController,
              onChanged: (text) {
                if (_shouldUpdate(text)) {
                  widget.onSearchEnableStateChanged(_isSearchEnabled);
                }
              },
              decoration: InputDecoration.collapsed(
                hintText: 'Digite o nome do pokémon...',
                hintStyle: TextStyle(
                  color: Colors.grey.shade400,
                  fontSize: 12,
                ),
              ),
              style: TextStyle(
                color: Colors.grey.shade700,
                fontSize: 12,
              ),
            ),
          ),
          InkWell(
            onTap: onSearch,
            child: Icon(
              Icons.search,
              color: widget.isSearchEnabled
                  ? widget.searchIconActiveColor
                  : Colors.grey.shade400,
            ),
          )
        ],
      ),
    );
  }

  bool get _isSearchEnabled => !_isEmpty;

  bool get _isEmpty => _textController.text.isEmpty;

  bool _shouldUpdate(String text) => text.length <= 1;

  void onSearch() {
    if (!_isSearchEnabled) return;

    widget.onSearchIconPressed(_textController.text);
  }
}
