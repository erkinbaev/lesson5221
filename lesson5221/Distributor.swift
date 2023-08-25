//
//  Distributor.swift
//  lesson5221
//
//  Created by Nursultan on 25/8/23.
//

import Foundation

class Distributor {
    var shop: Shop
    
    init(shop: Shop) {
        self.shop = shop
    }
    
    func addProduct(product: Product) {
        shop.products.append(product)
    }
}

class Product {
    var title: String
    var price: Float
    var isDiscount: Bool
    
    init(title: String, price: Float, isDiscount: Bool) {
        self.title = title
        self.price = price
        self.isDiscount = isDiscount
    }
}

class Shop {
    var products: [Product]
    
    init(products: [Product]) {
        self.products = products
    }
    
    func showProductsInfo() {
        changePrices(amount:  2.0)
    
        for product in products {
            print(product.title, product.price)
        }
    }
    
    private func changePrices(amount: Float) {
        for (index, value) in products.enumerated() {
            products[index].price += amount
            
            print(index, dump(value))
        }
        
//        for index in 0...products.count - 1 {
//            products[index]
//        }
    }
    
    func productsWithDiscount() {
        for product in products {
            if product.isDiscount == true {
                print(product.title, product.price)
            }
        }
    }
}


