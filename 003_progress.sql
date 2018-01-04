/* VER 1.2
The code combining all tags in one tabe with colums:
SYS SUBSYS ITEM SERVICE CONSTRUCTION PRECOMMISSIONING PASSPORTS
The databases from Easy Plant:
ELE_COM - electrical components
INS - instrumentation
ELE_CAB
INS_CAB
INS_COM
ELE_MOTO
PRO - progess databases included all registered tags with AKTs
PASSPORTS - documents status database
The tags with WC (work class) column are excluded because work has been done at
Yard or not specific type of work as connection or sygnals:
empty 15369 15379 15389 15712 15713 15231 16116 16212 16213 16214 16215 16313 16314 */
SELECT
    ec.TITLE_OBJECT,
    ec.MARKA,
    ec.CABLE,
    p.CONSTRUCTION,
    p.PRECOMMISSIONING,
    pa.DOC,
    pa.STATUS,
    ec.AREA,
    ec.SYS,
    ec.SUBSYS,
    ec.DWG
    FROM elecab ec
        LEFT JOIN pro p ON ec.CABLE = p.﻿TAG
        LEFT JOIN pass pa ON ec.CABLE = pa.﻿TAG
            WHERE ec.WC Not  Like ""
            AND ((ec.WC) Not Like "15369")
            AND ((ec.WC) Not Like "15379")
            AND ((ec.WC) Not Like "15389")
            AND ((ec.WC) Not Like "15712")
            AND ((ec.WC) Not Like "15713")
            AND ((ec.WC) Not Like "15231")
            AND ((ec.WC) Not Like "16116")
            AND ((ec.WC) Not Like "16212")
            AND ((ec.WC) Not Like "16213")
            AND ((ec.WC) Not Like "16214")
            AND ((ec.WC) Not Like "16215")
            AND ((ec.WC) Not Like "16313")
            AND ((ec.WC) Not Like "16314")
UNION
SELECT
    eco.TITLE_OBJECT,
    eco.MARKA,
    eco.﻿ITEM,
    p.CONSTRUCTION,
    p.PRECOMMISSIONING,
    pa.DOC,
    pa.STATUS,
    eco.AREA,
    eco.SYS,
    eco.SUBSYS,
    eco.DWG
    FROM elecom eco
        LEFT JOIN pro p ON eco.﻿ITEM = p.﻿TAG
        LEFT JOIN pass pa ON eco.﻿ITEM = pa.﻿TAG
            WHERE eco.WC Is Not ""
            AND ((eco.WC) Not Like "15369")
            AND ((eco.WC) Not Like "15379")
            AND ((eco.WC) Not Like "15389")
            AND ((eco.WC) Not Like "15712")
            AND ((eco.WC) Not Like "15713")
            AND ((eco.WC) Not Like "15231")
            AND ((eco.WC) Not Like "16116")
            AND ((eco.WC) Not Like "16212")
            AND ((eco.WC) Not Like "16213")
            AND ((eco.WC) Not Like "16214")
            AND ((eco.WC) Not Like "16215")
            AND ((eco.WC) Not Like "16313")
            AND ((eco.WC) Not Like "16314")
UNION
SELECT
    em.TITLE_OBJECT,
    em.MARKA,
    em.﻿ITEM,
    p.CONSTRUCTION,
    p.PRECOMMISSIONING,
    pa.DOC,
    pa.STATUS,
    em.AREA,
    em.SYS,
    em.SUBSYS,
    em.PID
    FROM elemoto em
        LEFT JOIN pro p ON em.﻿ITEM = p.﻿TAG
        LEFT JOIN pass pa ON em.﻿ITEM = pa.﻿TAG
            WHERE em.WC Is Not ""
            AND ((em.WC) Not Like "15369")
            AND ((em.WC) Not Like "15379")
            AND ((em.WC) Not Like "15389")
            AND ((em.WC) Not Like "15712")
            AND ((em.WC) Not Like "15713")
            AND ((em.WC) Not Like "15231")
            AND ((em.WC) Not Like "16116")
            AND ((em.WC) Not Like "16212")
            AND ((em.WC) Not Like "16213")
            AND ((em.WC) Not Like "16214")
            AND ((em.WC) Not Like "16215")
            AND ((em.WC) Not Like "16313")
            AND ((em.WC) Not Like "16314")
