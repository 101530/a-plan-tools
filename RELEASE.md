# Release Notes

## Version 1.0.0 - 2026-03-14

### 🎉 Release Overview

A-Plan Tools v1.0.0 is now available! This is the initial release featuring two powerful productivity tools:

1. **File Organizer** - Automatically organize your files into categorized directories
2. **Data Cleaner** - Clean and standardize your data files

### ✨ Key Features

#### File Organizer
- 🗂️ Smart file classification based on filename patterns
- 📁 Support for 7+ categories with sub-categories
- 🚀 One-command file organization
- 💡 Preview mode to see what will be changed
- 🔄 Move or copy file operations

#### Data Cleaner
- 🧹 Clean CSV, JSON, XML, and TSV files
- ✅ Automatic format detection
- 📊 Data structure validation
- 🔄 Encoding and line ending normalization
- 💾 Automatic backup before modifications

### 📦 Installation

```bash
git clone https://github.com/101530/a-plan-tools.git
cd a-plan-tools
npm install
```

### 🚀 Quick Start

#### File Organizer
```bash
# Organize your Downloads folder
node file-organizer.js ~/Downloads

# Preview changes without modifying files
node file-organizer.js ~/Downloads --dry-run
```

#### Data Cleaner
```bash
# Clean a CSV file
node data-cleaner.js data.csv

# Clean a JSON file with verbose output
node data-cleaner.js data.json --verbose
```

### 📚 Documentation

- [README](./README.md) - General information and usage
- [Usage Guide](./GITHUB-README.md) - Detailed usage instructions
- [API Documentation](./GITHUB-README.md#api-documentation) - API reference
- [Changelog](./CHANGELOG.md) - Version history

### 🤝 Contributing

We welcome contributions! Please read our [CONTRIBUTING.md](./CONTRIBUTING.md) for details.

### 📄 License

This project is licensed under the MIT License - see the [LICENSE](./LICENSE) file for details.

### 🙏 Acknowledgments

Thank you to all early adopters and contributors!

---

**Version:** 1.0.0
**Release Date:** 2026-03-14
**Status:** ✅ Stable
