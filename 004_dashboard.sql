SELECT DISTINCT
    ii.TITLE_OBJECT,
    ii.MARKA,
    ii.SUBSYS
FROM elemoto ii
WHERE ii.SUBSYS IN (
'100-CT-EL-T15',
'100-CT-IN-T15',
'100-ET-EL-T15',
'100-LF-M-T15',
'100-SE-S-T15',
'100-ST-M-T15',
'113-BL-001-02',
'113-BL-001-05',
'113-BL-101-02',
'113-P-001',
'113-P-002',
'113-P-003',
'113-P-004',
'113-P-104',
'113-U-163-01',
'113-U-163-02',
'113-U-170-01',
'113-U-171-01',
'113-U-179-01'
);
