# Two Open-Source Node.js Tools for Automation

I recently created two CLI tools to automate common tasks: file organization and data cleaning. Both are MIT licensed and available on npm.

## File Organizer

File Organizer is a CLI tool that automatically organizes files into categories based on their file type.

### Features

- **Auto-categorization**: Automatically moves files to appropriate directories
  - Images → `images/`
  - Videos → `videos/`
  - Audio → `audios/`
  - Documents → `documents/`
  - Archives → `archives/`

- **Customizable rules**: Modify the configuration to fit your needs

- **Cross-platform**: Works on Windows, Mac, and Linux

- **Backup support**: Creates backups before moving files

### Installation

```bash
npm install -g a-plan-tools-file-organizer
```

### Usage

```bash
# Organize files in a directory
organize ~/Downloads

# Preview without moving files
organize ~/Downloads --dry-run

# Use with Node.js directly
npx a-plan-tools-file-organizer ~/Downloads
```

### Example Output

```
=== File Organizer ===
Directory: /Users/username/Downloads
===================
[INFO] Scanning directory...
[INFO] Found 15 files
[INFO] Moving: photo.jpg → images/photo.jpg
[INFO] Moving: video.mp4 → videos/video.mp4
[SUCCESS] Finished! Moved 15 files

=== Summary ===
Scanned: 15 files
Moved: 15
Errors: 0
```

## Data Cleaner

Data Cleaner is a CLI tool that cleans and standardizes data files.

### Features

- **Multiple format support**: CSV, JSON, XML, TSV

- **Automatic cleaning**:
  - Removes empty lines
  - Trims whitespace
  - Normalizes line endings
  - Handles quoted commas in CSV

- **Backup support**: Creates `.backup` files before cleaning

- **Validation**: Validates data structure after cleaning

### Installation

```bash
npm install -g a-plan-tools-data-cleaner
```

### Usage

```bash
# Clean a CSV file
data-cleaner data.csv

# Clean a JSON file
data-cleaner data.json

# Preview without modifying
data-cleaner data.csv --dry-run

# Use with Node.js directly
npx a-plan-tools-data-cleaner data.csv
```

### Example Output

```
=== Data Cleaner ===
File: data.csv
Format: csv
===================
[INFO] Backup created: data.csv.backup
[INFO] Read file: data.csv
[INFO] Size: 1024 bytes
[SUCCESS] Saved to: data.csv

=== Summary ===
Scanned: 1 file
Cleaned: 1
Validated: 1
Errors: 0
Warnings: 0
```

## Why I Built These Tools

As a developer, I was tired of manually organizing downloaded files and cleaning messy data. Every week, I spent hours:

- Organizing files into folders
- Cleaning CSV files for analysis
- Standardizing JSON data
- Removing empty lines and whitespace

I decided to build tools to automate these tasks. The result is two open-source CLI tools that save me hours every week.

## Technical Details

Both tools are built with Node.js and use:

- **Command-line argument parsing**: For handling CLI arguments
- **File system operations**: For reading and writing files
- **Regular expressions**: For file type detection
- **Stream processing**: For efficient file handling

### File Organizer Architecture

```
1. Scan directory for files
2. Identify file type by extension
3. Apply classification rules
4. Move files to target directory
5. Generate summary report
```

### Data Cleaner Architecture

```
1. Detect file format
2. Create backup file
3. Read file content
4. Apply format-specific cleaning rules
5. Validate data structure
6. Save cleaned file
7. Generate summary report
```

## Use Cases

### File Organizer

- Organize downloads folder
- Automate photo organization
- Clean up project files
- Archive old files
- Create file backups

### Data Cleaner

- Clean CSV files for analysis
- Standardize JSON data from APIs
- Prepare XML for parsing
- Clean TSV files from spreadsheets
- Remove formatting from downloaded data

## Contributing

Both tools are open source and MIT licensed. I welcome contributions!

### File Organizer

- Add new file type categories
- Improve error handling
- Add more customization options
- Improve performance

### Data Cleaner

- Add more format support
- Improve cleaning rules
- Add advanced validation
- Improve error messages

## Getting Help

- **GitHub Issues**: https://github.com/101530/a-plan-tools/issues
- **Documentation**: See the README files in the repository
- **NPM Packages**:
  - https://www.npmjs.com/package/a-plan-tools-file-organizer
  - https://www.npmjs.com/package/a-plan-tools-data-cleaner

## License

Both tools are MIT licensed. Feel free to use, modify, and distribute them.

## Conclusion

These two tools have saved me countless hours of manual work. I hope they help you too!

If you find these tools useful, please consider:
- ⭐ Star the GitHub repository
- 🐛 Report bugs or suggest features
- 📖 Share with your network

Happy automating! 🚀

---

**Published**: March 15, 2026
**Author**: 101530
**License**: MIT
**GitHub**: https://github.com/101530/a-plan-tools
