# import sys

def remove_tags(zh_filename, en_filename):
    """docstring for """
    zh_f = open(zh_filename, 'r+')
    en_f = open(en_filename, 'r+')
    zh_output_file = open("train.zh", "w+")
    en_output_file = open("train.en", "w+")
    zh_data = []
    en_data = []
    for line1, line2 in zip(zh_f, en_f):
        if '<' in line2 or line2.strip() == "" or line1.strip() == "":
            continue
        else:
            zh_output_file.write(line1)
            en_output_file.write(line2)
    zh_f.close()
    en_f.close()
    zh_output_file.close()
    en_output_file.close()

if __name__ == '__main__':
    # remove_tags(sys.argv[1], sys.argv[2])
    remove_tags("./zh-en/train.tags.zh-en.zh", "./zh-en/train.tags.zh-en.en")
