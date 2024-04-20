import csv
import os

import file_operations
import csv_operations

def parse_file(filename="armedcar", category_custom=""):
    
    print(f"\n<------- Currently parsing: {filename}.csv ------->\n")

    if filename != "":

        with open(f'csv/{filename}.csv', newline='', errors="ignore") as csvfile:
            reader = csv.reader(csvfile, delimiter=',', quotechar='|')
            read_parsed_file(reader, filename, category_custom)

def read_parsed_file(parsed_data, filename, category_custom=""):
    data_write = [];
    classes = []
    cur_modset = ""

    if (category_custom != ""):

        category = [category_custom]

    else:

        category = [filename]

    data_write.append(category)

    for row in parsed_data:
        row_joined = ":".join(row)
        row_split = row_joined.split(":")
        
        for test in [row_split]:
            if (test != ''):
                modset = test[0]
                classname = test[1]
                name = test[2]
                price = test[-1]

                # Not a fuckin clue, don't ask
                if (type(price) == str and price.isdigit()):
                    price = int(float(price))

                # If price isn't an integer (usually due to a comment in the last row), step back 1 element
                if (type(price) != int):
                    price = test[-2]

                # If price is a float, yeet that out
                # (int() didn't work)
                if (type(price) == str and "." in price):
                    price = price[:-2]

                data = [classname, name, price]
                
                # Grab the modset if applicable
                if (classname != "className" and name == "" and price == ""):
                    if (modset != cur_modset or cur_modset == ""):
                        cur_modset = modset

                data.insert(0, cur_modset)

                # Get rid of data that isn't needed (headers, basically)
                if (classname == "className"):
                    data = ['', '', '']

                if ('' not in data):
                    print(data)

                    data_write.append(data)

                    file_operations.generate_config(data, category, cur_modset, classes)

    file_operations.write_to_file("output", classes, category)

def parse_all_csv_files_in_dir(prefix="BlackMarketVehicles - "):
    files = csv_operations.grab_csv_files_in_dir(prefix=prefix)

    for file in files:
        category_custom = file[:-4]
        if (prefix == ""):
            parse_file(f"{file[:-4]}", category_custom)
        else:
            parse_file(f"{prefix}{file[:-4]}", category_custom)