-- DatabBase: `employees_manager`

-- Table `employees`
CREATE TABLE `employees` (
`id` int(11) NOT NULL,
`name` varchar(100) NOT NULL,
`wage` double(12,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


INSERT INTO `employees` (`id`, `name`, `wage`) VALUES
(1, 'Pham Tuan Ngoc 1', 3000.00),
(2, 'Pham Tuan Ngoc 2', 4000.00),
(3, 'Pham Tuan Ngoc 3', 5000.00),
(4, 'Pham Tuan Ngoc 4', 6000.00);


ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);
GO

ALTER TABLE `employees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

