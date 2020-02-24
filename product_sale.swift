
//product.swift
class product
{
var no: Int
var name: String
var cost: Double
var quantity: Int

//the constructor
init(no: Int,name: String,cost: Double,quantity: Int)
{
self.no = no
self.name = name
self.cost = cost
self.quantity = quantity
}
}

//main.swift
import Foundation



//create class product with no,name,cost,quantity



//functions to calculate and return the price of products as price = cost*1.7 if cost is less than 20$ ; price=cost*1.5 otherwise



//reduce quantity function to reduce quantity by sold quantity



/*

 in the main

 create an array of products and let the user enter the products

 ask the user for the product to buy

 search if product exists and display the price

 ask user about required quantity and check if required quantity is available

 calculate total price and add 13% of tax

 reduce the quantity by sold quantity

 ask the user if they want to buy another product; if not exit

 */



func price(cost: Double)->Double

{

    var price: Double

    if cost<20

    {

        price = cost*1.7

    }

    else

    {

        price = cost*1.5

    }

    return price

}





print("Enter numnber of products")



let n = Int(readLine()!)!



var prod: [product] = []



for i in 0..<n

{

    print("Enter product no \(i+1)")

    let no = Int(readLine()!)!

    print("Enter product name \(i+1)")

    let name = readLine()!

    print("Enter product cost \(i+1)")

    let cost = Double(readLine()!)!

    print("Enter product quantity \(i+1)")

    let quant = Int(readLine()!)!

    

    prod.append(product(no: no,name: name,cost: cost,quantity: quant))

}



var q = 1



repeat{

print("Enter product name you want to buy")

let p = readLine()!



for i in 0..<prod.count

{

    if prod[i].name==p

    {

        let p = price(cost: prod[i].cost)

        print("Final price is \(p)")

        print("Enter the quantity you want")

        let want = Int(readLine()!)!

        if prod[i].quantity>=want

        {

            print("Quantity exists")

            print("Total price is \(((Double)(want))*p*1.13)")

            prod[i].quantity-=want

        }

        else

        {

            print("Not enough quantity available")

        }

        print("Quantity left is \(prod[i].quantity)")

    }

}

    print("Do you want to buy more products y/n")

    if(readLine()!=="n")

    {

        q=0

    }

}while(q==1);
