# nkHarvest

`nkHarvest` is a shell script that customizes `theHarvester` for OSINT (Open-Source Intelligence) domain enumeration. It provides a user-friendly interface with interactive prompts, customized branding, and output handling for easy analysis.

---

## Features

- **Interactive Prompts**: Prompts the user for domain and result limit during execution.
- **Custom Branding**: Displays an ASCII art banner with the message "nkHarvest".
- **Efficient Output Handling**: Saves the results in a structured file.
- **Default Configurations**: Automatically uses sensible defaults if no inputs are provided.

---

## Setup

### 1. Clone the Repository

Clone the repository containing the script:

```bash
git clone https://github.com/your-username/nkharvest.git
cd nkharvest

Running Methods
1. Interactive Mode
In interactive mode, the script will prompt you for the domain and result limit during execution.

Steps:
Run the script:

```bash
./run_nkharvest.sh

The script will prompt you to enter:

Domain: Enter the domain to scan (e.g., example.com).
Result Limit: Specify the maximum number of results to retrieve (default: 500).
