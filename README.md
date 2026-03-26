# Apex-Pizza-Billing

## Description
This is a Salesforce Apex demo project to calculate pizza bills based on the number of slices ordered.  
The project demonstrates:

- Functional and conditional logic in Apex
- Using Maps and ternary operators
- Calculation of totals for multiple users
- Debugging and commenting best practices

This project is intended for learning and practicing Apex programming and Salesforce QA concepts.

---

## Users & Sample Orders
| User     | Slices Ordered | Rate Applied | Total ($) |
|----------|----------------|-------------|-----------|
| Ross     | 3              | $7/slice    | 21        |
| Chandler | 1              | $8/slice    | 8         |
| Joey     | 4              | $6/slice    | 24        |

---

## How it Works
1. The number of slices each user ordered is stored in a `Map<String, Integer>`.  
2. A second `Map<String, Integer>` calculates each user’s total bill based on these rules:  
   - 1 slice → $8 per slice  
   - 2-3 slices → $7 per slice  
   - More than 3 slices → $6 per slice  
3. The code uses **ternary operators** to determine the rate and multiplies by the number of slices.  
4. The final bill for each user is printed using `System.debug()`.

---

## Running the Code
1. Copy the Apex class into a Salesforce Developer Org or Sandbox.  
2. Execute the class in **Developer Console → Execute Anonymous Window**.  
3. View the output in the **Debug Logs**.

---

## Skills Demonstrated
- Salesforce Apex coding
- Maps and data structures
- Conditional logic (ternary operators)
- Debugging and logging in Salesforce
- Simple QA/test calculation logic

---

## License
This project is for learning purposes. Feel free to use and modify it.
