**nkHarvest**  
nkHarvest is a shell script that customizes theHarvester for OSINT (Open-Source Intelligence) domain enumeration.

**1. Setup**  
Clone the Repository

Clone the repository containing the script:

```bash
git clone https://github.com/nikhil-thb/nkHarvest.git
cd nkharvest
```
**2. Make the Script Executable**  

Give executable permissions to the script:

```bash
chmod +x run_nkharvest.sh
```
**3. Running the Script**  
Interactive Mode

To run the script interactively, execute:

```bash
./run_nkharvest.sh
```

The script will prompt you to enter the domain and result limit.

**4. Command-Line Arguments Mode**  

To run the script with command-line arguments, use:

```bash
./run_nkharvest.sh <domain> <limit>
```

**\<domain\>:** The domain to scan (e.g., example.com).  
**\<limit\>:** The maximum number of results (default: 500).  

**License**  
This project is licensed under the MIT License.
