SELECT
    b.Title,
    b.Author,
    l.BorrowDate,
    l.DueDate
FROM urbanmart-481617.library.Loans l
JOIN urbanmart-481617.library.Books b
    ON l.BookID = b.BookID
WHERE l.MemberID = 5
  AND l.ReturnDate IS NULL; -- le livre ne doit surtout pas être déjà retourné!
