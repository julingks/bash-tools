#!/usr/bin/env bash

echo -n "Enter your name and press [ENTER]: " 
read var_name
echo "Your name is: $var_name"


# -r : backslash does not act as an escape character.
# -d : delimiter
read -r -d '' text <<EOF
text
blah1
blah2
blah3
EOF

echo $text

# NOTE
# To preerve newline charagter, use double qoutes
echo "$text"
