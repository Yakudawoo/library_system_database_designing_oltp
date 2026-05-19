SELECT
    b.Title,
    b.Author,
    COUNT(l.LoanID) AS TimesBorrowed
FROM urbanmart-481617.library.Books b
JOIN urbanmart-481617.library.Loans l
    ON b.BookID = l.BookID
GROUP BY b.BookID, b.Title, b.Author
ORDER BY TimesBorrowed DESC;
