create database sic2025_NguyenThiThuTrang;
use sic2025_NguyenThiThuTrang;
-- 1) Bảng employees
CREATE TABLE employees (
    emp_no                   INT            NOT NULL,
    emp_title_id             VARCHAR(20)    NOT NULL,
    birth_date               DATE           NOT NULL,
    first_name               VARCHAR(50)    NOT NULL,
    last_name                VARCHAR(50)    NOT NULL,
    sex                      ENUM('M','F','O') NOT NULL,
    hire_date                DATE           NOT NULL,
    no_of_projects           INT            NOT NULL DEFAULT 0,
    last_performance_rating  VARCHAR(20)    NULL,
    `left`                   TINYINT(1)     NOT NULL DEFAULT 0,
    last_date                DATE           NULL,
    PRIMARY KEY (emp_no)
) ENGINE=InnoDB;

-- 2) Bảng salaries
CREATE TABLE salaries (
    emp_no   INT              NOT NULL,
    salary   DECIMAL(12,2)    NOT NULL,
    PRIMARY KEY (emp_no),
    CONSTRAINT fk_salaries_emp
        FOREIGN KEY (emp_no)
        REFERENCES employees(emp_no)
        ON DELETE CASCADE
        ON UPDATE CASCADE
) ENGINE=InnoDB;
select * from employees