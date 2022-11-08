#Fråga 1
SELECT
	förnamn, efternamn, anställningsNr
FROM
	anställd;

#Fråga 2
SELECT
	förnamn, efternamn
FROM
	anställd, 
    chef
WHERE
	anställd.anställningsnr = chef.anställningsnr;
    
#Fråga 3
SELECT
	förnamn, efternamn, avdelning.namn AS avdelning
FROM
	anställd, 
    chef, 
    avdelning
WHERE 
	anställd.anställningsnr = chef.anställningsnr
	AND anställd.avdelning_id = avdelning.id;

#Fråga 4
SELECT
	artikel.namn AS artikel
FROM
	artikel
WHERE
	artikel.antal < 3;
    
#Fråga 5
SELECT
	förnamn, efternamn, lön
FROM
	anställd
WHERE 
	lön BETWEEN 17000 AND 21000;

#Fråga 6
SELECT
	förnamn, efternamn, Startår - Födelseår AS Start
FROM
	anställd;

#Fråga 7
SELECT
	förnamn, efternamn
FROM
	anställd
WHERE 
	anställd.efternamn LIKE '%son';

#Fråga 8
SELECT
	artikel.namn AS artikel
FROM
	artikel, 
    leverantör, 
    leverantör_has_artikel
WHERE 
	artikel.artikelnr = leverantör_has_artikel.artikelnr
	AND leverantör_has_artikel.leverantör_id = leverantör.leverantör_id
	AND leverantör.namn = 'Brofab';

#Fråga 9
SELECT
	förnamn, efternamn
FROM
	anställd,
    artikel,
    artikel_has_Faktura,
    faktura
WHERE
	artikel.namn = 'Cafeset'
	AND artikel.artikelnr = artikel_has_faktura.artikelnr
	AND artikel_has_faktura.fakturanr = faktura.fakturanr
	AND faktura.anställningsnr = anställd.anställningsnr;

#Fråga 10
SELECT
	artikel.namn AS artikel
FROM
	artikel
WHERE 
	(SELECT vikt FROM artikel WHERE namn = 'tält' AND färg = 'grön') < artikel.vikt;

#Fråga 11
SELECT
	AVG(vikt)
FROM
	artikel
WHERE 
	färg = 'vit';

#Fråga 12
SELECT
	kund.namn, kund.kontonr,
    (SELECT SUM((artikel.Pris * Artikel_has_Faktura.Antal))) AS fakturerad
FROM
	kund,
    artikel,
    artikel_has_faktura,
    faktura
WHERE
	artikel.artikelnr = artikel_has_faktura.artikelnr
	AND artikel_has_faktura.fakturanr = faktura.fakturanr
	AND faktura.kundnr = kund.kundnr
GROUP BY kund.kundnr
ORDER BY fakturerad DESC;

#Fråga 13
SELECT
	kund.namn,
    (SELECT SUM(artikel.pris * artikel_has_faktura.antal)) AS inköp
FROM
	kund,
    artikel,
    artikel_has_faktura,
    faktura
WHERE
	artikel.artikelnr = artikel_has_faktura.artikelnr
	AND artikel_has_faktura.fakturanr = faktura.fakturanr
	AND faktura.kundnr = kund.kundnr
GROUP BY kund.namn
ORDER BY inköp DESC LIMIT 1;

#Fråga 14
SELECT
	leverantör.namn AS leverantör,
    SUM(artikel.vikt * leverantör_has_artikel.antal) AS sumvikt
FROM 
	ort, 
    leverantör, 
    leverantör_has_artikel, 
    artikel
WHERE 
	ort.namn = 'Stockholm'
	AND leverantör.ort_postnr = ort.postnr
	AND leverantör.leverantör_id = leverantör_has_artikel.leverantör_id
	AND leverantör_has_artikel.artikelnr = artikel.artikelnr
GROUP BY leverantör.namn;
    
#Fråga 15
SELECT 
	förnamn, efternamn,
    (SELECT YEAR(CURDATE()) - födelseår) AS ålder
FROM
	anställd
WHERE
	födelseår IN (SELECT MIN(födelseår) FROM anställd);
    
#Fråga 16
SELECT
	artikel.namn AS artikel,
    artikel.pris
FROM
	artikel
WHERE
	(SELECT AVG(artikel.pris) FROM artikel) < artikel.pris
ORDER BY pris ASC;

#Fråga 17
#Sök ut alla leverantörer som sammanlagt levererat fler än 10 artiklar.
SELECT 
	leverantör.namn, 
	SUM(leverantör_has_artikel.antal) AS antal
FROM
	leverantör_has_artikel
INNER JOIN
	leverantör
ON
	leverantör_has_artikel.leverantör_id = leverantör.leverantör_id
GROUP BY leverantör.leverantör_id
HAVING SUM(antal) > 10;

#Fråga 18
SELECT 
	förnamn, efternamn
FROM
	anställd
WHERE 
	efternamn LIKE '%son'
	OR förnamn = 'Carola'
	AND efternamn = 'Ross';