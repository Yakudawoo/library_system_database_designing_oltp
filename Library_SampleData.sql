-- =============================================
-- library DATABASE SAMPLE DATA (2025)
-- =============================================

-- Drop tables if they exist
DROP TABLE IF EXISTS `urbanmart-481617.library.Loans`;
DROP TABLE IF EXISTS `urbanmart-481617.library.Books`;
DROP TABLE IF EXISTS `urbanmart-481617.library.Members`;


CREATE TABLE `urbanmart-481617.library.Members` (
  MemberID INT64,
  FirstName STRING,
  LastName STRING,
  Email STRING,
  Phone STRING,
  JoinDate DATE
);

CREATE TABLE `urbanmart-481617.library.Books` (
  BookID INT64,
  Title STRING,
  Author STRING,
  ISBN STRING,
  PublicationYear INT64,
  Status STRING
);

CREATE TABLE `urbanmart-481617.library.Loans` (
  LoanID INT64,
  MemberID INT64,
  BookID INT64,
  BorrowDate DATE,
  DueDate DATE,
  ReturnDate DATE
);


-- =============================================
-- INSERT DATA
-- =============================================

-- Members
INSERT INTO `urbanmart-481617.library.Members` (MemberID, FirstName, LastName, Email, Phone, JoinDate) VALUES
(1, 'Sarah', 'Thompson', 'sarah.thompson@email.com', '555-1001', '2025-01-10'),
(2, 'John', 'Miller', 'john.miller@email.com', '555-1002', '2025-01-12'),
(3, 'Emma', 'Rodriguez', 'emma.rodriguez@email.com', '555-1003', '2025-02-05'),
(4, 'David', 'Chen', 'david.chen@email.com', '555-1004', '2025-02-18'),
(5, 'Olivia', 'Brown', 'olivia.brown@email.com', '555-1005', '2025-03-01'),
(6, 'Liam', 'Dubois', 'liam.dubois@email.com', '555-1006', '2025-03-20'),
(7, 'Mia', 'Rossi', 'mia.rossi@email.com', '555-1007', '2025-04-04'),
(8, 'Noah', 'Johnson', 'noah.johnson@email.com', '555-1008', '2025-04-10'),
(9, 'Isabella', 'Khan', 'isabella.khan@email.com', '555-1009', '2025-05-02'),
(10, 'Lucas', 'Martinez', 'lucas.martinez@email.com', '555-1010', '2025-05-10'),
(11, 'Amelia', 'Nguyen', 'amelia.nguyen@email.com', '555-1011', '2025-05-25'),
(12, 'Ethan', 'Patel', 'ethan.patel@email.com', '555-1012', '2025-06-01'),
(13, 'Ava', 'Garcia', 'ava.garcia@email.com', '555-1013', '2025-06-15'),
(14, 'Leo', 'Bauer', 'leo.bauer@email.com', '555-1014', '2025-06-20'),
(15, 'Sophia', 'Kim', 'sophia.kim@email.com', '555-1015', '2025-07-01');

-- Books
INSERT INTO `urbanmart-481617.library.Books` (BookID, Title, Author, ISBN, PublicationYear, Status) VALUES
(1, 'The Pragmatic Programmer', 'Andrew Hunt', '9780135957059', 1999, 'Available'),
(2, 'Clean Code', 'Robert C. Martin', '9780132350884', 2008, 'Loaned'),
(3, 'Atomic Habits', 'James Clear', '9780735211292', 2018, 'Available'),
(4, 'Deep Work', 'Cal Newport', '9781455586691', 2016, 'Available'),
(5, 'Sapiens', 'Yuval Noah Harari', '9780062316097', 2015, 'Available'),
(6, 'The Great Gatsby', 'F. Scott Fitzgerald', '9780743273565', 1925, 'Available'),
(7, 'Thinking, Fast and Slow', 'Daniel Kahneman', '9780374533557', 2011, 'Available'),
(8, 'The Alchemist', 'Paulo Coelho', '9780061122415', 1988, 'Loaned'),
(9, 'Educated', 'Tara Westover', '9780399590504', 2018, 'Available'),
(10, '1984', 'George Orwell', '9780451524935', 1949, 'Available'),
(11, 'To Kill a Mockingbird', 'Harper Lee', '9780446310789', 1960, 'Available'),
(12, 'The Subtle Art of Not Giving a F*ck', 'Mark Manson', '9780062457714', 2016, 'Available'),
(13, 'Becoming', 'Michelle Obama', '9781524763138', 2018, 'Available'),
(14, 'Homo Deus', 'Yuval Noah Harari', '9780062464316', 2017, 'Available'),
(15, 'The Midnight library', 'Matt Haig', '9780525559474', 2020, 'Available'),
(16, 'The Psychology of Money', 'Morgan Housel', '9780857197689', 2020, 'Available'),
(17, 'Invisible Women', 'Caroline Criado Perez', '9781784742928', 2019, 'Available'),
(18, 'Outliers', 'Malcolm Gladwell', '9780316017930', 2008, 'Available'),
(18, 'Dune', 'Frank Herbert', '9780441013593', 1965, 'Loaned'),
(19, 'The Lean Startup', 'Eric Ries', '9780307887894', 2011, 'Available');

