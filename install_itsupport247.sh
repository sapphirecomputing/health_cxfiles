#!/bin/bash

# Define the URL of the package
PACKAGE_URL="https://prod.setup.itsupport247.net/darwin/DPMA/64/Main%20(HealthShare)_macOS_ITSPlatform_TKN317a0b18-8373-4b60-8802-5085f1025703/PKG/setup"

# Define the location where the package will be downloaded
DOWNLOAD_PATH="$HOME/Downloads/itsupport247_package.pkg"

# Download the package
echo "Downloading package..."
curl -L "$PACKAGE_URL" -o "$DOWNLOAD_PATH"

# Check if the download was successful
if [ -f "$DOWNLOAD_PATH" ]; then
    echo "Download successful. Installing package..."
    
    # Install the package
    sudo installer -pkg "$DOWNLOAD_PATH" -target /

    echo "Installation complete."
else
    echo "Download failed. Package not found at $DOWNLOAD_PATH."
fi
