"""
xml parser:
    python xml_parser.py [filename]

generate the pure text file end with .text extension
"""

import xml.etree.ElementTree as ET
import sys


def main():
    """docstring for main"""
    file_name = sys.argv[1]
    tree = ET.parse(file_name)
    output_file  = open(file_name[:-3] + "text", 'w+')
    root = tree.getroot()
    for doc in root[0]:
        for i in xrange(5, len(doc)):
            output_file.write(doc[i].text.strip().encode("utf-8") + "\n")
    output_file.close()

if __name__ == '__main__':
    main()
