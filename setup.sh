#!/bin/bash

# Xiaoyu Universe Setup Script
# One-click deployment for the persistent multi-agent system

echo "🌧️ Xiaoyu Universe Setup"
echo "========================="

# Check Python version
echo "Checking Python version..."
python3 --version || python --version

# Create virtual environment
echo "Creating virtual environment..."
python3 -m venv venv || python -m venv venv

# Activate virtual environment
echo "Activating virtual environment..."
if [ -f "venv/bin/activate" ]; then
    source venv/bin/activate
elif [ -f "venv/Scripts/activate" ]; then
    source venv/Scripts/activate
fi

# Install dependencies
echo "Installing dependencies..."
pip install --upgrade pip
pip install -r requirements.txt

# Create necessary directories
echo "Creating project directories..."
mkdir -p data/memory
mkdir -p data/logs
mkdir -p config

# Initialize system
echo "Initializing Xiaoyu Universe system..."
python src/init.py

echo ""
echo "✅ Setup complete!"
echo "🌧️ Xiaoyu Universe is ready to run."
echo ""
echo "To start the system:"
echo "  source venv/bin/activate  # Activate virtual environment"
echo "  python src/main.py        # Start Xiaoyu Universe"
echo ""
echo "For more information, see the README.md file."