
// Apex class: PizzaBillingDemo
// Purpose: Calculate total pizza bills for multiple people based on number of slices ordered
// Pricing Rules:
// 1 slice  = $8/slice
// 2-3 slices = $7/slice
// More than 3 slices = $6/slice

public class PizzaBillingDemo {

    // Method to calculate and print pizza bills
    public static void calculateBills() {
        
        // Map of people and the number of pizza slices they ordered
        Map<String, Integer> myList = new Map<String, Integer>{
            'Ross' => 3, 
            'Chandler' => 1, 
            'Joey' => 4
        };

        // Map to store the total bill amount per person
        Map<String, Integer> myBill = new Map<String, Integer>();

        // Calculate Ross's total bill
        Integer rossSlices = myList.get('Ross');
        Integer rossRate = rossSlices > 3 ? 6 : (rossSlices >= 2 ? 7 : 8);
        myBill.put('Ross', rossRate * rossSlices);

        // Calculate Chandler's total bill
        Integer chandlerSlices = myList.get('Chandler');
        Integer chandlerRate = chandlerSlices > 3 ? 6 : (chandlerSlices >= 2 ? 7 : 8);
        myBill.put('Chandler', chandlerRate * chandlerSlices);

        // Calculate Joey's total bill
        Integer joeySlices = myList.get('Joey');
        Integer joeyRate = joeySlices > 3 ? 6 : (joeySlices >= 2 ? 7 : 8);
        myBill.put('Joey', joeyRate * joeySlices);

        // Print the results
        System.debug('Ross has to pay: $' + myBill.get('Ross'));
        System.debug('Chandler has to pay: $' + myBill.get('Chandler'));
        System.debug('Joey has to pay: $' + myBill.get('Joey'));
    }
}
