CREATE TABLE "departments" (
  "dept_no" varchar,
  "dept_name" varchar,
  PRIMARY KEY ("dept_no")
);

CREATE TABLE "titles" (
  "title_id" varchar,
  "title" varchar,
  PRIMARY KEY ("title_id")
);

CREATE TABLE "employees" (
  "emp_no" int,
  "emp_title" varchar,
  "birth_date" date,
  "first_name" varchar,
  "last_name" varchar,
  "sex" varchar,
  "hire_date" date,
  PRIMARY KEY ("emp_no"),
  CONSTRAINT "FK_employees.emp_title"
    FOREIGN KEY ("emp_title")
      REFERENCES "titles"("title_id")
);

CREATE TABLE "dept_emp" (
  "empo_no" int,
  "dept_no" varchar,
  PRIMARY KEY ("empo_no"),
  CONSTRAINT "FK_dept_emp.dept_no"
    FOREIGN KEY ("dept_no")
      REFERENCES "departments"("dept_no"),
  CONSTRAINT "FK_dept_emp.empo_no"
    FOREIGN KEY ("empo_no")
      REFERENCES "employees"("emp_no")
);

CREATE TABLE "dept_manager" (
  "dept_no" varchar,
  "emp_no" int,
  PRIMARY KEY ("emp_no"),
  CONSTRAINT "FK_dept_manager.dept_no"
    FOREIGN KEY ("dept_no")
      REFERENCES "departments"("dept_no"),
  CONSTRAINT "FK_dept_manager.emp_no"
    FOREIGN KEY ("emp_no")
      REFERENCES "employees"("emp_no")
);

CREATE TABLE "salaries" (
  "emp_no" int,
  "salary" int,
  PRIMARY KEY ("emp_no"),
  CONSTRAINT "FK_salaries.emp_no"
    FOREIGN KEY ("emp_no")
      REFERENCES "employees"("emp_no")
);
--- Reconfigure to get import to dept_emp table
DROP TABLE IF EXISTS dept_emp;
CREATE TABLE "dept_emp" (
  "empo_no" int,
  "dept_no" varchar,
  CONSTRAINT "FK_dept_emp.dept_no"
    FOREIGN KEY ("dept_no")
      REFERENCES "departments"("dept_no"),
  CONSTRAINT "FK_dept_emp.empo_no"
    FOREIGN KEY ("empo_no")
      REFERENCES "employees"("emp_no")
);
