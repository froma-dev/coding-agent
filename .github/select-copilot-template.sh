#!/bin/bash

# Script to select and copy a copilot-instructions.md template
# This script helps you choose a template and copy it to .github/copilot-instructions.md

set -e

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Get the script's directory
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
TEMPLATES_DIR="$SCRIPT_DIR/copilot-instructions-templates"
TARGET_FILE="$SCRIPT_DIR/copilot-instructions.md"

echo -e "${BLUE}=== GitHub Copilot Instructions Template Selector ===${NC}\n"

# Check if templates directory exists
if [ ! -d "$TEMPLATES_DIR" ]; then
    echo -e "${RED}Error: Templates directory not found at $TEMPLATES_DIR${NC}"
    exit 1
fi

# List available templates
echo "Available templates:"
echo ""
echo "  1) basic-template.md       - Minimal template for quick setup (recommended for most projects)"
echo "  2) python-template.md      - Comprehensive Python project template"
echo "  3) javascript-template.md  - Comprehensive JavaScript/Node.js project template"
echo ""

# Prompt for selection with default
read -p "Select a template [1-3] (default: 1): " choice

# Default to 1 if empty
choice=${choice:-1}

# Map selection to template file
case $choice in
    1)
        TEMPLATE_FILE="$TEMPLATES_DIR/basic-template.md"
        TEMPLATE_NAME="Basic Template"
        ;;
    2)
        TEMPLATE_FILE="$TEMPLATES_DIR/python-template.md"
        TEMPLATE_NAME="Python Template"
        ;;
    3)
        TEMPLATE_FILE="$TEMPLATES_DIR/javascript-template.md"
        TEMPLATE_NAME="JavaScript Template"
        ;;
    *)
        echo -e "${RED}Invalid selection. Please choose 1, 2, or 3.${NC}"
        exit 1
        ;;
esac

# Check if template file exists
if [ ! -f "$TEMPLATE_FILE" ]; then
    echo -e "${RED}Error: Template file not found at $TEMPLATE_FILE${NC}"
    exit 1
fi

# Check if target file already exists
if [ -f "$TARGET_FILE" ]; then
    echo -e "${YELLOW}Warning: $TARGET_FILE already exists.${NC}"
    read -p "Do you want to overwrite it? [y/N]: " overwrite
    overwrite=${overwrite:-N}
    
    if [[ ! $overwrite =~ ^[Yy]$ ]]; then
        echo -e "${YELLOW}Operation cancelled.${NC}"
        exit 0
    fi
    
    # Backup existing file
    BACKUP_FILE="${TARGET_FILE}.backup-$(date +%Y%m%d-%H%M%S)"
    cp "$TARGET_FILE" "$BACKUP_FILE"
    echo -e "${GREEN}Existing file backed up to: $BACKUP_FILE${NC}"
fi

# Copy the template
cp "$TEMPLATE_FILE" "$TARGET_FILE"

echo -e "${GREEN}✓ Successfully copied $TEMPLATE_NAME to $TARGET_FILE${NC}"
echo ""
echo "Next steps:"
echo "  1. Edit $TARGET_FILE to customize it for your project"
echo "  2. Replace placeholder values (marked with [brackets]) with your actual project details"
echo "  3. Commit the file to your repository"
echo ""
echo -e "${BLUE}GitHub Copilot will automatically use these instructions when working in this repository.${NC}"
