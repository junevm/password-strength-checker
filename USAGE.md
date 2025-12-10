# Quick Start Guide

## Running the Password Strength Checker

### Prerequisites

Choose one of the following:

- **Option 1**: Java 11+ and Maven 3.6+
- **Option 2**: Docker only

### Option 1: Run with Java/Maven

1. **Clone the repository:**

   ```bash
   git clone https://github.com/junevm/password-strength-checker.git
   cd password-strength-checker
   ```

2. **Build the project:**

   ```bash
   mvn clean package
   ```

3. **Run the application:**
   ```bash
   java -jar target/password-strength-checker-1.0.0.jar
   ```

### Option 2: Run with Docker

1. **Clone the repository:**

   ```bash
   git clone https://github.com/junevm/password-strength-checker.git
   cd password-strength-checker
   ```

2. **Build and run:**

   ```bash
   docker build -t password-strength-checker .
   docker run -it password-strength-checker
   ```


## Using the Application

1. **Start the application** using one of the methods above
2. **Enter a password** when prompted
3. **Review the analysis** showing:
   - Strength level (Weak 🔴, Medium 🟡, or Strong 🟢)
   - Score (0-8)
   - List of strengths
   - List of weaknesses
   - Specific recommendations
4. **Test multiple passwords** in the same session
5. **Type 'quit'** to exit

## Example Session

```
╔════════════════════════════════════════════════════════════╗
║         PASSWORD STRENGTH CHECKER APPLICATION             ║
╚════════════════════════════════════════════════════════════╝

Enter a password to check its strength (or 'quit' to exit):
> weak

════════════════════════════════════════════════════════════
PASSWORD STRENGTH ANALYSIS
════════════════════════════════════════════════════════════
Strength Level: 🔴 WEAK (Score: 1/8)
────────────────────────────────────────────────────────────

✓ Strengths:
  • Contains lowercase letters

✗ Issues Found:
  • Too short (minimum 6 characters)
  • No uppercase letters
  • No numbers
  • No special characters

💡 Recommendations:
  • Use at least 8 characters
  • Mix uppercase and lowercase letters
  • Include numbers and special characters
  • Avoid common words and patterns
════════════════════════════════════════════════════════════

Enter a password to check its strength (or 'quit' to exit):
> MyStr0ng!P@ssw0rd

════════════════════════════════════════════════════════════
PASSWORD STRENGTH ANALYSIS
════════════════════════════════════════════════════════════
Strength Level: 🟢 STRONG (Score: 8/8)
────────────────────────────────────────────────────────────

✓ Strengths:
  • Excellent length (17 characters)
  • Contains uppercase letters
  • Contains lowercase letters
  • Contains numbers
  • Contains special characters

💡 Recommendations:
  • Your password is strong! Keep it secure.
  • Don't reuse this password on multiple sites
  • Consider using a password manager
════════════════════════════════════════════════════════════
```

## Running Tests

To run the unit tests:

```bash
mvn test
```

Expected output:

```
Tests run: 23, Failures: 0, Errors: 0, Skipped: 0
```

## Troubleshooting

### Issue: "mvn: command not found"

**Solution:** Install Maven from https://maven.apache.org/download.cgi

### Issue: "java: command not found"

**Solution:** Install Java 11+ from https://adoptium.net/

### Issue: Docker build fails

**Solution:** Ensure Docker is running and you have internet connectivity for downloading dependencies

### Issue: Application doesn't start

**Solution:** Check that port is not blocked and you have sufficient memory (minimum 512MB)

## For Academic Submission

This project includes:

- **SYNOPSIS.md** - 4-page academic synopsis with all required sections
- **PROJECT_REPORT.md** - 10-15 page detailed project report
- **README.md** - Complete technical documentation

Refer to these documents for comprehensive project information.
