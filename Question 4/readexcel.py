import xlrd

policy_wb = xlrd.open_workbook('POLICY.xlsx')
policy_sheet = policy_wb.sheet_by_index(0)


for i in range(policy_sheet.nrows):
    for j in range(policy_sheet.ncols):
        print(policy_sheet.cell_value(i,j), end='\t')
    print('')


claim_wb = xlrd.open_workbook('CLAIM.xlsx')
claim_sheet = claim_wb.sheet_by_index(0)

print('----------------------------')

for i in range(claim_sheet.nrows):
    for j in range(claim_sheet.ncols):
        print(claim_sheet.cell_value(i,j), end='\t')
    print('')


policy_item_wb = xlrd.open_workbook('POLICY_ITEM.xlsx')
policy_item_sheet = policy_item_wb.sheet_by_index(0)

print('----------------------------')

for i in range(policy_item_sheet.nrows):
    for j in range(policy_item_sheet.ncols):
        print(policy_item_sheet.cell_value(i,j), end='\t')
    print('')

