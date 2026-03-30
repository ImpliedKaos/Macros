# Control Hub System Documentation

## System Architecture
The Control Hub is designed with a modular architecture that allows for flexibility and scalability. It comprises the following main components:
- **Frontend**: The interface for users to interact with the system, built using modern web technologies.
- **Backend**: A robust server-side application that handles the logic and data processing.
- **Database**: Storage for all persistent data, utilizing a relational database management system to ensure data integrity.

## Two-Tier Role System
The system implements a two-tier role system to manage user access and permissions efficiently:
1. **Administrator**: Full access to all features, including user management and system settings.
2. **User**: Limited access with permissions tailored to specific tasks.

The role system allows for granular control over functionalities and enhances security by restricting access according to the user's role.

## Adding New Macros
To add new macros to the Control Hub, follow these steps:
1. Navigate to the macros directory in the project.
2. Create a new macro file named according to the naming conventions.
3. Define the macro logic using clear and concise code.
4. Document the macro's purpose and usage within the file for future reference.

Example:
```javascript
// Example Macro: DataCleanup
function dataCleanup() {
    // Implementation goes here
}
```

## Macro-to-Macro Parameter Passing
Macros can communicate with one another by passing parameters. Here’s how:
1. Define parameters in the macro signature.
2. Use a file-based approach to store the parameters if they are complex.

### Example of Parameter Passing
```javascript
// Macro A
function macroA(param) {
    // Pass parameter to Macro B
    macroB(param);
}

// Macro B
function macroB(param) {
    console.log(param);
}
```

## Logging System Details
The logging system is vital for monitoring application behavior and troubleshooting issues:
- **Log Levels**: The system supports various log levels (INFO, WARN, ERROR) to categorize log messages.
- **Log File Location**: All logs are stored in the `/logs` directory. Ensure that the directory is writable by the process running the application.
- **Log Rotation**: Implement log rotation to prevent the log files from growing indefinitely.

## Setup Instructions
To set up the Control Hub on your local machine, follow these instructions:
1. Clone the repository:
   ```bash
   git clone https://github.com/ImpliedKaos/macros.git
   cd macros
   ```
2. Install dependencies:
   ```bash
   npm install
   ```
3. Configure environment variables:
   ```bash
   cp .env.example .env
   ```
   Modify the `.env` file as needed.
4. Start the application:
   ```bash
   npm start
   ```

After following these steps, you should have the Control Hub up and running!