import csv
import os

import parse_operations

# parse_operations.parse_file("BlackMarketVehicles - APC", "APC")

prefix = ""

directory = os.getcwd()

parse_operations.parse_all_csv_files_in_dir(prefix)