# Data Directory Overview

The `data` directory is designed for temporary parameter passing between macros. It serves as a storage space for intermediary data that is needed during macro execution.

## Purpose
- Facilitate communication between different macros.
- Store temporary results that can be reused without needing to re-compute, saving processing time.

## Structure
- The directory contains various files representing data meant for specific macros.
- Each file should be clearly named to indicate its contents and the macro it is associated with.

## Usage
- Before running a macro, ensure the required data files are present in this directory.
- After executing a macro, any generated data should be saved in this directory for later use.

## Best Practices
- Keep the files organized and delete any data that is no longer needed to prevent clutter in the directory.
- Document any changes to the files or their expected formats to ensure consistency across macro executions.

## Contributing
- Contributions to expand this documentation or improve the data handling processes are welcome! Please follow the guidelines outlined in the contributing file.