import os
import re
CATEGORIES = [
    "Select",
    "Basic Joins",
    "Basic Aggregate Functions",
    "Sorting and Grouping",
    "Advanced Select and Joins",
    "Subqueries",
    "Advanced_String_Functions_Regex_Clause",
]
def createFolderFile(name):
    os.mkdir(name)
    with open(f"{name}/.gitkeep", "w") as g:
        g.write("plik pusty aby git zostawił pusty folder")
    
    
    
def count_sql_files(folder):
    if not os.path.isdir(folder):
        createFolderFile(folder)
        
    return sum(1 for f in os.listdir(folder) if f.endswith(".sql"))
def build_table():
    rows = ""
    total = 0
    for cat in CATEGORIES:
        count = count_sql_files(cat)
        total += count
        rows += f"| {cat} | {count} |\n"
    rows += f"| **Total** | **{total}** |"
    return f"| Category | Solved |\n|----------|--------|\n{rows}"
def update_readme():
    with open("README.md", "r") as f:
        content = f.read()
    new_table = build_table()
    updated = re.sub(
        r"\| Category \| Solved \|.*?\n> \*Numbers updated",
        new_table + "\n\n> *Numbers updated",
        content,
        flags=re.DOTALL,
    )
    with open("README.md", "w") as f:
        f.write(updated)
    print("README.md updated.")
if __name__ == "__main__":
    update_readme()
