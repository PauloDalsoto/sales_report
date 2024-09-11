# 🧾 Total Sales Amount and Commission Report

<img src="/imgs/result.gif" alt="Main Project Image" width="900"/>

## 📋 Objective

This ABAP project aims to create a report that calculates the total sales amount and commissions for sales representatives based on user input. The report will be executed in **SAPGUI**, and the development will be carried out in **Eclipse**.

---

## 📈 Scenario

The company's finance department requires a report that calculates the **total sales amount** and **commission** for each sales representative based on the ID provided by the user.

---

## 🛠️ Requirements

1. Create an ABAP report program that prompts for the **sales representative ID**.
2. The program should calculate the **total sales amount per product** and the **commission** for each sales representative based on the user input.
3. Display the calculated fields (sales representative ID, total sales amount, and commission) in a table format.
4. Commission is **6%** of the total amount, hardcoded in the program.

---

## 📚 Data Modeling
This section includes the **DDIC objects** created to store sales representatives, products, and sales transaction data. This data model serves as the foundation for calculating the total sales and commissions.

![Data Modeling](/imgs/DataModel.png)


---

## 🏗️ Solution Architecture
The solution is structured using SQL queries and CDS (Core Data Services) to retrieve and calculate sales totals and display the results in a table format. The code follows a modular approach, with global classes and unit tests for validation.

![Solution Architecture](/imgs/solutionArchitecture.png)


---

## 📝 Results
The report clearly displays the **sales representative ID**, the **total sales amount**, and the **commission** (6%) in a structured table. The final output provides a consolidated view of each sales representative’s earnings.

![Report`s Input](/imgs/result1.png)

![Report`s Output](/imgs/result2.png)
---

## 🚀 Technologies Used

- **ABAP**: The programming language used to develop the report.
- **SAPGUI**: Used for executing the report.
- **Eclipse**: The development environment.

