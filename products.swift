import Foundation

//2 arrays products and prices of n items

//user enters n,product names,prices

//fill the arrays

//user enters a product name,if exists print price

//ask user to enter quantity, find the total price and the tax and print the final price

//find the average of all products using function

//increase the prices of all products less than $30 by 10% and print their names and prices

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

func search(products: [String])->Int
{
print("Enter product name you want to buy")

let s: String = readLine()!

for i in 0..<products.count
{
    if products[i]==s
{
    return i
}

}

    return 0

}

func average(prices: [Double])->Double
{
    var avg: Double = 0

    var count: Double = 0

    for i in 0..<prices.count
    {
        avg+=prices[i]

        count+=1
    }

    return (avg/count)
}


func inc(products: [String],prices: inout[Double])
{

    for i in 0..<products.count
    {
        if prices[i]<30
        {
            prices[i]*=1.10
            print("\(products[i])\n\(prices[i])")
        }

    }

}

var product: [String] = []

var price: [Double] = []

prod(products: &product,prices: &price,n: n)

var a: Double = price[search(products: product)]

print("Enter quantity")

print("Final price is \(a*Double(readLine()!)!*1.10)")

print("Average is \(average(prices: price))")

inc(products: product,prices: &price)
