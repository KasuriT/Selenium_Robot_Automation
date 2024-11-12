from robot.api.deco import keyword
import os

@Keyword("Create Folder at Runtime")
def create_folder_at_runtime(foldername):
    create_folder()
    create_sub_folder()
    os.mkdir("C:\Kasuri")

def create_folder(subfoldername):
    os.mkdir("C:\Kasuri")

def create_sub_folder():
    os.mkdir("C:\Kasuri\Testing")