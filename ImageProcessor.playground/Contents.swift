//: Playground - noun: a place where people can play

import UIKit


protocol FilterType {
    func FilterImageContrast(Level: LevelFilter, avgColor: Dictionary<String,Int>, myRGBA: RGBAImage) -> UIImage
    func FilterImageBright(Level: LevelFilter, avgColor: Dictionary<String,Int>, myRGBA: RGBAImage) -> UIImage
    func FilterImageDark(Level: LevelFilter, avgColor: Dictionary<String,Int>, myRGBA: RGBAImage) -> UIImage
    func FilterImageTemperatureHot(Level: LevelFilter, avgColor: Dictionary<String,Int>, myRGBA: RGBAImage) -> UIImage
    func FilterImageTemperatureCold(Level: LevelFilter, avgColor: Dictionary<String,Int>, myRGBA: RGBAImage) -> UIImage
}

class Filters:FilterType {
    
    func FilterImageBright(Level: LevelFilter, avgColor: Dictionary<String, Int>,  myRGBA: RGBAImage) -> UIImage {
        let avgRed = avgColor["Red"]
        let avgBlue = avgColor["Blue"]
        let avgGreen = avgColor["Green"]
        var myRGBA = myRGBA
        for y in 0..<myRGBA.height{
            for x in 0..<myRGBA.width{
                let index = y * myRGBA.width + x
                var pixel = myRGBA.pixels[index]
                var BlueDiff = Int(pixel.blue) - avgBlue!
                var RedDiff = Int(pixel.red) - avgRed!
                var GreenDiff = Int(pixel.green) - avgGreen!
                
                if(RedDiff>0 && GreenDiff>0 && BlueDiff>0)
                {
                    switch Level.rawValue{
                    case "high":
                        RedDiff = RedDiff+50
                        GreenDiff = GreenDiff+50
                        BlueDiff = BlueDiff+50
                    case "medium":
                        RedDiff = RedDiff+40
                        GreenDiff = GreenDiff+40
                        BlueDiff = BlueDiff+40
                    case "low":
                        RedDiff = RedDiff+30
                        GreenDiff = GreenDiff+30
                        BlueDiff = BlueDiff+30
                    default:
                        RedDiff = RedDiff+40
                        GreenDiff = GreenDiff+40
                        BlueDiff = BlueDiff+40
                    }
                    
                    pixel.red = UInt8( max(0,min(255,avgRed! + RedDiff)))
                    pixel.blue = UInt8( max(0,min(255,avgBlue! + BlueDiff)))
                    pixel.green = UInt8( max(0,min(255,avgGreen! + GreenDiff)))
                    myRGBA.pixels[index] = pixel
                    
                }
            }
        }
        return (myRGBA.toUIImage())!
    }
    
    func FilterImageDark(Level: LevelFilter, avgColor: Dictionary<String, Int>, myRGBA: RGBAImage) -> UIImage {
        let avgRed = avgColor["Red"]
        let avgBlue = avgColor["Blue"]
        let avgGreen = avgColor["Green"]
        var myRGBA = myRGBA
        for y in 0..<myRGBA.height{
            for x in 0..<myRGBA.width{
                let index = y * myRGBA.width + x
                var pixel = myRGBA.pixels[index]
                var BlueDiff = Int(pixel.blue) - avgBlue!
                var RedDiff = Int(pixel.red) - avgRed!
                var GreenDiff = Int(pixel.green) - avgGreen!
                
                if(RedDiff>0 && GreenDiff>0 && BlueDiff>0)
                {
                    switch Level.rawValue{
                    case "high":
                        RedDiff = RedDiff+1
                        GreenDiff = GreenDiff+1
                        BlueDiff = BlueDiff+1
                    case "medium":
                        RedDiff = RedDiff/2
                        GreenDiff = GreenDiff/2
                        BlueDiff = BlueDiff/2
                    case "low":
                        RedDiff = RedDiff+3
                        GreenDiff = GreenDiff+3
                        BlueDiff = BlueDiff+3
                    default:
                        RedDiff = RedDiff/2
                        GreenDiff = GreenDiff/2
                        BlueDiff = BlueDiff/2
                    }
                    
                    pixel.red = UInt8( max(0,min(255,avgRed! + RedDiff)))
                    pixel.blue = UInt8( max(0,min(255,avgBlue! + BlueDiff)))
                    pixel.green = UInt8( max(0,min(255,avgGreen! + GreenDiff)))
                    myRGBA.pixels[index] = pixel
                    
                }
            }
        }
        return (myRGBA.toUIImage())!
    }
    
    func FilterImageTemperatureHot(Level: LevelFilter, avgColor: Dictionary<String, Int>, myRGBA: RGBAImage) -> UIImage {

        let avgRed = avgColor["Red"]
        let avgGreen = avgColor["Green"]
        var myRGBA = myRGBA
        
        for y in 0..<myRGBA.height{
            for x in 0..<myRGBA.width{
                let index = y * myRGBA.width + x
                var pixel = myRGBA.pixels[index]
                
                var RedDiff = Int(pixel.red) - avgRed!
                var GreenDiff = Int(pixel.green) - avgGreen!
                
                if(RedDiff>0 && GreenDiff>0)
                {
                    switch Level.rawValue{
                    case "high":
                        RedDiff = RedDiff+50
                        GreenDiff = GreenDiff+50
                    case "medium":
                        RedDiff = RedDiff+40
                        GreenDiff = GreenDiff+40
                    case "low":
                        RedDiff = RedDiff+30
                        GreenDiff = GreenDiff+30
                    default:
                        RedDiff = RedDiff+40
                        GreenDiff = GreenDiff+40
                    }
                    
                    pixel.red = UInt8( max(0,min(255,avgRed! + RedDiff)))
                    pixel.green = UInt8( max(0,min(255,avgGreen! + GreenDiff)))
                    myRGBA.pixels[index] = pixel
                    
                }
            }
        }
        return (myRGBA.toUIImage())!
    }
    
