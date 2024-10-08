--Remove Duplicates
WITH Duplicates AS (
    SELECT *,
           ROW_NUMBER() OVER (PARTITION BY emp_title, member_id ORDER BY id) AS rn
    FROM financial_loan
)
DELETE FROM financial_loan
WHERE id IN (SELECT id FROM Duplicates WHERE rn > 1);

--Formatting Verification Status
UPDATE financial_loan
SET verification_status = 'Verified'
WHERE verification_status LIKE 'Source %';

--Rounding Data Values 
UPDATE financial_loan
SET dti = ROUND(dti, 3),
	installment = ROUND(installment, 2),
    int_rate = ROUND(int_rate, 2),
    annual_income = ROUND(annual_income, 2);

--Trimming all White Spaces
UPDATE financial_loan
SET emp_title = LTRIM(RTRIM(emp_title)),
    address_state = LTRIM(RTRIM(address_state)),
    application_type = LTRIM(RTRIM(application_type)),
    grade = LTRIM(RTRIM(grade)),
    home_ownership = LTRIM(RTRIM(home_ownership)),
    loan_status = LTRIM(RTRIM(loan_status)),
    purpose = LTRIM(RTRIM(purpose)),
    verification_status = LTRIM(RTRIM(verification_status));

--Replacing NULL Values
UPDATE financial_loan
SET emp_title = COALESCE(emp_title, 'Unemployed'),
    verification_status = COALESCE(verification_status, 'Not Verified'),
    dti = COALESCE(dti, 0),
    annual_income = COALESCE(annual_income, 0);


-- Formatting and storing all date columns as DATE type
UPDATE financial_loan
SET issue_date = CONVERT(DATE, issue_date, 23),
    last_payment_date = CONVERT(DATE, last_payment_date, 23),
    next_payment_date = CONVERT(DATE, next_payment_date, 23),
    last_credit_pull_date = CONVERT(DATE, last_credit_pull_date, 23);


--Data Consistency Checks
UPDATE financial_loan
SET home_ownership = CASE
    WHEN home_ownership = 'none' THEN 'Other'
    WHEN home_ownership = 'None' THEN 'Other'
    WHEN home_ownership = 'rent' THEN 'Rent'
    WHEN home_ownership = 'own' THEN 'Own'
    WHEN home_ownership = 'mortgage' THEN 'Mortgage'
    ELSE home_ownership
END;

--





