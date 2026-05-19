SELECT
    m.FirstName,
    m.LastName,
    m.Email,
    b.Title,
    l.DueDate
FROM urbanmart-481617.library.Loans l
JOIN urbanmart-481617.library.Members m
    ON l.MemberID = m.MemberID
JOIN urbanmart-481617.library.Books b
    ON l.BookID = b.BookID
WHERE l.ReturnDate IS NULL
  AND l.DueDate < CURRENT_DATE
ORDER BY l.DueDate;
