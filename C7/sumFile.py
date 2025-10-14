f = open(input("Enter the name of the CSV file:\n")).readlines()
output_list = []
for i in f:
    output_list.append(i.split(","))
outfile = open("revenue_report.txt", "w")
outfile.write("Product,Total Revenue\n")
for line in output_list[1:]:
    outfile.write(
        f"{line[0]} generated {float(line[1]) * float(line[2]):.2f} euros in revenue.\n"
    )
print('Revenue has been recorded in the file "revenue_report.txt".')
