/*HO-001 just collect tags for specific subsysytems:
011-BL-001-02
011-CT-EL-U08
011-CT-IN-U08
011-ET-EL-U08
011-P-001
011-P-002
011-P-003
011-SE-S-U08
011-ST-M-U08
011-U-063-01
011-U-070-01
011-U-070-02
011-U-071
011-U-078
011-U-079-01*/
SELECT
    ec.CABLE,
    ec.TITLE_OBJECT,
    ec.MARKA,
    ec.SUBSYS,
    ec.DWG,
    'ELECTRICAL CABLES' as Data
    FROM elecab ec
      WHERE ec.SUBSYS IN (
        '011-BL-001-02',
        '011-CT-EL-U08',
        '011-CT-IN-U08',
        '011-ET-EL-U08',
        '011-P-001',
        '011-P-002',
        '011-P-003',
        '011-SE-S-U08',
        '011-ST-M-U08',
        '011-U-063-01',
        '011-U-070-01',
        '011-U-070-02',
        '011-U-071',
        '011-U-078',
        '011-U-079-01'
)
UNION
SELECT
    eo.ITEM,
    eo.TITLE_OBJECT,
    eo.MARKA,
    eo.SUBSYS,
    eo.DWG,
    'ELECTRICAL COMPONENTS' as Data
    FROM elecom eo
      WHERE eo.SUBSYS IN (
        '011-BL-001-02',
        '011-CT-EL-U08',
        '011-CT-IN-U08',
        '011-ET-EL-U08',
        '011-P-001',
        '011-P-002',
        '011-P-003',
        '011-SE-S-U08',
        '011-ST-M-U08',
        '011-U-063-01',
        '011-U-070-01',
        '011-U-070-02',
        '011-U-071',
        '011-U-078',
        '011-U-079-01')
UNION
SELECT
    em.ITEM,
    em.TITLE_OBJECT,
    em.MARKA,
    em.SUBSYS,
    em.PID,
    'MOTORS' as Data
    FROM elemoto em
      WHERE em.SUBSYS IN (
        '011-BL-001-02',
        '011-CT-EL-U08',
        '011-CT-IN-U08',
        '011-ET-EL-U08',
        '011-P-001',
        '011-P-002',
        '011-P-003',
        '011-SE-S-U08',
        '011-ST-M-U08',
        '011-U-063-01',
        '011-U-070-01',
        '011-U-070-02',
        '011-U-071',
        '011-U-078',
        '011-U-079-01')
UNION
SELECT
    ii.TAG_NUMBER,
    ii.TITLE_OBJECT,
    ii.MARKA,
    ii.SUBSYS,
    ii.PID,
    'INSTRUMENTS' as Data
    FROM ins ii
      WHERE ii.SUBSYS IN (
        '011-BL-001-02',
        '011-CT-EL-U08',
        '011-CT-IN-U08',
        '011-ET-EL-U08',
        '011-P-001',
        '011-P-002',
        '011-P-003',
        '011-SE-S-U08',
        '011-ST-M-U08',
        '011-U-063-01',
        '011-U-070-01',
        '011-U-070-02',
        '011-U-071',
        '011-U-078',
        '011-U-079-01')
UNION
SELECT
    ic.CABLE,
    ic.TITLE_OBJECT,
    ic.MARKA,
    ic.SUBSYS,
    ic.DWG,
    'INSTRUMENT CABLES' as Data
    FROM inscab ic
      WHERE ic.SUBSYS IN (
        '011-BL-001-02',
        '011-CT-EL-U08',
        '011-CT-IN-U08',
        '011-ET-EL-U08',
        '011-P-001',
        '011-P-002',
        '011-P-003',
        '011-SE-S-U08',
        '011-ST-M-U08',
        '011-U-063-01',
        '011-U-070-01',
        '011-U-070-02',
        '011-U-071',
        '011-U-078',
        '011-U-079-01')
UNION
SELECT
    io.TAG,
    io.TITLE_OBJECT,
    io.MARKA,
    io.SUBSYS,
    io.DWG,
    'INSTRUMENTATION COMPONENTS' as Data
    FROM inscom io
      WHERE io.SUBSYS IN (
        '011-BL-001-02',
        '011-CT-EL-U08',
        '011-CT-IN-U08',
        '011-ET-EL-U08',
        '011-P-001',
        '011-P-002',
        '011-P-003',
        '011-SE-S-U08',
        '011-ST-M-U08',
        '011-U-063-01',
        '011-U-070-01',
        '011-U-070-02',
        '011-U-071',
        '011-U-078',
        '011-U-079-01');
