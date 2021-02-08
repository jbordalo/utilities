"""

For each dir:
Open dir, get files extension, clean jpg, rename files, close dir

"""
import os


def main():
    cwd = os.getcwd()
    # print("cwd: " + cwd)

    listdir  = os.listdir(cwd) # every file inside cwd

    # for each file in cwd we must handle it
    for i in listdir:
        if os.path.isdir(i):
            filename = i
            handle_file(i)


# Saves the extension of the file given
def save_extension(file):
    return os.path.splitext(file)[1]


# Handles each file, already gets the file
def handle_file(path):
    os.chdir(path) # open dir
    files_in_dir = os.listdir(os.getcwd()) # list of files inside dir
    for i in files_in_dir:
        ext = save_extension(i)
        if os.path.isdir(i):
            main()
        elif ext == ".jpg":
            os.remove(i)
        else:
            filename = path + ext
            os.rename(i, filename)
    os.chdir("..")

main()
