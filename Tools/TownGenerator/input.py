array = eval(input("Paste town array: "))

print("\n")
print("How do you want the data to be formatted?")
print("1: Single Line")
print("2: Multi Line")

format_type = int(input("Select Type: "))

import sort

sort.sortTowns(array, type=format_type)