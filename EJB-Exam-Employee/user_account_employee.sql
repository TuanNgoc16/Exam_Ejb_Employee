-- pham tuan ngoc
-- DataBase: `user_account_employee`

-- Table `authorities`

CREATE TABLE `authorities` (
`username` varchar(100) NOT NULL,
`authority` varchar(68) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


INSERT INTO `authorities` (`username`, `authority`) VALUES
('admin', 'ROLE_ADMIN'),
('manager', 'ROLE_MANAGER'),
 ('user', 'ROLE_USER');

-- Table `users`
CREATE TABLE `users` (
`username` varchar(100) NOT NULL,
`password` char(68) NOT NULL,
`enabled` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


INSERT INTO `users` (`username`, `password`, `enabled`) VALUES
              ('admin', '{bcrypt}$2a$12$0sB8T5gYJMHLGf22LnYFoeITKn1/MoGeXMVGy7ius92xf.QVANFfK', 1),
              ('manager', '{bcrypt}$2a$12$0sB8T5gYJMHLGf22LnYFoeITKn1/MoGeXMVGy7ius92xf.QVANFfK', 1),
              ('user', '{bcrypt}$2a$12$0sB8T5gYJMHLGf22LnYFoeITKn1/MoGeXMVGy7ius92xf.QVANFfK', 1);

-- pass: 12345678


ALTER TABLE `authorities` ADD KEY `username` (`username`);
ALTER TABLE `users` ADD PRIMARY KEY (`username`);


ALTER TABLE `authorities`
  ADD CONSTRAINT `authorities_ibfk_1` FOREIGN KEY (`username`) REFERENCES `users` (`username`);
COMMIT;

