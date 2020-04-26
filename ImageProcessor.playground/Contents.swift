//: Playground - noun: a place where people can play

import UIKit

let image = UIImage(named: "sample")

// Process the image!
image

var myRGBA = RGBAImage(image: image ?? <#default value#>)!

var totalRed = 0
var totalGreen = 0
var totalBlue = 0
/*
for y in 0..<myRGBA.height{
    for x in 0..<myRGBA.width{
        let index = y * myRGBA.width + x
        var pixel = myRGBA.pixels[index]
        totalRed += Int(pixel.red)
        totalGreen += Int(pixel.green)
        totalBlue += Int(pixel.blue)
    }
}


let count = myRGBA.width * myRGBA.height
let avgRed = totalRed/count
let avgGreen = totalGreen/count
let avgBlue = totalBlue/count
*/

let avgRed = 118
let avgGreen = 98
let avgBlue = 83

for y in 0..<myRGBA.height{
    for x in 0..<myRGBA.width{
        let index = y * myRGBA.width + x
        var pixel = myRGBA.pixels[index]
        let redDiff = Int(pixel.red) - avgRed
        
        if(redDiff>0)
        {
            pixel.red = UInt8( max(0,min(255,avgRed + redDiff*5)))
            myRGBA.pixels[index] = pixel
        }
    }
}

let mewImage2 = myRGBA.toUIImage()
image