UNION
SELECT
    i.TITLE_OBJECT,
    i.MARKA,
    i.﻿TAG_NUMBER,
    p.CONSTRUCTION,
    p.PRECOMMISSIONING,
    pa.DOC,
    pa.STATUS,
    i.AREA,
    i.SYS,
    i.SUBSYS,
    i.PID
    FROM ins i
        LEFT JOIN pro p ON i.﻿TAG_NUMBER = p.﻿TAG
        LEFT JOIN pass pa ON i.﻿TAG_NUMBER = pa.﻿TAG
            WHERE i.WC Is Not ""
            AND ((i.WC) Not Like "15369")
            AND ((i.WC) Not Like "15379")
            AND ((i.WC) Not Like "15389")
            AND ((i.WC) Not Like "15712")
            AND ((i.WC) Not Like "15713")
            AND ((i.WC) Not Like "15231")
            AND ((i.WC) Not Like "16116")
            AND ((i.WC) Not Like "16212")
            AND ((i.WC) Not Like "16213")
            AND ((i.WC) Not Like "16214")
            AND ((i.WC) Not Like "16215")
            AND ((i.WC) Not Like "16313")
            AND ((i.WC) Not Like "16314")
UNION
SELECT
    ic.TITLE_OBJECT,
    ic.MARKA,
    ic.CABLE,
    p.CONSTRUCTION,
    p.PRECOMMISSIONING,
    pa.DOC,
    pa.STATUS,
    ic.AREA,
    ic.SYS,
    ic.SUBSYS,
    ic.DWG
    FROM inscab ic
        LEFT JOIN pro p ON ic.CABLE = p.﻿TAG
        LEFT JOIN pass pa ON ic.CABLE = pa.﻿TAG
            WHERE ic.WC Is Not ""
            AND ((ic.WC) Not Like "15369")
            AND ((ic.WC) Not Like "15379")
            AND ((ic.WC) Not Like "15389")
            AND ((ic.WC) Not Like "15712")
            AND ((ic.WC) Not Like "15713")
            AND ((ic.WC) Not Like "15231")
            AND ((ic.WC) Not Like "16116")
            AND ((ic.WC) Not Like "16212")
            AND ((ic.WC) Not Like "16213")
            AND ((ic.WC) Not Like "16214")
            AND ((ic.WC) Not Like "16215")
            AND ((ic.WC) Not Like "16313")
            AND ((ic.WC) Not Like "16314")
UNION
SELECT
    ico.TITLE_OBJECT,
    ico.MARKA,
    ico.﻿TAG,
    p.CONSTRUCTION,
    p.PRECOMMISSIONING,
    pa.DOC,
    pa.STATUS,
    ico.AREA,
    ico.SYS,
    ico.SUBSYS,
    ico.DWG
    FROM inscom ico
        LEFT JOIN pro p ON ico.﻿TAG = p.﻿TAG
        LEFT JOIN pass pa ON ico.﻿TAG = pa.﻿TAG
            WHERE ico.WC Is Not ""
            AND ((ico.WC) Not Like "15369")
            AND ((ico.WC) Not Like "15379")
            AND ((ico.WC) Not Like "15389")
            AND ((ico.WC) Not Like "15712")
            AND ((ico.WC) Not Like "15713")
            AND ((ico.WC) Not Like "15231")
            AND ((ico.WC) Not Like "16116")
            AND ((ico.WC) Not Like "16212")
            AND ((ico.WC) Not Like "16213")
            AND ((ico.WC) Not Like "16214")
            AND ((ico.WC) Not Like "16215")
            AND ((ico.WC) Not Like "16313")
            AND ((ico.WC) Not Like "16314");
