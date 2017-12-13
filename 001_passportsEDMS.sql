SELECT
    edms."Document Reference",
    edms."Document Title",
    edms."Current Status"
FROM edms
WHERE edms."Document Reference" LIKE '%-K30-%'
AND edms."Document Title" LIKE '%passport%'
AND edms."Document Title" NOT LIKE '%cancel%'
AND edms."Document Title" NOT LIKE '%SUPERSEDED%'
;
