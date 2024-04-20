import csv
import os

def write_to_file(filename="output", data="", category=""):
    with open(f'output/{filename}_{category[0].upper()}.txt', 'w+') as file:
        # file.write(str(data))
        for line in data:
            file.write(str(line) + "\n")

def generate_config(data, category, cur_modset, classes):
    # print(f"\n\n")

    if (cur_modset not in classes):
        classes.append(cur_modset)

    arma_class = f'ITEM({data[1]}, {data[3]}, "{category[0]}", "condition");'

    # print(arma_class)

    classes.append(arma_class)