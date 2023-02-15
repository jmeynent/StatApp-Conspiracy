*Traitement Slide 19 PPT Réunion 1 point 3) c,d,e,f*

*import*
clear all
cd "W:\Documents\Stat App"
use "ESS10_2.2.dta"

*PCA*
factor secgrdec scidecpb gvconc19, pcf
rotate
*On voit que la corrélation entre ces 3 facteurs est intéressante, mais vérifions*
*Cronbach*
alpha secgrdec scidecpb gvconc19, item
*>= 0.8 donc statisfaisant*

*PCA et Cronbach par pays*
preserve //Cette commande permet de ne pas supprimer la base définitive
keep if cntry=="AT"
factor secgrdec scidecpb gvconc19, pcf
rotate
alpha secgrdec scidecpb gvconc19, item
restore //Il faut conclure le code par restore pour retravailler sur base complète
*Pour Autriche : Moins bon qu'en général pour gvconc19 mais alpha suffisant*

preserve
keep if cntry=="BG"
factor secgrdec scidecpb gvconc19, pcf
rotate
alpha secgrdec scidecpb gvconc19, item
restore 
*Bulgarie : Satisfaisant, alpha >=)0.7*

preserve
keep if cntry=="CH"
factor secgrdec scidecpb gvconc19, pcf
rotate
alpha secgrdec scidecpb gvconc19, item
restore 
*Suisse : Coeffs + petit et alpha < 0.7 (=0,69))*

preserve
keep if cntry=="CZ"
factor secgrdec scidecpb gvconc19, pcf
rotate
alpha secgrdec scidecpb gvconc19, item
restore 
*Tchéquie (Rep) : Meilleur que dans général, alpha > 0.7*

preserve
keep if cntry=="DE"
factor secgrdec scidecpb gvconc19, pcf
rotate
alpha secgrdec scidecpb gvconc19, item
restore 
*Allemagne: Moins bon que total mais alpha > 0.7*

preserve
keep if cntry=="EE"
factor secgrdec scidecpb gvconc19, pcf
rotate
alpha secgrdec scidecpb gvconc19, item
restore 
*Estonie : Proche de résultats généraux, alpha OK*

preserve
keep if cntry=="ES"
factor secgrdec scidecpb gvconc19, pcf
rotate
alpha secgrdec scidecpb gvconc19, item
restore 
*Espagne : Moins bons Coeffs, alpha < 0.7*

preserve
keep if cntry=="FI"
factor secgrdec scidecpb gvconc19, pcf
rotate
alpha secgrdec scidecpb gvconc19, item
restore 
*Finlande : coeffs moins bon que général mais alpha OK*

preserve
keep if cntry=="GR"
factor secgrdec scidecpb gvconc19, pcf
rotate
alpha secgrdec scidecpb gvconc19, item
restore 
*Grèce : Résultats meilleurs que général, alpha OK*

preserve
keep if cntry=="HR"
factor secgrdec scidecpb gvconc19, pcf
rotate
alpha secgrdec scidecpb gvconc19, item
restore 
*Croatie : coeffs OK mais alpha <0.7*

preserve
keep if cntry=="HU"
factor secgrdec scidecpb gvconc19, pcf
rotate
alpha secgrdec scidecpb gvconc19, item
restore 
*Hongrie : coeffs meileurs que général, alpha OK*

preserve
keep if cntry=="IS"
factor secgrdec scidecpb gvconc19, pcf
rotate
alpha secgrdec scidecpb gvconc19, item
restore 
*Islande : coeffs plus bas, alpha <0.7*

preserve
keep if cntry=="IT"
factor secgrdec scidecpb gvconc19, pcf
rotate
alpha secgrdec scidecpb gvconc19, item
restore 
*Italie : *coeffs OK, alpha OK*

preserve
keep if cntry=="LT"
factor secgrdec scidecpb gvconc19, pcf
rotate
alpha secgrdec scidecpb gvconc19, item
restore 
*Lituanie : coeffs OK, alpha OK*

preserve
keep if cntry=="MK"
factor secgrdec scidecpb gvconc19, pcf
rotate
alpha secgrdec scidecpb gvconc19, item
restore 
*Macédoine du Nord  coeffs OK, alpha OK*

preserve
keep if cntry=="NL"
factor secgrdec scidecpb gvconc19, pcf
rotate
alpha secgrdec scidecpb gvconc19, item
restore 
*Pays Bas : coeffs OK, alpha OK*

preserve
keep if cntry=="NO"
factor secgrdec scidecpb gvconc19, pcf
rotate
alpha secgrdec scidecpb gvconc19, item
restore 
*Norvège  alpha pas ok, coeffs ok*

preserve
keep if cntry=="PL"
factor secgrdec scidecpb gvconc19, pcf
rotate
alpha secgrdec scidecpb gvconc19, item
restore
*Pologne : coeffs OK, alpha OK*

preserve
keep if cntry=="PT"
factor secgrdec scidecpb gvconc19, pcf
rotate
alpha secgrdec scidecpb gvconc19, item
restore 
*Portugal : Facteur OK, alpha pas OK*

preserve
keep if cntry=="RS"
factor secgrdec scidecpb gvconc19, pcf
rotate
alpha secgrdec scidecpb gvconc19, item
restore 
*Serbie : coeffs OK, alpha OK*

preserve
keep if cntry=="SE"
factor secgrdec scidecpb gvconc19, pcf
rotate
alpha secgrdec scidecpb gvconc19, item
restore 
*Suède : coeffs moins bons général, alpha OK*

preserve
keep if cntry=="SI"
factor secgrdec scidecpb gvconc19, pcf
rotate
alpha secgrdec scidecpb gvconc19, item
restore 
*Slovénie : coeffs OK mais alpha pas OK*

preserve
keep if cntry=="SK"
factor secgrdec scidecpb gvconc19, pcf
rotate
alpha secgrdec scidecpb gvconc19, item
restore
*Slovaquie : Bons coeffs, alpha OK*

*Vide : Albanie, Belgique, Danemark, France, UK, Géorgie, Irlande, Israël, Luxembourg, Lettonie, Monténégro, Roumanie, Fédération Russe, Turquie, Ukraine, Kosovo" //Code supprimé pour ces pays
*Fonctionne pas : Espagne, Suisse, Croatie, Islande, Norvège, Portugal, Slovénie*
*Fonctionne : Autriche, Bulgarie, République Tchèque, Allemagne, Estonie, Finlande, Grèce, Hongrie, Italie, Lituanie, Macédoine du Nord, Pays Bas, Pologne, Serbie, Suède, Slovaquie*