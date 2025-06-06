// Import necessary packages
import 'package:flutter/material.dart';

// SearchWidget provides a search input field for finding food items
class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // Get the current theme for consistent styling
    final theme = Theme.of(context);

    return TextField(
      decoration: InputDecoration(
        // Placeholder text for the search field
        hintText: 'Search for food...',
        // Style for the placeholder text
        hintStyle: theme.textTheme.bodyMedium?.copyWith(
          color: theme.colorScheme.onSurface.withAlpha((0.6 * 255).toInt()),
        ),
        // Search icon prefix
        prefixIcon: Icon(
          Icons.search,
          color: theme.colorScheme.onSurface.withAlpha((0.6 * 255).toInt()),
        ),
        // Fill the background of the search field
        filled: true,
        fillColor: theme.colorScheme.surface,
        // Border styling for the search field
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
        // Border styling when the field is not focused
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
        // Border styling when the field is focused
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: theme.colorScheme.primary, width: 2),
        ),
        // Padding inside the search field
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 16,
        ),
      ),
    );
  }
}
