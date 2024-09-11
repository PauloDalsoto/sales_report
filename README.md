# 🧾 Total Sales Amount and Commission Report

![Main Project Image](img/salesReport.webp)

## 📋 Objective

This ABAP project aims to create a report that calculates the total sales amount and commissions for sales representatives based on user input. The report will be executed in **SAPGUI**, and the development will be carried out in **Eclipse**.

---

## 📈 Scenario

The company's finance department requires a report that calculates the **total sales amount** and **commission** for each sales representative based on the ID provided by the user.

---

## 🛠️ Requirements

1. Create an ABAP report program that prompts for the **sales representative ID**.
2. The program should calculate the **total sales amount per product** and the **commission** for each sales representative based on the user input.
3. Display the calculated fields (sales representative ID, product, total sales amount, and commission) in a table format.
4. Commission is **6%** of the total amount, hardcoded in the program.

---

## 📚 Data Modeling

![Data Modeling](path_to_data_model_image.png)

This section includes the **DDIC objects** created to store sales representatives, products, and sales transaction data. This data model serves as the foundation for calculating the total sales and commissions.

---

## 🏗️ Solution Architecture

![Solution Architecture](path_to_solution_architecture_image.png)

The solution is structured using SQL queries to retrieve and calculate sales totals and display the results in a table format. The code follows a modular approach, with global classes and unit tests for validation.

---

## 📝 Results

![Results](path_to_results_image.png)

The report clearly displays the **sales representative ID**, the **products** sold, the **total sales amount**, and the **commission** (6%) in a structured table. The final output provides a consolidated view of each sales representative’s earnings.

---

## 🚀 Technologies Used

- **ABAP**: The programming language used to develop the report.
- **SAPGUI**: Used for executing the report.
- **Eclipse**: The development environment.

