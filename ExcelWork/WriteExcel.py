import openpyxl
wb = openpyxl.Workbook()
sh = wb.active
sh.title = "Kasuri"
print(sh.title)
sh['A4'].value = "Hello world "

# Create second page
wb.create_sheet(title="Thiyumini")
sh1 = wb["Thiyumini"]
sh1['A3'].value = "Robot Framework"

# Removing data

wb.remove(wb["Kasuri"])
# Saving
#wb.save("C:\\Users\\lenovo\\OneDrive\\Documents\\TestWriteData.xlsx")
