SELECT
    LoanID,
    BorrowDate,
    DueDate,
    ReturnDate,
    CASE
        WHEN ReturnDate > DueDate
        -- THEN (ReturnDate - DueDate) * 0.50 impossible car BQ renvoie un intervalle *0.5
        THEN DATE_DIFF(ReturnDate, DueDate, DAY) * 0.50
        ELSE 0
    END AS LateFee
FROM urbanmart-481617.library.Loans
WHERE LoanID = 5;
