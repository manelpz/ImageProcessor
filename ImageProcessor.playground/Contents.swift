//: Playground - noun: a place where people can play

import UIKit

protocol FilterType {
    func FilterImageContrast(Level: LevelFilter, avgColor: Dictionary<String,Int>, imageParam: UIImage) -> UIImage
    func FilterImageBright(Level: LevelFilter, avgColor: Dictionary<String,Int>, imageParam: UIImage) -> UIImage
    func FilterImageDark(Level: LevelFilter, avgColor: Dictionary<String,Int>, imageParam: UIImage) -> UIImage
    func FilterImageTemperatureHot(Level: LevelFilter, avgColor: Dictionary<String,Int>, imageParam: UIImage) -> UIImage
    func FilterImageTemperatureCold(Level: LevelFilter, avgColor: Dictionary<String,Int>, imageParam: UIImage) -> UIImage
}


class Filters:FilterType {
    func FilterImageBright(Level: LevelFilter, avgColor: Dictionary<String, Int>, imageParam: UIImage) -> UIImage {
        var myRGBA = RGBAImage(image: imageParam)
        let count = myRGBA!.width * myRGBA!.height
        let avgRed = avgColor["Red"]
        
        for y in 0..<myRGBA!.height{
            for x in 0..<myRGBA!.width{
                let index = y * myRGBA!.width + x
                var pixel = myRGBA!.pixels[index]
                var redDiff = Int(pixel.red) - avgRed!
                
                if(redDiff>0)
                {
                    //print(Level)
                    
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
                    myRGBA!.pixels[index] = pixel
                }
            }
        }
        return (myRGBA?.toUIImage())!
    }
    
    func FilterImageDark(Level: LevelFilter, avgColor: Dictionary<String, Int>, imageParam: UIImage) -> UIImage {
        var myRGBA = RGBAImage(image: imageParam)
        let count = myRGBA!.width * myRGBA!.height
        let avgRed = avgColor["Red"]
        
        for y in 0..<myRGBA!.height{
            for x in 0..<myRGBA!.width{
                let index = y * myRGBA!.width + x
                var pixel = myRGBA!.pixels[index]
                var redDiff = Int(pixel.red) - avgRed!
                
                if(redDiff>0)
                {
                    //print(Level)
                    
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
                    myRGBA!.pixels[index] = pixel
                }
            }
        }
        return (myRGBA?.toUIImage())!
    }
    
    func FilterImageTemperatureHot(Level: LevelFilter, avgColor: Dictionary<String, Int>, imageParam: UIImage) -> UIImage {
        var myRGBA = RGBAImage(image: imageParam)
        let count = myRGBA!.width * myRGBA!.height
        let avgRed = avgColor["Red"]
        
        for y in 0..<myRGBA!.height{
            for x in 0..<myRGBA!.width{
                let index = y * myRGBA!.width + x
                var pixel = myRGBA!.pixels[index]
                var redDiff = Int(pixel.red) - avgRed!
                
                if(redDiff>0)
                {
                    //print(Level)
                    
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
                    myRGBA!.pixels[index] = pixel
                }
            }
        }
        return (myRGBA?.toUIImage())!
    }
    
    func FilterImageTemperatureCold(Level: LevelFilter, avgColor: Dictionary<String, Int>, imageParam: UIImage) -> UIImage {
        var myRGBA = RGBAImage(image: imageParam)
        let count = myRGBA!.width * myRGBA!.height
        let avgRed = avgColor["Red"]
        let avgBlue = avgColor["Blue"]
        let avgGreen = avgColor["Green"]
        
        for y in 0..<myRGBA!.height{
            for x in 0..<myRGBA!.width{
                let index = y * myRGBA!.width + x
                var pixel = myRGBA!.pixels[index]
            
                var RedDiff = Int(pixel.red) - avgRed!
                var BlueDiff = Int(pixel.blue) - avgBlue!
                var GreenDiff = Int(pixel.green) - avgGreen!
                
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
                    myRGBA!.pixels[index] = pixel

                }
            }
        }
        return (myRGBA?.toUIImage())!
    }
    
    
    func FilterImageContrast(Level: LevelFilter, avgColor: Dictionary<String,Int>, imageParam: UIImage) -> UIImage {
        var myRGBA = RGBAImage(image: imageParam)
        let count = myRGBA!.width * myRGBA!.height
        let avgRed = avgColor["Red"]
        
        for y in 0..<myRGBA!.height{
            for x in 0..<myRGBA!.width{
                let index = y * myRGBA!.width + x
                var pixel = myRGBA!.pixels[index]
                var redDiff = Int(pixel.red) - avgRed!
                
                if(redDiff>0)
                {
                    //print(Level)
                    
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
                    myRGBA!.pixels[index] = pixel
                }
            }
        }
        return (myRGBA?.toUIImage())!
    }
}


class Photo:Filters{

    let images = UIImage(named: "sample")
    
    override init(){
        super.init()
        var ColorDictionary = self.ReadColors(imageParam: images!)
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
let PhotoFilter = Photo()
var ColorDictionary = PhotoFilter.ReadColors(imageParam: images!)


var Filter1 = PhotoFilter.FilterImageContrast(Level: LevelFilter.low, avgColor: ColorDictionary, imageParam: images!)

var Filter2 = PhotoFilter.FilterImageTemperatureCold(Level: LevelFilter.medium, avgColor: ColorDictionary, imageParam: images!)

