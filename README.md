README.md
markdown
Copy code
# nkHarvest

`nkHarvest` is a shell script that customizes theHarvester for OSINT (Open-Source Intelligence) domain enumeration. It offers a user-friendly interface with interactive prompts and saves results for further analysis.

---

## Features

- **Interactive Prompts**: Asks for domain and result limits during execution.
- **Custom Branding**: Displays a unique `nkHarvest` ASCII art banner.
- **Efficient Output Handling**: Saves the results in a structured file.
- **Default Configurations**: Automatically uses sensible defaults if no inputs are provided.

---

## Prerequisites

Ensure `theHarvester` is installed and accessible via your system's PATH.

---

## Setup

1. Clone the repository:
   ```bash
   git clone https://github.com/your-username/nkharvest.git
   cd nkharvest
Make the script executable:
bash
Copy code
chmod +x run_nkharvest.sh
Running Methods
There are different ways you can run the script based on your requirements.

1. Interactive Mode
This mode will prompt you for the domain and result limit interactively during script execution.

Steps:
Run the script:

bash
Copy code
./run_nkharvest.sh
The script will prompt you to enter:

Domain: Enter the domain to scan (e.g., example.com).
Result Limit: Specify the maximum number of results to retrieve (default: 500).
Example:

bash
Copy code
Enter the domain to scan (e.g., example.com): example.com
Enter the result limit (default is 500): 100
Once the script completes, it will display a message indicating that the results have been saved to a file.

Example:

bash
Copy code
Running nkHarvest on domain: example.com with source: all and limit: 100
Results saved to example.com_nkharvest_results.txt
Thank you for using nkHarvest!
Access the results in the output file:

bash
Copy code
cat example.com_nkharvest_results.txt
2. Command-Line Arguments (Non-Interactive Mode)
If you wish to bypass interactive prompts, you can run the script with command-line arguments specifying the domain and result limit directly.

Syntax:
bash
Copy code
./run_nkharvest.sh <domain> <limit>
<domain>: The domain to scan (e.g., example.com).
<limit>: The maximum number of results (default: 500).
Example:
bash
Copy code
./run_nkharvest.sh example.com 100
This will run the script with example.com as the domain and limit the results to 100.

Once the script finishes, it will display a message like:

bash
Copy code
Running nkHarvest on domain: example.com with source: all and limit: 100
Results saved to example.com_nkharvest_results.txt
Thank you for using nkHarvest!
The results will be saved to example.com_nkharvest_results.txt.

3. Running with Default Values
If you do not wish to specify a limit and just want to scan a domain, you can simply provide the domain as an argument and the script will use the default limit of 500.

Example:
bash
Copy code
./run_nkharvest.sh example.com
This will scan example.com with a result limit of 500.

Example Output
Here’s an example of what the results file (<domain>_nkharvest_results.txt) might look like:

plaintext
Copy code
[*] Target: example.com

[*] Emails:
    admin@example.com
    support@example.com

[*] Hosts:
    mail.example.com
    www.example.com

[*] IPs:
    93.184.216.34
    2606:2800:220:1:248:1893:25c8:1946
The output will list the emails, hosts, and IP addresses found for the given domain.

Contributing
Contributions are welcome! To contribute:

Fork the repository.
Create a new branch:
bash
Copy code
git checkout -b feature-name
Commit your changes:
bash
Copy code
git commit -m "Add feature-name"
Push your changes:
bash
Copy code
git push origin feature-name
Submit a pull request.
License
This project is licensed under the MIT License.
