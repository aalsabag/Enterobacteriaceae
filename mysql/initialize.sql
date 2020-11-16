use bacteria

-- instantiate columns
CREATE TABLE IF NOT EXISTS biochemical_tests (
    entry_id INT AUTO_INCREMENT PRIMARY KEY,
    bacteria_name VARCHAR(100),
    indole INT,
    methyl_red INT,
    voges_proskauer INT,
    citrate_simmons INT,
    hydrogen_sulfide INT,
    urease INT,
    phenylalanine_deamin INT,
    lysine_decarboxylase INT,
    arginine_dihydrolase INT,
    ornithine_decarboxyl INT,
    motility INT,
    gelatin INT,
    kcn INT,
    malonate_utilization INT,
    acid_production INT,
    gas_production INT,
    lactose INT,
    sucrose INT,
    dmannitol INT,
    dulcitol INT,
    salicin INT,
    dadonitol INT,
    myo_inositol INT,
    dsorbitol INT,
    larabinose INT,
    raffinose INT,
    lrhamnose INT,
    maltose INT,
    dxylose INT,
    trehalose INT,
    cellobiose INT,
    methyl_glucoside INT,
    esculing INT,
    melibiose INT,
    darabitol INT,
    mucate INT,
    lipase INT,
    drn INT,
    nitrate INT,
    oxidase INT,
    onpg INT,
    yellow INT,
    dmannose INT
);
-- 1 indicates 90%-100% of the strains are positive
-- 2 indicates 76%-89% of the strains are positive
-- 3 indicates 26%-75% of the strains are positive
-- 4 indicates 11%-15% of the strains are positive
-- 5 indicates 0%-10% of the strains are positive

-- instantiate rows
-- INSERT INTO `biochemical_tests` (`bacteria_name`,`indole`,`methyl_red`,`voges_proskauer`,`citrate_simmons`,`hydrogen_sulfide`,`urease`,`phenylalanine_deamin`,`lysine_decarboxylase`,`arginine_dihydrolase`,`ornithine_decarboxyl`,`motility`,`gelatin`,`kcn`,`malonate_utilization`,`acid_production`,`gas_production`,`lactose`,`sucrose`,`dmannitol`,`dulcitol`,`salicin`,`dadonitol`,`myo_inositol`,`dsorbitol`,`larabinose`,`raffinose`,`lrhamnose`,`maltose`,`dxylose`,`trehalose`,`cellobiose`,`methyl_glucoside`,`esculing`,`melibiose`,`darabitol`,`mucate`,`lipase`,`drn`,`nitrate`,`oxidase`,`onpg`,`yellow`,`dmannose`) VALUES ('Salmonella IV', 5, 1, 5, 1, 1);
-- INSERT INTO `biochemical_tests` (`bacteria_name`,`indole`,`methyl_red`,`voges_proskauer`,`citrate_simmons`,`hydrogen_sulfide`,`urease`,`phenylalanine_deamin`,`lysine_decarboxylase`,`arginine_dihydrolase`,`ornithine_decarboxyl`,`motility`,`gelatin`,`kcn`,`malonate_utilization`,`acid_production`,`gas_production`,`lactose`,`sucrose`,`dmannitol`,`dulcitol`,`salicin`,`dadonitol`,`myo_inositol`,`dsorbitol`,`larabinose`,`raffinose`,`lrhamnose`,`maltose`,`dxylose`,`trehalose`,`cellobiose`,`methyl_glucoside`,`esculing`,`melibiose`,`darabitol`,`mucate`,`lipase`,`drn`,`nitrate`,`oxidase`,`onpg`,`yellow`,`dmannose`) VALUES ('Salmonella choleraesuis', 5, 1, 5, 4, 3);

