#--Removing duplicatyes
#--standardise the data
#--null value of blank value 
#--remove the duplicate columns 


use my_project;

SELECT *
FROM layoffs;

#we create the other tav+ble in which the copy of the original data is present 

CREATE TABLE layoffs_copy
LIKE layoffs;

SELECT *
FROM Layoffs_copy;

SELECT *,
ROW_NUMBER() OVER(
PARTITION BY company,location,industry,total_laid_off,percentage_laid_off,`date`,stage,country,funds_raised_millions) AS row_num
FROM layoffs_copy;

WITH duplicate_cte AS
(
SELECT *,
ROW_NUMBER() OVER(
PARTITION BY company,location,`date`,stage,country) AS row_num
FROM layoffs_copy
)
SELECT *
FROM duplicate_cte
where row_num > 1;


# now inserting the data of layoffs into the layoffs_copy

INSERT layoffs_copy
SELECT *
FROM layoffs;


#deleting the rows whiv=ch are duplicate 


WITH duplicate_cte AS
(
SELECT *,
ROW_NUMBER() OVER(
PARTITION BY company,industry,total_laid_off,percentage_laid_off,'date') AS row_num
FROM layoffs_copy
)
DELETE 
FROM duplicate_cte
where row_num > 1;

Select *
from layoffs_copy
where company = 'Oda';

#create a new table for the updation in the table 

CREATE TABLE `layoffs_copy2` (
  `company` text,
  `location` text,
  `industry` text,
  `total_laid_off` int DEFAULT NULL,
  `percentage_laid_off` text,
  `date` text,
  `stage` text,
  `country` text,
  `funds_raised_millions` int DEFAULT NULL,
  `row_num` INT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

SELECT *
FROM layoffs_copy2;

INSERT INTO layoffs_copy2
SELECT *,
ROW_NUMBER() OVER(
PARTITION BY company,location,industry,total_laid_off,percentage_laid_off,`date`,stage,country,funds_raised_millions) AS row_num
FROM layoffs_copy;

DELETE 
FROM layoffs_copy2
where row_num > 1;

SELECT *
FROM layoffs_copy2
WHERE row_num > 1;

# NOW we are going to standardizing our data

select company,TRIM(company)
from layoffs_copy2;


UPDATE layoffs_copy2
SET company = trim(company);


select distinct industry
from layoffs_copy2;

select distinct industry
from layoffs_copy2
ORDER BY 1;

select *
from layoffs_copy2
where industry like 'Crypto%';

UPDATE layoffs_copy2
SET INDUSTRY = "Crypto"
WHERE industry LIKE 'Crypto%';

select *
from layoffs_copy2
;

select distinct location
from layoffs_copy2
ORDER BY 1;


select   distinct country
from layoffs_copy2
ORDER BY 1;

SELECT distinct country, TRIM(TRAILING '.' FROM country)
FROM layoffs_copy2
ORDER BY 1;

UPDATE layoffs_copy2
SET country =TRIM(TRAILING '.' FROM country)
WHERE country LIKE 'United states';

SELECT *
FROM layoffs_copy2;

SELECT `date`,
STR_TO_DATE(`date`,'%m/%d/%Y')
from layoffs_copy2;

UPDATE layoffs_copy2
SET `date`= str_to_date(`date`,'%m/%d/%Y');


ALTER table layoffs_copy2
modify column `date` DATE;

# now we are working on the data that is null or not 

Select *
from layoffs_copy2
where total_laid_off is null
;

Select *
from layoffs_copy2
where industry is null
or industry = '';

Select *
from layoffs_copy2
WHERE company = 'Airbnb'
;


Select t1.industry, t2.industry
from layoffs_copy2 t1
JOIN layoffs_copy2 t2
	on t1.company =t2.company
where (t1.industry is null or t1.industry='') 
and t2.industry is not null;

Update layoffs_copy2 t1
JOIN layoffs_copy2 t2
	on t1.company = t2.company
SET t1.industry = t2.industry
where (t1.industry IS NULL OR t1.industry = '')
AND t2.industry is not null;

UPDATE layoffs_copy2 
SET industry = null
where industry= '';

Select *
from layoffs_copy2
where company like 'Bally%';

DELETE
from layoffs_copy2
where total_laid_off is null 
and percentage_laid_off is null;

SELECT *
FROM layoffs_copy2;

ALTER TABLE layoffs_copy2
DROP COLUMN row_num;