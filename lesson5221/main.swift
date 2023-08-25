//
//  main.swift
//  lesson5221
//
//  Created by Nursultan on 25/8/23.
//

import Foundation

var products: [Product] = [Product(title: "Cola", price: 35, isDiscount: false), Product(title: "Sandwich", price: 50, isDiscount: true), Product(title: "Lays", price: 70, isDiscount: false)]

var shop = Shop(products: products)

var distributor = Distributor(shop: shop)

distributor.addProduct(product: Product(title: "Snikers", price: 45, isDiscount: false))

shop.showProductsInfo()

shop.productsWithDiscount()


