import sys

if len(sys.argv) < 2:
    print("usage: script.py <filename> <num_cols>")
    exit(1)

filename = sys.argv[1]
col_lim = int(sys.argv[2])

# Open file read only
try:
    file1 = open(filename, "r")
except FileNotFoundError:
    print("\nfile \"{}\" was not found".format(filename))
    print("usage: script.py <filename> <num_cols>")
    exit(1)

lines = file1.readlines()
num_lines = len(lines)

print("File has {} lines".format(len(lines)))

col_fail_count = 0
violations = ""

for i, line in enumerate(lines, start=1):
    if len(line.rstrip()) > col_lim:
        col_fail_count += 1
        violations += "{} ".format(i+1)

print("File has {} columns which violate column limit of {}\n".format(col_fail_count, col_lim))

if col_fail_count > 0:
    print("At lines: {}".format(violations))

file1.close()