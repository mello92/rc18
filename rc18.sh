#!/bin/bash

# Check if an argument is provided, if not read from stdin
if [ -z "$1" ]; then
    read -r endpoint
else
    endpoint="$1"
fi

# HTML content fetched from the provided URL
html_response=$(curl -s "https://gtfobins.github.io/gtfobins/$endpoint")
# Extract the <code> element and its attributes
code_element=$(echo "$html_response" | grep '<code>' | sed 's/&quot;/'/g)

# Extract the text inside the <code> element
# ... existing code ...
# Extract the text inside the <code> element
code_text=$(echo "$html_response" | grep '<code[^>]*>.*?</code>')
# ... existing code ...
# Output the results
echo "Full code element: $code_element"
echo "Text inside code: $code_text"