    func FilterImageTemperatureCold(Level: LevelFilter, avgColor: Dictionary<String, Int>, myRGBA: RGBAImage) -> UIImage {
        
        var myRGBA = myRGBA
        let avgRed = avgColor["Red"]
        let avgBlue = avgColor["Blue"]
        
        for y in 0..<myRGBA.height{
            for x in 0..<myRGBA.width{
                let index = y * myRGBA.width + x
                var pixel = myRGBA.pixels[index]
                
                var RedDiff = Int(pixel.red) - avgRed!
                var BlueDiff = Int(pixel.blue) - avgBlue!
                
                if(RedDiff>0 && BlueDiff>0)
                {
                    switch Level.rawValue{
                    case "high":
                        RedDiff = RedDiff+30
                        BlueDiff = BlueDiff+40
                    case "medium":
                        RedDiff = RedDiff+20
                        BlueDiff = BlueDiff+30
                    case "low":
                        RedDiff = RedDiff+10
                        BlueDiff = BlueDiff+20
                    default:
                        RedDiff = RedDiff+20
                        BlueDiff = BlueDiff+30
                    }
                    
                    pixel.red = UInt8( max(0,min(255,avgRed! + RedDiff)))
                    pixel.blue = UInt8( max(0,min(255,avgBlue! + BlueDiff)))
                    myRGBA.pixels[index] = pixel
                    
                }
            }
        }
        return (myRGBA.toUIImage())!
    }
    
    
    func FilterImageContrast(Level: LevelFilter, avgColor: Dictionary<String,Int>, myRGBA: RGBAImage) -> UIImage {

        let avgRed = avgColor["Red"]
        var myRGBA = myRGBA
        
        for y in 0..<myRGBA.height{
            for x in 0..<myRGBA.width{
                let index = y * myRGBA.width + x
                var pixel = myRGBA.pixels[index]
                var redDiff = Int(pixel.red) - avgRed!
                
                if(redDiff>0)
                {
                    switch Level.rawValue{
                    case "high":
                        redDiff = redDiff*3
                    case "medium":
                        redDiff = redDiff*2
                    case "low":
                        redDiff = redDiff*1
                    default:
                        redDiff = redDiff*2
                    }
                    pixel.red = UInt8( max(0,min(255,avgRed! + redDiff)))
                    myRGBA.pixels[index] = pixel
                }
            }
        }
        return (myRGBA.toUIImage())!
    }
}



class Photo:Filters{

    let images = UIImage(named: "sample")
    
    override init(){
        super.init()
        _ = self.ReadColors(imageParam: images!)
    }
    
    func ReadColors(imageParam: UIImage) -> Dictionary<String,Int>{
        var myRGBA = RGBAImage(image: images!)
        var ColorDictionary:[String:Int] = [:]
        var totalRed = 0, totalGreen = 0, totalBlue = 0, avgRed = 0, avgBlue = 0, avgGreen = 0, count = 0
        
        for y in 0..<myRGBA!.height{
             for x in 0..<myRGBA!.width{
             let index = y * myRGBA!.width + x
             var pixel = myRGBA!.pixels[index]
             totalRed += Int(pixel.red)
             totalBlue += Int(pixel.blue)
             totalGreen += Int(pixel.green)
             }
         }
        
        count = myRGBA!.width * myRGBA!.height
        avgRed = totalBlue/count
        avgBlue = totalGreen/count
        avgGreen = totalGreen/count
        
        ColorDictionary.updateValue(avgRed, forKey: "Red")
        ColorDictionary.updateValue(avgBlue, forKey: "Blue")
        ColorDictionary.updateValue(avgGreen, forKey: "Green")
        
        return ColorDictionary
    }
}

enum LevelFilter : String{
    case low
    case medium
    case high
}

let images = UIImage(named: "sample")
var myRGBA = RGBAImage(image: images!)
let PhotoFilter = Photo()
var ColorDictionary = PhotoFilter.ReadColors(imageParam: images!)



/*Each of the 5 filters have the dictionary LevelFilter with 3 values:
    high
    medium
    low
 so its posible to use any of them to affect the image level.*/

var Filter1 = PhotoFilter.FilterImageContrast(Level: LevelFilter.medium, avgColor: ColorDictionary, myRGBA: myRGBA!)

var Filter2 = PhotoFilter.FilterImageTemperatureCold(Level: LevelFilter.medium, avgColor: ColorDictionary, myRGBA: myRGBA!)

var Filter3 = PhotoFilter.FilterImageTemperatureHot(Level: LevelFilter.medium, avgColor: ColorDictionary, myRGBA: myRGBA!)

var Filter4 = PhotoFilter.FilterImageDark(Level: LevelFilter.medium, avgColor: ColorDictionary, myRGBA: myRGBA!)

var Filter5 = PhotoFilter.FilterImageBright(Level: LevelFilter.medium, avgColor: ColorDictionary, myRGBA: myRGBA!)

