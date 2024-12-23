#!/bin/bash

# Check if theHarvester is installed
if ! command -v theHarvester &> /dev/null
then
    echo "theHarvester is not installed. Please install it first."
    exit 1
fi

# Display customized banner
echo "==============================================="
echo "       _   _  _   _   _  __   _______  __      "
echo "      | \ | || | | | | | \ \ / /_   _| \ \     "
echo "      |  \| || |_| | | |  \ V /  | |    \ \    "
echo "      | . \ ||  _  | | |   | |   | |    / /    "
echo "      | |\  || | | | | |___| |_ _| |_  /_/     "
echo "      \_| \_/\_| |_/\_____/\_/ \___/ (_)       "
echo "             Customized by nkHarvest          "
echo "==============================================="

# Prompt for the domain
read -p "Enter the domain to scan (e.g., example.com): " DOMAIN

# Validate input
if [[ -z "${DOMAIN}" ]]; then
    echo "Domain is required. Exiting."
    exit 1
fi

# Prompt for the result limit
read -p "Enter the result limit (default is 500): " LIMIT

# Set default limit if none is provided
if [[ -z "${LIMIT}" ]]; then
    LIMIT=500
fi

# Default source
SOURCE="all"

# Run theHarvester
echo "Running nkHarvest on domain: ${DOMAIN} with source: ${SOURCE} and limit: ${LIMIT}"
theHarvester -d "${DOMAIN}" -b "${SOURCE}" -l "${LIMIT}"

# Save output to a file
OUTPUT_FILE="${DOMAIN}_nkharvest_results.txt"
theHarvester -d "${DOMAIN}" -b "${SOURCE}" -l "${LIMIT}" > "${OUTPUT_FILE}"

echo "Results saved to ${OUTPUT_FILE}"
echo "Thank you for using nkHarvest!"
