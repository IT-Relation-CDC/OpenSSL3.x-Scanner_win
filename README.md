# OpenSSL3.x-Scanner_win
An OpenSSL3.x convenience scanner for microsoft windows based on [Velociraptor](https://github.com/Velocidex/velociraptor) and yara(CVE-2022-3786, CVE-2022-3602) 



## What's this?
This is a convenience scanner of the affected OpenSSL versions of CVE-2022-3786 and CVE-2022-3602 for microsoft windows.

## How to use.
1. [Download](https://github.com/IT-Relation-CDC/OpenSSL3.x-Scanner_win/archive/refs/heads/main.zip) or clone this repository
2. Run either "run_64bit.ps1" or "run_32bit.ps1" by right clicking the file and choosing "Run with powershell"
3. A powershell will be open as long as the scanner is running, when done it will close.
4. Initial benchmarking of the scanner is set to 20-30 minutes for a run, velociraptor is set with the --cpu-limit=5 flag to avoid disruptions, this can of course be removed if wanted in the .ps1 files
5. A file named OpenSSL_3_xCriticalVuln_Indicators_SEE_YOUR_RESULTS_HERE.zip should be put in the directory of the scanner
6. Unzip this file and open either the json or csv file to see where it found possible indicators of the affected OpenSSL version

## Known issues
- Mounted network drives can cause issues and large wait times for the scan, please disconnect these before starting.

## Disclaimer
This software comes as is, we are not liable for damages or missed indicators. The yara is simple and not foolproof, so there is no gurantee that it will catch everything as well as the possible chance for false positives. 