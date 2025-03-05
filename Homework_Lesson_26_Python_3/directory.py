import os

if os.path.isdir("mydir"):
    print("Directory already exists")
else:
    directory = os.mkdir("mydir")
    os.chdir("mydir")
    open('file1.txt', 'a').close()
    open('file2.txt', 'a').close()
    open('file3.txt', 'a').close()
    
    files = os.listdir(directory)
    print(files)

