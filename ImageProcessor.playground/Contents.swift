//: Playground - noun: a place where people can play

import UIKit

let image = UIImage(named: "sample")




//filter red color

func FilterImageRed() -> UIImage{
    var myRGBA = RGBAImage(image: image ?? <#default value#>)!
    
    var totalRed = 0
    let avgRed = 83
    for y in 0..<myRGBA.height{
        for x in 0..<myRGBA.width{
            let index = y * myRGBA.width + x
            var pixel = myRGBA.pixels[index]
            let redDiff = Int(pixel.red) - avgRed
            
            if(redDiff>0)
            {
                pixel.red = UInt8( max(0,min(255,avgRed + redDiff*2)))
                myRGBA.pixels[index] = pixel
            }
        }
    }

    return (myRGBA.toUIImage())!
}

//scale of gray
func FilterImageGrayScale() -> UIImage{
    
        // Create a new UIImage object
    //let newImage: UIImage = UIImage(CGImage: imageRef)

    
    //return (newImage)
}


let imageRE = FilterImageRed()
imageRE

