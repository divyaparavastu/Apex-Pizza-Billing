
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
Map<String, Integer> myList = new Map<String, Integer>{'Ross' => 3, 'Chandler' => 1, 'Joey' => 4};

// Map to store the total bill amount per person
Map<String, Integer >myBill = new Map<String, Integer>();

// Calculate Ross's total bill based on slices
myBill.put('Ross', myList.get('Ross') > 3 ? 6 * myList.get('Ross') 
           : myList.get('Ross') >= 2 && myList.get('Ross')<= 3 ? 7 * myList.get('Ross') 
           : 8 * myList.get('Ross'));

// Calculate Chandler's total bill
myBill.put('Chandler', myList.get('Chandler') > 3 ? 6 * myList.get('Chandler')
           : myList.get('Chandler') >= 2 && myList.get('Chandler')<= 3 ? 7 * myList.get('Chandler') 
           : 8 * myList.get('Chandler'));

// Calculate Joey's total bill
myBill.put('Joey', myList.get('Joey') > 3 ? 6 * myList.get('Joey') 
           : myList.get('Joey') >= 2 && myList.get('Joey')<= 3 ? 7 * myList.get('Joey') 
           : 8 * myList.get('Joey'));    

// Output each person's total bill
system.debug('Ross has to pay: '+myBill.get('Ross'));
system.debug('Chandler has to pay: '+myBill.get('Chandler'));
system.debug('Joey has to pay: '+myBill.get('Joey'));
    }
}
