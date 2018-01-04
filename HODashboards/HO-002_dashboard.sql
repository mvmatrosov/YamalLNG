/*HO-002 just collect tags for specific subsysytems:
046-BL-001-02
046-BL-003-02
046-U-001
046-U-002
046-U-003
046-U-063-01
046-U-063-03
046-U-070-01
046-U-070-02
046-U-070-03
046-U-070-04
046-U-071-01
046-U-071-02
046-U-079-01
046-U-079-02
046-U-079-03*/
SELECT
    ec.CABLE,
    ec.TITLE_OBJECT,
    ec.MARKA,
    ec.SUBSYS,
    ec.DWG,
    'ELECTRICAL CABLES' as Data
    FROM elecab ec
      WHERE ec.SUBSYS IN (
        '046-BL-001-02',
        '046-BL-003-02',
        '046-U-001',
        '046-U-002',
        '046-U-003',
        '046-U-063-01',
        '046-U-063-03',
        '046-U-070-01',
        '046-U-070-02',
        '046-U-070-03',
        '046-U-070-04',
        '046-U-071-01',
        '046-U-071-02',
        '046-U-079-01',
        '046-U-079-02',
        '046-U-079-03')
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
        '046-BL-001-02',
        '046-BL-003-02',
        '046-U-001',
        '046-U-002',
        '046-U-003',
        '046-U-063-01',
        '046-U-063-03',
        '046-U-070-01',
        '046-U-070-02',
        '046-U-070-03',
        '046-U-070-04',
        '046-U-071-01',
        '046-U-071-02',
        '046-U-079-01',
        '046-U-079-02',
        '046-U-079-03')
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
        '046-BL-001-02',
        '046-BL-003-02',
        '046-U-001',
        '046-U-002',
        '046-U-003',
        '046-U-063-01',
        '046-U-063-03',
        '046-U-070-01',
        '046-U-070-02',
        '046-U-070-03',
        '046-U-070-04',
        '046-U-071-01',
        '046-U-071-02',
        '046-U-079-01',
        '046-U-079-02',
        '046-U-079-03')
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
        '046-BL-001-02',
        '046-BL-003-02',
        '046-U-001',
        '046-U-002',
        '046-U-003',
        '046-U-063-01',
        '046-U-063-03',
        '046-U-070-01',
        '046-U-070-02',
        '046-U-070-03',
        '046-U-070-04',
        '046-U-071-01',
        '046-U-071-02',
        '046-U-079-01',
        '046-U-079-02',
        '046-U-079-03')
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
        '046-BL-001-02',
        '046-BL-003-02',
        '046-U-001',
        '046-U-002',
        '046-U-003',
        '046-U-063-01',
        '046-U-063-03',
        '046-U-070-01',
        '046-U-070-02',
        '046-U-070-03',
        '046-U-070-04',
        '046-U-071-01',
        '046-U-071-02',
        '046-U-079-01',
        '046-U-079-02',
        '046-U-079-03')
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
        '046-BL-001-02',
        '046-BL-003-02',
        '046-U-001',
        '046-U-002',
        '046-U-003',
        '046-U-063-01',
        '046-U-063-03',
        '046-U-070-01',
        '046-U-070-02',
        '046-U-070-03',
        '046-U-070-04',
        '046-U-071-01',
        '046-U-071-02',
        '046-U-079-01',
        '046-U-079-02',
        '046-U-079-03');
