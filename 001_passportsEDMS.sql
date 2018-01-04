SELECT
    edms."Document Reference",
    edms."Document Title",
    edms."Revision Number",
    edms."Current Status",
    edms.DB
FROM edms
WHERE edms."Document Reference" LIKE '%-K30-%'
AND edms."Document Title" LIKE '%passport%'
AND edms."Document Title" NOT LIKE '%cancel%'
AND edms."Document Title" NOT LIKE '%SUPERSEDED%'
AND edms."Revision Number" NOT LIKE 'next'
/*To exclude dublicates because same document have different rewisions
sortind by Document number and then sort by Revision*/
ORDER BY
    edms."Document Reference" ASC,
    edms."Revision Number" DESC
;
