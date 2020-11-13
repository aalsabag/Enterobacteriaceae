use bacteria

-- instantiate columns
CREATE TABLE IF NOT EXISTS biochemical_tests (
    entry_id INT AUTO_INCREMENT PRIMARY KEY,
    bacteria_name VARCHAR(100),
    indole INT,
    methyl_red INT,
    voges_proskauer INT,
    citrate_simmons INT,
    hydrogen_sulfide INT
);
-- 1 indicates 90%-100% of the strains are positive
-- 2 indicates 76%-89% of the strains are positive
-- 3 indicates 26%-75% of the strains are positive
-- 4 indicates 11%-15% of the strains are positive
-- 5 indicates 0%-10% of the strains are positive

-- instantiate rows
INSERT INTO `biochemical_tests` (`bacteria_name`,`indole`,`methyl_red`,`voges_proskauer`,`citrate_simmons`,`hydrogen_sulfide`) VALUES ('Salmonella IV', 5, 1, 5, 1, 1);
INSERT INTO `biochemical_tests` (`bacteria_name`,`indole`,`methyl_red`,`voges_proskauer`,`citrate_simmons`,`hydrogen_sulfide`) VALUES ('Salmonella choleraesuis', 5, 1, 5, 4, 3);
