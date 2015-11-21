import sys

count = 0 
f = open(sys.argv[1], 'r+')
for line in f:
    if line.strip() == "":
        count += 1

print count
