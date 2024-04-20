import time

def sortTowns(array, type=2):

    towns = []

    print(type)

    start = time.time()
    print("\n\n\n\n\n")
    # print("\nStarted Writing File")

    # print(array)

    for i in array:
        town = i[0]
        population = i[1]

        # print(town)
        # print(population)

        if (i == array[-1]):
            compiled = "{" + f'"{town}", {population}' + "}"
        else:
            compiled = "{" + f'"{town}", {population}' + "},"

        print(compiled)

        if (type == 1):

            towns.append(compiled)

        if (type == 2):

            towns.append(compiled + "\n")


    with open("output.txt", "w") as outputFile:
        for i in towns:
            outputFile.write(i)

    end = time.time()
    print(f"\nFinished Writing File. Took approximately {round(end-start)} second(s).")