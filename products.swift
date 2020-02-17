import Foundation


//2 arrays products and prices of n items

//user enters n,product names,prices

//fill the arrays

//user enters a product name,if exists print price

//ask user to enter quantity, find the total price and the tax and print the final price


print("Enter number of products")


let n: Int = Int(readLine()!)!


func prod(products: inout[String],prices: inout[Double],n: Int)

{

    for i in 0..<n

{

    print("Enter product \(i+1)")

    products.append(readLine()!)

    print("Enter price \(i+1)")

    prices.append(Double(readLine()!)!)

}

}


var product: [String] = []


var price: [Double] = []


var a: Double = 0


prod(products: &product,prices: &price,n: n)


print("Enter product name you want to buy")


let s: String = readLine()!


for i in 0..<product.count

{

    if product[i]==s

{

    a = price[i]

}

}

print(a)

print("Enter quantity")

var final = a*Double(readLine()!)!

final+=final*0.10

print("Final price is \(final)")
