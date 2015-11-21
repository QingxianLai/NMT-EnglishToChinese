import sys

def remove_tags(filename):
    """docstring for """
    f = open(filename, 'r+')
    output_file = open(filename+".no_tag", "w+")
    for line in f:
        if '<' and '>' in line:
            continue
        else:
            output_file.write(line)
    f.close()
    output_file.close()


if __name__ == '__main__':
    remove_tags(sys.argv[1])