INSERT INTO `biochemical_tests` (`bacteria_name`,`indole`,`methyl_red`,`voges_proskauer`,`citrate_simmons`,`hydrogen_sulfide`,`urease`,`phenylalanine_deamin`,`lysine_decarboxylase`,`arginine_dihydrolase`,`ornithine_decarboxyl`,`motility`,`gelatin`,`kcn`,`malonate_utilization`,`acid_production`,`gas_production`,`lactose`,`sucrose`,`dmannitol`,`dulcitol`,`salicin`,`dadonitol`,`myo_inositol`,`dsorbitol`,`larabinose`,`raffinose`,`lrhamnose`,`maltose`,`dxylose`,`trehalose`,`cellobiose`,`methyl_glucoside`,`esculing`,`melibiose`,`darabitol`,`mucate`,`lipase`,`drn`,`nitrate`,`oxidase`,`onpg`,`yellow`,`dmannose`) VALUES ('Cedecea Davisoe', 5,1,2,1,5,5,5,5,3,1,1,5,2,2,1,2,5,1,1,5,1,5,5,5,5,5,5,1,1,1,1,5,3,5,1,5,2,5,1,5,2,5,1);
INSERT INTO `biochemical_tests` (`bacteria_name`,`indole`,`methyl_red`,`voges_proskauer`,`citrate_simmons`,`hydrogen_sulfide`,`urease`,`phenylalanine_deamin`,`lysine_decarboxylase`,`arginine_dihydrolase`,`ornithine_decarboxyl`,`motility`,`gelatin`,`kcn`,`malonate_utilization`,`acid_production`,`gas_production`,`lactose`,`sucrose`,`dmannitol`,`dulcitol`,`salicin`,`dadonitol`,`myo_inositol`,`dsorbitol`,`larabinose`,`raffinose`,`lrhamnose`,`maltose`,`dxylose`,`trehalose`,`cellobiose`,`methyl_glucoside`,`esculing`,`melibiose`,`darabitol`,`mucate`,`lipase`,`drn`,`nitrate`,`oxidase`,`onpg`,`yellow`,`dmannose`) VALUES ('Cedecea lapagei', 5,3,1,2,5,5,5,5,2,5,2,5,3,1,1,1,3,5,1,5,1,5,5,5,5,5,5,1,5,1,1,5,1,5,1,5,1,5,1,5,1,5,1);
INSERT INTO `biochemical_tests` (`bacteria_name`,`indole`,`methyl_red`,`voges_proskauer`,`citrate_simmons`,`hydrogen_sulfide`,`urease`,`phenylalanine_deamin`,`lysine_decarboxylase`,`arginine_dihydrolase`,`ornithine_decarboxyl`,`motility`,`gelatin`,`kcn`,`malonate_utilization`,`acid_production`,`gas_production`,`lactose`,`sucrose`,`dmannitol`,`dulcitol`,`salicin`,`dadonitol`,`myo_inositol`,`dsorbitol`,`larabinose`,`raffinose`,`lrhamnose`,`maltose`,`dxylose`,`trehalose`,`cellobiose`,`methyl_glucoside`,`esculing`,`melibiose`,`darabitol`,`mucate`,`lipase`,`drn`,`nitrate`,`oxidase`,`onpg`,`yellow`,`dmannose`) VALUES ('Citrobacter amalonaticus', 1,1,5,2,5,2,5,5,2,1,1,5,1,4,1,1,3,4,1,5,3,5,5,1,1,5,1,1,1,1,1,5,5,4,5,1,5,5,1,5,1,5,1);
INSERT INTO `biochemical_tests` (`bacteria_name`,`indole`,`methyl_red`,`voges_proskauer`,`citrate_simmons`,`hydrogen_sulfide`,`urease`,`phenylalanine_deamin`,`lysine_decarboxylase`,`arginine_dihydrolase`,`ornithine_decarboxyl`,`motility`,`gelatin`,`kcn`,`malonate_utilization`,`acid_production`,`gas_production`,`lactose`,`sucrose`,`dmannitol`,`dulcitol`,`salicin`,`dadonitol`,`myo_inositol`,`dsorbitol`,`larabinose`,`raffinose`,`lrhamnose`,`maltose`,`dxylose`,`trehalose`,`cellobiose`,`methyl_glucoside`,`esculing`,`melibiose`,`darabitol`,`mucate`,`lipase`,`drn`,`nitrate`,`oxidase`,`onpg`,`yellow`,`dmannose`) VALUES ('Citrobacter diversus', 1,1,5,1,5,2,5,5,3,1,1,5,5,1,1,1,3,4,1,3,4,1,5,1,1,5,1,1,1,1,1,3,5,5,1,1,5,5,1,5,1,5,1);
INSERT INTO `biochemical_tests` (`bacteria_name`,`indole`,`methyl_red`,`voges_proskauer`,`citrate_simmons`,`hydrogen_sulfide`,`urease`,`phenylalanine_deamin`,`lysine_decarboxylase`,`arginine_dihydrolase`,`ornithine_decarboxyl`,`motility`,`gelatin`,`kcn`,`malonate_utilization`,`acid_production`,`gas_production`,`lactose`,`sucrose`,`dmannitol`,`dulcitol`,`salicin`,`dadonitol`,`myo_inositol`,`dsorbitol`,`larabinose`,`raffinose`,`lrhamnose`,`maltose`,`dxylose`,`trehalose`,`cellobiose`,`methyl_glucoside`,`esculing`,`melibiose`,`darabitol`,`mucate`,`lipase`,`drn`,`nitrate`,`oxidase`,`onpg`,`yellow`,`dmannose`) VALUES ('Citrobacter freundii', 5,1,5,1,2,3,5,5,3,4,1,5,1,4,1,1,3,3,1,3,5,5,5,1,1,3,1,1,1,1,3,5,5,3,5,1,5,5,1,5,1,5,1);
INSERT INTO `biochemical_tests` (`bacteria_name`,`indole`,`methyl_red`,`voges_proskauer`,`citrate_simmons`,`hydrogen_sulfide`,`urease`,`phenylalanine_deamin`,`lysine_decarboxylase`,`arginine_dihydrolase`,`ornithine_decarboxyl`,`motility`,`gelatin`,`kcn`,`malonate_utilization`,`acid_production`,`gas_production`,`lactose`,`sucrose`,`dmannitol`,`dulcitol`,`salicin`,`dadonitol`,`myo_inositol`,`dsorbitol`,`larabinose`,`raffinose`,`lrhamnose`,`maltose`,`dxylose`,`trehalose`,`cellobiose`,`methyl_glucoside`,`esculing`,`melibiose`,`darabitol`,`mucate`,`lipase`,`drn`,`nitrate`,`oxidase`,`onpg`,`yellow`,`dmannose`) VALUES ('Edwardsiella hoshinai', 4,1,5,5,5,5,5,1,5,1,1,5,5,1,1,3,5,1,1,5,3,5,5,5,4,5,5,1,5,1,5,5,5,5,5,5,5,5,1,5,5,5,1);
INSERT INTO `biochemical_tests` (`bacteria_name`,`indole`,`methyl_red`,`voges_proskauer`,`citrate_simmons`,`hydrogen_sulfide`,`urease`,`phenylalanine_deamin`,`lysine_decarboxylase`,`arginine_dihydrolase`,`ornithine_decarboxyl`,`motility`,`gelatin`,`kcn`,`malonate_utilization`,`acid_production`,`gas_production`,`lactose`,`sucrose`,`dmannitol`,`dulcitol`,`salicin`,`dadonitol`,`myo_inositol`,`dsorbitol`,`larabinose`,`raffinose`,`lrhamnose`,`maltose`,`dxylose`,`trehalose`,`cellobiose`,`methyl_glucoside`,`esculing`,`melibiose`,`darabitol`,`mucate`,`lipase`,`drn`,`nitrate`,`oxidase`,`onpg`,`yellow`,`dmannose`) VALUES ('Edwardsiella ictaluri', 5,5,5,5,5,5,5,1,5,3,5,5,5,5,1,3,5,5,5,5,5,5,5,5,5,5,5,1,5,5,5,5,5,5,5,5,5,5,1,5,5,5,1);