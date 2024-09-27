#!/bin/bash

# Check if a URL argument is provided
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <url>"
    exit 1
fi

# HTML content fetched from the provided URL
html_response=$(curl -sL "https://gtfobins.github.io/gtfobins/$1")
# Extract the <code> element and its attributes
code_element=$(echo "$html_response" | grep '<code>' | sed 's/&quot;/'/g)

# Extract the text inside the <code> element
#!/bin/bash
# ... existing code ...
# Extract the text inside the <code> element
code_text=$(echo "$html_response" | grep '<code[^>]*>.*?</code>')
# ... existing code ...
# Output the results
echo "Full code element: $code_element"
echo "Text inside code: $code_text"
