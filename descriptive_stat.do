********************************************************************************
* 							FIRST STEPS										   *
********************************************************************************

use "C:\Users\elfas\Desktop\Statistiques appliquées\ESS10_2.2.dta"

*I/ VARIABLES OF INTEREST

*Var 1, on politics 
tab secgrdec
*Var 2, on scientists
tab scidecpb
*Var 3, on the pandemic
tab gvconc19

*II/ DESCRIPTIVE STATISTICS

*Weighted sum, all sample
svyset psu [pweight=anweight], strata(stratum)
svy: tab secgrdec
svy: tab scidecpb
svy: tab gvconc19

*Weighted sum per country var 1
svyset psu [pweight=anweight], strata(stratum)
svy: tab secgrdec if cntry == "SK"

*Weighted sum per country var 2
svyset psu [pweight=anweight], strata(stratum)
svy: tab scidecpb if cntry == "SK"

*Weighted sum per country var 3
svyset psu [pweight=anweight], strata(stratum)
svy: tab gvconc19 if cntry == "SK"

********************************************************************************
