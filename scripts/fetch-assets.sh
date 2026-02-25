#!/usr/bin/env bash
set -euo pipefail
mkdir -p static/images

# Download favicon
curl -L "https://thisiscodeworks.com/wp-content/uploads/2024/12/cropped-favicon-32x32.png" -o static/images/cropped-favicon-32x32.png

# Download hero and secondary images
curl -L "https://thisiscodeworks.com/wp-content/uploads/2024/12/pexels-photo-1181271.jpeg" -o static/images/pexels-photo-1181271.jpeg
curl -L "https://thisiscodeworks.com/wp-content/uploads/2024/12/pexels-photo-16129700.jpeg" -o static/images/pexels-photo-16129700.jpeg

# (Optional) download about image if available at this path
# curl -L "https://thisiscodeworks.com/wp-content/uploads/2024/12/about-image.jpg" -o static/images/about.jpg

echo "Assets downloaded to static/images/"