-- Loans (mix of active, returned, overdue)
INSERT INTO `urbanmart-481617.library.Loans` (LoanID, MemberID, BookID, BorrowDate, DueDate, ReturnDate) VALUES
(1, 1, 2, '2025-01-05', '2025-01-19', '2025-01-18'),
(2, 1, 8, '2025-02-10', '2025-02-24', NULL),
(3, 2, 3, '2025-01-20', '2025-02-03', '2025-02-01'),
(4, 2, 19, '2025-02-15', '2025-03-01', '2025-03-05'),
(5, 3, 1, '2025-03-10', '2025-03-24', '2025-03-25'),
(6, 3, 5, '2025-04-01', '2025-04-15', NULL),
(7, 4, 4, '2025-04-05', '2025-04-19', '2025-04-18'),
(8, 4, 14, '2025-06-02', '2025-06-16', '2025-06-15'),
(9, 5, 8, '2025-06-10', '2025-06-24', NULL),
(10, 5, 19, '2025-05-15', '2025-05-29', '2025-06-02'),
(11, 6, 7, '2025-04-20', '2025-05-04', '2025-05-06'),
(12, 6, 2, '2025-06-01', '2025-06-15', NULL),
(13, 7, 11, '2025-06-05', '2025-06-19', '2025-06-20'),
(14, 7, 13, '2025-07-01', '2025-07-15', NULL),
(15, 8, 15, '2025-06-12', '2025-06-26', '2025-06-25'),
(16, 8, 4, '2025-07-02', '2025-07-16', '2025-07-20'),
(17, 9, 16, '2025-07-05', '2025-07-19', NULL),
(18, 9, 10, '2025-03-10', '2025-03-24', '2025-03-25'),
(19, 10, 12, '2025-04-01', '2025-04-15', '2025-04-13'),
(20, 10, 18, '2025-05-01', '2025-05-15', '2025-05-14'),
(21, 11, 3, '2025-06-01', '2025-06-15', '2025-06-14'),
(22, 11, 20, '2025-07-05', '2025-07-19', NULL),
(23, 12, 9, '2025-03-01', '2025-03-15', '2025-03-14'),
(24, 12, 5, '2025-05-10', '2025-05-24', '2025-05-22'),
(25, 13, 6, '2025-06-20', '2025-07-04', '2025-07-06'),
(26, 13, 17, '2025-07-15', '2025-07-29', NULL),
(27, 14, 19, '2025-07-02', '2025-07-16', '2025-07-20'),
(28, 14, 15, '2025-08-01', '2025-08-15', NULL),
(29, 15, 1, '2025-05-10', '2025-05-24', '2025-05-23'),
(30, 15, 8, '2025-08-10', '2025-08-24', NULL),
(31, 1, 14, '2025-08-12', '2025-08-26', NULL),
(32, 2, 16, '2025-08-15', '2025-08-29', '2025-09-01'),
(33, 3, 11, '2025-08-20', '2025-09-03', NULL),
(34, 4, 2, '2025-08-10', '2025-08-24', '2025-08-25'),
(35, 5, 9, '2025-08-05', '2025-08-19', NULL),
(36, 6, 13, '2025-08-08', '2025-08-22', NULL),
(37, 7, 6, '2025-08-10', '2025-08-24', NULL),
(38, 8, 17, '2025-08-12', '2025-08-26', NULL),
(39, 9, 19, '2025-08-15', '2025-08-29', NULL);

-- =============================================
-- END OF FILE
-- =============================================
