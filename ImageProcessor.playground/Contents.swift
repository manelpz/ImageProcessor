//: Playground - noun: a place where people can play

import UIKit
typealias SKColor = UIColor

let images = UIImage(named: "sample")


//filter red color
/*func FilterImageContrast(imageParam: UIImage) -> UIImage{
    var myRGBA = RGBAImage(image: imageParam)
    
    var totalRed = 0
    let avgRed = 83

    for y in 0..<myRGBA!.height{
        for x in 0..<myRGBA!.width{
            let index = y * myRGBA!.width + x
            var pixel = myRGBA!.pixels[index]
            let redDiff = Int(pixel.red) - avgRed
            
            if(redDiff>0)
            {
                pixel.red = UInt8( max(0,min(255,avgRed + redDiff*2)))
                myRGBA!.pixels[index] = pixel
            }
        }
    }

    return (myRGBA?.toUIImage())!
}*/

var myRGBA = RGBAImage(image: images!)
var totalRed = 0
var totalGreen = 0
var totalBlue = 0
/*
for y in 0..<myRGBA!.height{
    for x in 0..<myRGBA!.width{
        let index = y * myRGBA!.width + x
        var pixel = myRGBA!.pixels[index]
        totalRed += Int(pixel.red)
        totalBlue += Int(pixel.blue)
        totalGreen += Int(pixel.green)
    }
}*/
 /*
 totalRed   669328
 totalGreen 552564
 totalBlue  469534
 */


/*let count = myRGBA!.width * myRGBA!.height
let avgRed = totalBlue/count
let avgBlue = totalGreen/count
let avgGreen = totalGreen/count
*/

let avgRed = 83
let avgBlue = 98
let avgGreen = 98

/*func FilterImageBright(imageParam: UIImage) -> UIImage{
    var myRGBA = RGBAImage(image: imageParam)
    
    
    for y in 0..<myRGBA!.height{
        for x in 0..<myRGBA!.width{
            let index = y * myRGBA!.width + x
            var pixel = myRGBA!.pixels[index]
            let RedDiff = Int(pixel.red) - avgRed
            let BlueDiff = Int(pixel.blue) - avgBlue
            let GreenDiff = Int(pixel.green) - avgGreen
            
            if(RedDiff>0)
            {
                pixel.red = UInt8( max(0,min(255,avgRed + RedDiff+40)))
                myRGBA!.pixels[index] = pixel
                
                pixel.blue = UInt8( max(0,min(255,avgBlue + BlueDiff+40)))
                myRGBA!.pixels[index] = pixel
                
                pixel.green = UInt8( max(0,min(255,avgGreen + GreenDiff+40)))
                myRGBA!.pixels[index] = pixel
                
                /*pixel.alpha = UInt8(5)
                myRGBA!.pixels[index] = pixel*/
            }
        }
    }
    
    return (myRGBA?.toUIImage())!
}*/

/*func FilterImageDark(imageParam: UIImage) -> UIImage{
    var myRGBA = RGBAImage(image: imageParam)
    
    for y in 0..<myRGBA!.height{
        for x in 0..<myRGBA!.width{
            let index = y * myRGBA!.width + x
            var pixel = myRGBA!.pixels[index]
            let RedDiff = Int(pixel.red) - avgRed
            let BlueDiff = Int(pixel.blue) - avgBlue
            let GreenDiff = Int(pixel.green) - avgGreen
            
            if(RedDiff>0)
            {
                pixel.red = UInt8( max(0,min(255,avgRed + (RedDiff/2))))
                myRGBA!.pixels[index] = pixel
                
                pixel.blue = UInt8( max(0,min(255,avgBlue + (BlueDiff/2))))
                myRGBA!.pixels[index] = pixel
                
                pixel.green = UInt8( max(0,min(255,avgGreen + (GreenDiff/2))))
                myRGBA!.pixels[index] = pixel
            }
        }
    }
    
    return (myRGBA?.toUIImage())!
}*/

/*
func FilterImageTemperatureHot(imageParam: UIImage) -> UIImage{
    var myRGBA = RGBAImage(image: imageParam)
    
    for y in 0..<myRGBA!.height{
        for x in 0..<myRGBA!.width{
            let index = y * myRGBA!.width + x
            var pixel = myRGBA!.pixels[index]
            let RedDiff = Int(pixel.red) - avgRed
            let BlueDiff = Int(pixel.blue) - avgBlue
            let GreenDiff = Int(pixel.green) - avgGreen
            
            if(RedDiff>0)
            {
                pixel.red = UInt8( max(0,min(255,avgRed + (RedDiff+40))))
                myRGBA!.pixels[index] = pixel
                
                pixel.green = UInt8( max(0,min(255,avgGreen + (GreenDiff+40))))
                myRGBA!.pixels[index] = pixel
            }
        }
    }
    
    return (myRGBA?.toUIImage())!
}*/

func FilterImageTemperatureCold(imageParam: UIImage) -> UIImage{
    var myRGBA = RGBAImage(image: imageParam)
    
    for y in 0..<myRGBA!.height{
        for x in 0..<myRGBA!.width{
            let index = y * myRGBA!.width + x
            var pixel = myRGBA!.pixels[index]
            let RedDiff = Int(pixel.red) - avgRed
            let BlueDiff = Int(pixel.blue) - avgBlue
            let GreenDiff = Int(pixel.green) - avgGreen
            
            if(RedDiff>0)
            {
                pixel.red = UInt8( max(0,min(255,avgRed + (RedDiff+20))))
                myRGBA!.pixels[index] = pixel
                
                pixel.blue = UInt8( max(0,min(255,avgBlue + (BlueDiff+30))))
                myRGBA!.pixels[index] = pixel
            }
        }
    }
    
    return (myRGBA?.toUIImage())!
}

//var imageRE = FilterImageRed(imageParam: images!)
 var imageRE = FilterImageBlue(imageParam: images!)
images
