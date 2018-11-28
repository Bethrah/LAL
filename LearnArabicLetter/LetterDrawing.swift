//
//  LetterDrawing.swift
//  ArabicLetterGame
//
//  Created by بدور on 1/16/17.
//  Copyright © 2017 بدور. All rights reserved.
//

import Foundation
import UIKit
import SpriteKit


class LetterDrawing {
    
    let color = UIColor(red: 0.577, green: 0.898, blue: 0.946, alpha: 1.000)
    let color2 = UIColor(red: 1.000, green: 0.819, blue: 0.531, alpha: 1.000)
    
    
    var parts : [CGMutablePath] = []
    var paths : [CGMutablePath] = []
    var ends : [CGMutablePath] = []
    
    
    /////// path of main parts
    var p1Path = CGMutablePath()
    var p2Path = CGMutablePath()
    var p3Path = CGMutablePath()
    var p4Path = CGMutablePath()
    var p5Path = CGMutablePath()
    var p6Path = CGMutablePath()
    /////// path of ends
    var p1EndPath = CGMutablePath()
    var p2EndPath = CGMutablePath()
    var p3EndPath = CGMutablePath()
    var p4EndPath = CGMutablePath()
    var p5EndPath = CGMutablePath()
    var p6EndPath = CGMutablePath()
    ////// path of move paths
    var p1MPath = CGMutablePath()
    var p2MPath = CGMutablePath()
    var p3MPath = CGMutablePath()
    var p4MPath = CGMutablePath()
    var p5MPath = CGMutablePath()
    var p6MPath = CGMutablePath()
    
    
    func setLetter (id: Int)->(prt : [CGMutablePath], pth : [CGMutablePath] , end : [CGMutablePath] )
    {
        switch id {
        case 1:
            //// p1 Drawing
            p1Path.move(to: CGPoint(x: 601.7, y: 1196.26))
            p1Path.addCurve(to: CGPoint(x: 638.44, y: 767.85), control1: CGPoint(x: 601.7, y: 1196.26), control2: CGPoint(x: 605.78, y: 868.34))
            p1Path.addCurve(to: CGPoint(x: 548.64, y: 392.33), control1: CGPoint(x: 671.09, y: 667.35), control2: CGPoint(x: 683.33, y: 442.57))
            p1Path.addCurve(to: CGPoint(x: 498.57, y: 380.04), control1: CGPoint(x: 520.53, y: 381.84), control2: CGPoint(x: 505.4, y: 378.03))
            p1Path.addCurve(to: CGPoint(x: 524.15, y: 606.53), control1: CGPoint(x: 472.67, y: 387.67), control2: CGPoint(x: 566.14, y: 478.88))
            p1Path.addCurve(to: CGPoint(x: 446.6, y: 1048.16), control1: CGPoint(x: 471.09, y: 767.85), control2: CGPoint(x: 446.6, y: 1048.16))
            p1Path.addLine(to: CGPoint(x: 601.7, y: 1196.26))
            p1Path.closeSubpath()
            
            
            //// p1End Drawing
            p1EndPath.addRect(CGRect(x: 497.2, y: 379.87, width: 142.5, height: 112.5))
            
            
            //// p3M Drawing
            p3MPath.move(to: CGPoint(x: 658.46, y: 1297.59))
            p3MPath.addCurve(to: CGPoint(x: 371.54, y: 1152.47), control1: CGPoint(x: 658.46, y: 1297.59), control2: CGPoint(x: 443.27, y: 1245.34))
            
            
            
            //// p2 Drawing
            p2Path.move(to: CGPoint(x: 445.96, y: 1405.86))
            p2Path.addCurve(to: CGPoint(x: 628.96, y: 1418.46), control1: CGPoint(x: 445.96, y: 1405.86), control2: CGPoint(x: 553.67, y: 1491.44))
            p2Path.addCurve(to: CGPoint(x: 628.96, y: 1527.7), control1: CGPoint(x: 672.3, y: 1376.45), control2: CGPoint(x: 678.8, y: 1492.39))
            p2Path.addCurve(to: CGPoint(x: 445.96, y: 1481.49), control1: CGPoint(x: 592.22, y: 1553.72), control2: CGPoint(x: 497.04, y: 1526.05))
            p2Path.addCurve(to: CGPoint(x: 431.51, y: 1296.62), control1: CGPoint(x: 325.56, y: 1376.45), control2: CGPoint(x: 364.09, y: 1334.43))
            p2Path.addCurve(to: CGPoint(x: 643.4, y: 1271.41), control1: CGPoint(x: 498.93, y: 1258.81), control2: CGPoint(x: 643.4, y: 1271.41))
            p2Path.addCurve(to: CGPoint(x: 696.38, y: 1347.04), control1: CGPoint(x: 643.4, y: 1271.41), control2: CGPoint(x: 664.06, y: 1281.26))
            p2Path.addCurve(to: CGPoint(x: 619.32, y: 1334.43), control1: CGPoint(x: 710.82, y: 1376.45), control2: CGPoint(x: 688.55, y: 1348.37))
            p2Path.addCurve(to: CGPoint(x: 445.96, y: 1405.86), control1: CGPoint(x: 494.12, y: 1309.22), control2: CGPoint(x: 445.96, y: 1405.86))
            p2Path.addLine(to: CGPoint(x: 445.96, y: 1405.86))
            p2Path.closeSubpath()
            
            
            //// p3 Drawing
            p3Path.move(to: CGPoint(x: 477.52, y: 1258.74))
            p3Path.addCurve(to: CGPoint(x: 371.04, y: 1187.09), control1: CGPoint(x: 477.52, y: 1258.74), control2: CGPoint(x: 420.41, y: 1237.6))
            p3Path.addCurve(to: CGPoint(x: 438.3, y: 1161.65), control1: CGPoint(x: 321.68, y: 1136.59), control2: CGPoint(x: 306.52, y: 1098.43))
            p3Path.addCurve(to: CGPoint(x: 625.69, y: 1238.3), control1: CGPoint(x: 570.08, y: 1224.88), control2: CGPoint(x: 625.69, y: 1238.3))
            p3Path.addCurve(to: CGPoint(x: 685.76, y: 1319.35), control1: CGPoint(x: 625.69, y: 1238.3), control2: CGPoint(x: 653.31, y: 1238.93))
            p3Path.addCurve(to: CGPoint(x: 647.48, y: 1330.28), control1: CGPoint(x: 712.85, y: 1386.48), control2: CGPoint(x: 689.11, y: 1351.2))
            p3Path.addCurve(to: CGPoint(x: 477.52, y: 1258.74), control1: CGPoint(x: 555.97, y: 1284.29), control2: CGPoint(x: 477.52, y: 1258.74))
            p3Path.closeSubpath()
            
            
            //// p1M Drawing
            p1MPath.move(to: CGPoint(x: 532.66, y: 1078.6))
            p1MPath.addCurve(to: CGPoint(x: 566.34, y: 420.36), control1: CGPoint(x: 532.66, y: 1078.6), control2: CGPoint(x: 659.89, y: 570.73))
            
            
            
            //// p2M Drawing
            p2MPath.move(to: CGPoint(x: 640.23, y: 1449.61))
            p2MPath.addCurve(to: CGPoint(x: 546.85, y: 1488.73), control1: CGPoint(x: 640.23, y: 1449.61), control2: CGPoint(x: 604.3, y: 1490.87))
            p2MPath.addCurve(to: CGPoint(x: 409.23, y: 1379.2), control1: CGPoint(x: 490.02, y: 1486.61), control2: CGPoint(x: 406.79, y: 1427.83))
            p2MPath.addCurve(to: CGPoint(x: 659.89, y: 1328.35), control1: CGPoint(x: 414.15, y: 1281.41), control2: CGPoint(x: 659.89, y: 1328.35))
            
            
            //// p2End Drawing
            p2EndPath.move(to: CGPoint(x: 697.31, y: 1352.07))
            p2EndPath.addLine(to: CGPoint(x: 664.38, y: 1352.07))
            p2EndPath.addLine(to: CGPoint(x: 532.66, y: 1215.34))
            p2EndPath.addLine(to: CGPoint(x: 666.16, y: 1217.22))
            p2EndPath.addLine(to: CGPoint(x: 697.31, y: 1352.07))
            p2EndPath.closeSubpath()
            
            
            //// p3End Drawing
            p3EndPath.move(to: CGPoint(x: 359.96, y: 1215.34))
            p3EndPath.addLine(to: CGPoint(x: 285.7, y: 1078.6))
            p3EndPath.addLine(to: CGPoint(x: 446.6, y: 1165.61))
            p3EndPath.addLine(to: CGPoint(x: 359.96, y: 1215.34))
            p3EndPath.closeSubpath()
            
            
            
            
            parts = [p1Path,p2Path,p3Path]
            paths = [p1MPath,p2MPath,p3MPath]
            ends = [p1EndPath,p2EndPath,p3EndPath]
            
            break
            
        case 2 :
            
            
            
            p1Path.move(to: CGPoint(x: 893.7, y: 621.02))
            p1Path.addCurve(to: CGPoint(x: 893.7, y: 775.2), control1: CGPoint(x: 893.7, y: 621.02), control2: CGPoint(x: 890.75, y: 723.76))
            p1Path.addCurve(to: CGPoint(x: 839.62, y: 893.6), control1: CGPoint(x: 896.71, y: 827.52), control2: CGPoint(x: 839.62, y: 893.6))
            p1Path.addLine(to: CGPoint(x: 908.72, y: 1009.24))
            p1Path.addCurve(to: CGPoint(x: 977.83, y: 667.83), control1: CGPoint(x: 908.72, y: 1009.24), control2: CGPoint(x: 1046.93, y: 794.48))
            p1Path.addCurve(to: CGPoint(x: 893.7, y: 621.02), control1: CGPoint(x: 960.55, y: 636.16), control2: CGPoint(x: 893.7, y: 621.02))
            p1Path.closeSubpath()
            
            
            //// p1End Drawing
            p1EndPath.move(to: CGPoint(x: 868.59, y: 622.3))
            p1EndPath.addLine(to: CGPoint(x: 986.69, y: 604.5))
            p1EndPath.addLine(to: CGPoint(x: 998.5, y: 764.71))
            p1EndPath.addLine(to: CGPoint(x: 862.69, y: 764.71))
            p1EndPath.addLine(to: CGPoint(x: 868.59, y: 622.3))
            p1EndPath.closeSubpath()
            
            
            //// p1M Drawing
            p1MPath.move(to: CGPoint(x: 914.73, y: 929.39))
            p1MPath.addCurve(to: CGPoint(x: 968.81, y: 764.19), control1: CGPoint(x: 914.73, y: 929.39), control2: CGPoint(x: 974.82, y: 802.74))
            p1MPath.addCurve(to: CGPoint(x: 953.79, y: 714.63), control1: CGPoint(x: 962.81, y: 725.65), control2: CGPoint(x: 953.79, y: 714.63))
            
            
            
            //// p2 Drawing
            p2Path.move(to: CGPoint(x: 893.7, y: 783.46))
            p2Path.addLine(to: CGPoint(x: 992.85, y: 783.46))
            p2Path.addCurve(to: CGPoint(x: 902.72, y: 621.02), control1: CGPoint(x: 992.85, y: 783.46), control2: CGPoint(x: 1028.97, y: 644.16))
            p2Path.addCurve(to: CGPoint(x: 593.25, y: 604.5), control1: CGPoint(x: 842.62, y: 610.01), control2: CGPoint(x: 713.43, y: 604.5))
            p2Path.addCurve(to: CGPoint(x: 217.69, y: 643.05), control1: CGPoint(x: 460.92, y: 604.5), control2: CGPoint(x: 296.41, y: 624.29))
            p2Path.addCurve(to: CGPoint(x: 103.51, y: 788.97), control1: CGPoint(x: 67.46, y: 678.84), control2: CGPoint(x: 103.51, y: 788.97))
            p2Path.addLine(to: CGPoint(x: 223.69, y: 788.97))
            p2Path.addCurve(to: CGPoint(x: 593.25, y: 744.92), control1: CGPoint(x: 223.69, y: 788.97), control2: CGPoint(x: 265.76, y: 750.43))
            p2Path.addCurve(to: CGPoint(x: 893.7, y: 783.46), control1: CGPoint(x: 920.74, y: 739.41), control2: CGPoint(x: 893.7, y: 783.46))
            p2Path.closeSubpath()
            
            
            //// p2M Drawing
            p2MPath.move(to: CGPoint(x: 956.8, y: 706.37))
            p2MPath.addCurve(to: CGPoint(x: 527.15, y: 656.81), control1: CGPoint(x: 956.8, y: 706.37), control2: CGPoint(x: 764.51, y: 648.55))
            p2MPath.addCurve(to: CGPoint(x: 178.63, y: 736.66), control1: CGPoint(x: 289.79, y: 665.07), control2: CGPoint(x: 178.63, y: 736.66))
            
            
            
            //// p2End Drawing
            p2EndPath.move(to: CGPoint(x: 130.55, y: 687.1))
            p2EndPath.addLine(to: CGPoint(x: 235.71, y: 772.45))
            p2EndPath.addLine(to: CGPoint(x: 213.18, y: 795.85))
            p2EndPath.addLine(to: CGPoint(x: 94.5, y: 728.4))
            p2EndPath.addLine(to: CGPoint(x: 130.55, y: 687.1))
            p2EndPath.closeSubpath()
            
            
            //// p3 Drawing
            p3Path.move(to: CGPoint(x: 205.67, y: 648.55))
            p3Path.addCurve(to: CGPoint(x: 145.58, y: 901.86), control1: CGPoint(x: 205.67, y: 648.55), control2: CGPoint(x: 13.38, y: 676.09))
            p3Path.addCurve(to: CGPoint(x: 256.74, y: 943.16), control1: CGPoint(x: 210.99, y: 1013.57), control2: CGPoint(x: 295, y: 989))
            p3Path.addCurve(to: CGPoint(x: 202.66, y: 846.79), control1: CGPoint(x: 217.69, y: 896.35), control2
                : CGPoint(x: 202.66, y: 846.79))
            p3Path.addCurve(to: CGPoint(x: 223.69, y: 791.72), control1: CGPoint(x: 202.66, y: 846.79), control2: CGPoint(x: 181.63, y: 808.24))
            p3Path.addCurve(to: CGPoint(x: 205.67, y: 648.55), control1: CGPoint(x: 265.76, y: 775.2), control2: CGPoint(x: 205.67, y: 648.55))
            p3Path.closeSubpath()
            
            
            
            //// p3M Drawing
            p3MPath.move(to: CGPoint(x: 169.61, y: 744.92))
            p3MPath.addCurve(to: CGPoint(x: 232.71, y: 945.91), control1: CGPoint(x: 169.61, y: 744.92), control2: CGPoint(x: 160.6, y: 857.8))
            
            
            //// p3End Drawing
            p3EndPath.addRect(  CGRect(x: 193.5, y: 922.5, width: 78, height: 62))
            
            
            
            //// p444 Drawing
            
            p4Path.move(to: CGPoint(x: 565.11, y: 519.5))
            p4Path.addLine(to: CGPoint(x: 493.5, y: 456.23))
            p4Path.addLine(to: CGPoint(x: 565.11, y: 392.5))
            p4Path.addLine(to: CGPoint(x: 641.5, y: 456.23))
            p4Path.addLine(to: CGPoint(x: 565.11, y: 519.5))
            p4Path.addLine(to: CGPoint(x: 565.11, y: 519.5))
            p4Path.addLine(to: CGPoint(x: 565.11, y: 519.5))
            p4MPath.move(to: CGPoint(x: 565.11, y: 392.5))
            p4EndPath = p4Path
            
            /////
            parts = [p1Path,p2Path,p3Path,p4Path]
            ends = [p1EndPath,p2EndPath,p3EndPath,p4EndPath]
            paths = [p1MPath,p2MPath,p3MPath,p4MPath]
            
            break
            
        case 3  :
            
            
            
            p1Path.move(to: CGPoint(x: 893.7, y: 621.02))
            p1Path.addCurve(to: CGPoint(x: 893.7, y: 775.2), control1: CGPoint(x: 893.7, y: 621.02), control2: CGPoint(x: 890.75, y: 723.76))
            p1Path.addCurve(to: CGPoint(x: 839.62, y: 893.6), control1: CGPoint(x: 896.71, y: 827.52), control2: CGPoint(x: 839.62, y: 893.6))
            p1Path.addLine(to: CGPoint(x: 908.72, y: 1009.24))
            p1Path.addCurve(to: CGPoint(x: 977.83, y: 667.83), control1: CGPoint(x: 908.72, y: 1009.24), control2: CGPoint(x: 1046.93, y: 794.48))
            p1Path.addCurve(to: CGPoint(x: 893.7, y: 621.02), control1: CGPoint(x: 960.55, y: 636.16), control2: CGPoint(x: 893.7, y: 621.02))
            p1Path.closeSubpath()
            
            
            //// p1End Drawing
            p1EndPath.move(to: CGPoint(x: 868.59, y: 622.3))
            p1EndPath.addLine(to: CGPoint(x: 986.69, y: 604.5))
            p1EndPath.addLine(to: CGPoint(x: 998.5, y: 764.71))
            p1EndPath.addLine(to: CGPoint(x: 862.69, y: 764.71))
            p1EndPath.addLine(to: CGPoint(x: 868.59, y: 622.3))
            p1EndPath.closeSubpath()
            
            
            //// p1M Drawing
            p1MPath.move(to: CGPoint(x: 914.73, y: 929.39))
            p1MPath.addCurve(to: CGPoint(x: 968.81, y: 764.19), control1: CGPoint(x: 914.73, y: 929.39), control2: CGPoint(x: 974.82, y: 802.74))
            p1MPath.addCurve(to: CGPoint(x: 953.79, y: 714.63), control1: CGPoint(x: 962.81, y: 725.65), control2: CGPoint(x: 953.79, y: 714.63))
            
            
            
            //// p2 Drawing
            p2Path.move(to: CGPoint(x: 893.7, y: 783.46))
            p2Path.addLine(to: CGPoint(x: 992.85, y: 783.46))
            p2Path.addCurve(to: CGPoint(x: 902.72, y: 621.02), control1: CGPoint(x: 992.85, y: 783.46), control2: CGPoint(x: 1028.97, y: 644.16))
            p2Path.addCurve(to: CGPoint(x: 593.25, y: 604.5), control1: CGPoint(x: 842.62, y: 610.01), control2: CGPoint(x: 713.43, y: 604.5))
            p2Path.addCurve(to: CGPoint(x: 217.69, y: 643.05), control1: CGPoint(x: 460.92, y: 604.5), control2: CGPoint(x: 296.41, y: 624.29))
            p2Path.addCurve(to: CGPoint(x: 103.51, y: 788.97), control1: CGPoint(x: 67.46, y: 678.84), control2: CGPoint(x: 103.51, y: 788.97))
            p2Path.addLine(to: CGPoint(x: 223.69, y: 788.97))
            p2Path.addCurve(to: CGPoint(x: 593.25, y: 744.92), control1: CGPoint(x: 223.69, y: 788.97), control2: CGPoint(x: 265.76, y: 750.43))
            p2Path.addCurve(to: CGPoint(x: 893.7, y: 783.46), control1: CGPoint(x: 920.74, y: 739.41), control2: CGPoint(x: 893.7, y: 783.46))
            p2Path.closeSubpath()
            
            
            //// p2M Drawing
            p2MPath.move(to: CGPoint(x: 956.8, y: 706.37))
            p2MPath.addCurve(to: CGPoint(x: 527.15, y: 656.81), control1: CGPoint(x: 956.8, y: 706.37), control2: CGPoint(x: 764.51, y: 648.55))
            p2MPath.addCurve(to: CGPoint(x: 178.63, y: 736.66), control1: CGPoint(x: 289.79, y: 665.07), control2: CGPoint(x: 178.63, y: 736.66))
            
            
            
            //// p2End Drawing
            p2EndPath.move(to: CGPoint(x: 130.55, y: 687.1))
            p2EndPath.addLine(to: CGPoint(x: 235.71, y: 772.45))
            p2EndPath.addLine(to: CGPoint(x: 213.18, y: 795.85))
            p2EndPath.addLine(to: CGPoint(x: 94.5, y: 728.4))
            p2EndPath.addLine(to: CGPoint(x: 130.55, y: 687.1))
            p2EndPath.closeSubpath()
            
            
            //// p3 Drawing
            p3Path.move(to: CGPoint(x: 205.67, y: 648.55))
            p3Path.addCurve(to: CGPoint(x: 145.58, y: 901.86), control1: CGPoint(x: 205.67, y: 648.55), control2: CGPoint(x: 13.38, y: 676.09))
            p3Path.addCurve(to: CGPoint(x: 256.74, y: 943.16), control1: CGPoint(x: 210.99, y: 1013.57), control2: CGPoint(x: 295, y: 989))
            p3Path.addCurve(to: CGPoint(x: 202.66, y: 846.79), control1: CGPoint(x: 217.69, y: 896.35), control2
                : CGPoint(x: 202.66, y: 846.79))
            p3Path.addCurve(to: CGPoint(x: 223.69, y: 791.72), control1: CGPoint(x: 202.66, y: 846.79), control2: CGPoint(x: 181.63, y: 808.24))
            p3Path.addCurve(to: CGPoint(x: 205.67, y: 648.55), control1: CGPoint(x: 265.76, y: 775.2), control2: CGPoint(x: 205.67, y: 648.55))
            p3Path.closeSubpath()
            
            
            
            //// p3M Drawing
            p3MPath.move(to: CGPoint(x: 169.61, y: 744.92))
            p3MPath.addCurve(to: CGPoint(x: 232.71, y: 945.91), control1: CGPoint(x: 169.61, y: 744.92), control2: CGPoint(x: 160.6, y: 857.8))
            
            
            //// p3End Drawing
            p3EndPath.addRect(  CGRect(x: 193.5, y: 922.5, width: 78, height: 62))
            
            
            
            //// p5 Drawing
            p5Path.move(to: CGPoint(x: 495.17, y: 1119.37))
            p5Path.addLine(to: CGPoint(x: 437.01, y: 1065.88))
            p5Path.addLine(to: CGPoint(x: 495.17, y: 1009.24))
            p5Path.addLine(to: CGPoint(x: 557.2, y: 1065.88))
            p5Path.addLine(to: CGPoint(x: 495.17, y: 1119.37))
            p5Path.addLine(to: CGPoint(x: 495.17, y: 1119.37))
            p5Path.addLine(to: CGPoint(x: 495.17, y: 1119.37))
            p5MPath.move(to: CGPoint(x: 495.17, y: 1009.24))
            p5EndPath = p5Path
            
            //// p4 Drawing
            p4Path.move(to: CGPoint(x: 651.4, y: 1119.37))
            p4Path.addLine(to: CGPoint(x: 593.25, y: 1065.88))
            p4Path.addLine(to: CGPoint(x: 651.4, y: 1009.24))
            p4Path.addLine(to: CGPoint(x: 713.43, y: 1065.88))
            p4Path.addLine(to: CGPoint(x: 651.4, y: 1119.37))
            p4Path.addLine(to: CGPoint(x: 651.4, y: 1119.37))
            p4Path.addLine(to: CGPoint(x: 651.4, y: 1119.37))
            p4MPath.move(to: CGPoint(x: 651.4, y: 1009.24))
            p4EndPath = p4Path
            
            
            parts = [p1Path,p2Path,p3Path,p4Path,p5Path]
            paths = [p1MPath,p2MPath,p3MPath,p4MPath,p5MPath]
            ends = [p1EndPath,p2EndPath,p3EndPath,p4EndPath,p5EndPath]
            
            
            break
            
        case 4 :
            
            
            p1Path.move(to: CGPoint(x: 893.7, y: 621.02))
            p1Path.addCurve(to: CGPoint(x: 893.7, y: 775.2), control1: CGPoint(x: 893.7, y: 621.02), control2: CGPoint(x: 890.75, y: 723.76))
            p1Path.addCurve(to: CGPoint(x: 839.62, y: 893.6), control1: CGPoint(x: 896.71, y: 827.52), control2: CGPoint(x: 839.62, y: 893.6))
            p1Path.addLine(to: CGPoint(x: 908.72, y: 1009.24))
            p1Path.addCurve(to: CGPoint(x: 977.83, y: 667.83), control1: CGPoint(x: 908.72, y: 1009.24), control2: CGPoint(x: 1046.93, y: 794.48))
            p1Path.addCurve(to: CGPoint(x: 893.7, y: 621.02), control1: CGPoint(x: 960.55, y: 636.16), control2: CGPoint(x: 893.7, y: 621.02))
            p1Path.closeSubpath()
            
            
            //// p1End Drawing
            p1EndPath.move(to: CGPoint(x: 868.59, y: 622.3))
            p1EndPath.addLine(to: CGPoint(x: 986.69, y: 604.5))
            p1EndPath.addLine(to: CGPoint(x: 998.5, y: 764.71))
            p1EndPath.addLine(to: CGPoint(x: 862.69, y: 764.71))
            p1EndPath.addLine(to: CGPoint(x: 868.59, y: 622.3))
            p1EndPath.closeSubpath()
            
            
            //// p1M Drawing
            p1MPath.move(to: CGPoint(x: 914.73, y: 929.39))
            p1MPath.addCurve(to: CGPoint(x: 968.81, y: 764.19), control1: CGPoint(x: 914.73, y: 929.39), control2: CGPoint(x: 974.82, y: 802.74))
            p1MPath.addCurve(to: CGPoint(x: 953.79, y: 714.63), control1: CGPoint(x: 962.81, y: 725.65), control2: CGPoint(x: 953.79, y: 714.63))
            
            
            
            //// p2 Drawing
            p2Path.move(to: CGPoint(x: 893.7, y: 783.46))
            p2Path.addLine(to: CGPoint(x: 992.85, y: 783.46))
            p2Path.addCurve(to: CGPoint(x: 902.72, y: 621.02), control1: CGPoint(x: 992.85, y: 783.46), control2: CGPoint(x: 1028.97, y: 644.16))
            p2Path.addCurve(to: CGPoint(x: 593.25, y: 604.5), control1: CGPoint(x: 842.62, y: 610.01), control2: CGPoint(x: 713.43, y: 604.5))
            p2Path.addCurve(to: CGPoint(x: 217.69, y: 643.05), control1: CGPoint(x: 460.92, y: 604.5), control2: CGPoint(x: 296.41, y: 624.29))
            p2Path.addCurve(to: CGPoint(x: 103.51, y: 788.97), control1: CGPoint(x: 67.46, y: 678.84), control2: CGPoint(x: 103.51, y: 788.97))
            p2Path.addLine(to: CGPoint(x: 223.69, y: 788.97))
            p2Path.addCurve(to: CGPoint(x: 593.25, y: 744.92), control1: CGPoint(x: 223.69, y: 788.97), control2: CGPoint(x: 265.76, y: 750.43))
            p2Path.addCurve(to: CGPoint(x: 893.7, y: 783.46), control1: CGPoint(x: 920.74, y: 739.41), control2: CGPoint(x: 893.7, y: 783.46))
            p2Path.closeSubpath()
            
            
            //// p2M Drawing
            p2MPath.move(to: CGPoint(x: 956.8, y: 706.37))
            p2MPath.addCurve(to: CGPoint(x: 527.15, y: 656.81), control1: CGPoint(x: 956.8, y: 706.37), control2: CGPoint(x: 764.51, y: 648.55))
            p2MPath.addCurve(to: CGPoint(x: 178.63, y: 736.66), control1: CGPoint(x: 289.79, y: 665.07), control2: CGPoint(x: 178.63, y: 736.66))
            
            
            
            //// p2End Drawing
            p2EndPath.move(to: CGPoint(x: 130.55, y: 687.1))
            p2EndPath.addLine(to: CGPoint(x: 235.71, y: 772.45))
            p2EndPath.addLine(to: CGPoint(x: 213.18, y: 795.85))
            p2EndPath.addLine(to: CGPoint(x: 94.5, y: 728.4))
            p2EndPath.addLine(to: CGPoint(x: 130.55, y: 687.1))
            p2EndPath.closeSubpath()
            
            
            //// p3 Drawing
            p3Path.move(to: CGPoint(x: 205.67, y: 648.55))
            p3Path.addCurve(to: CGPoint(x: 145.58, y: 901.86), control1: CGPoint(x: 205.67, y: 648.55), control2: CGPoint(x: 13.38, y: 676.09))
            p3Path.addCurve(to: CGPoint(x: 256.74, y: 943.16), control1: CGPoint(x: 210.99, y: 1013.57), control2: CGPoint(x: 295, y: 989))
            p3Path.addCurve(to: CGPoint(x: 202.66, y: 846.79), control1: CGPoint(x: 217.69, y: 896.35), control2
                : CGPoint(x: 202.66, y: 846.79))
            p3Path.addCurve(to: CGPoint(x: 223.69, y: 791.72), control1: CGPoint(x: 202.66, y: 846.79), control2: CGPoint(x: 181.63, y: 808.24))
            p3Path.addCurve(to: CGPoint(x: 205.67, y: 648.55), control1: CGPoint(x: 265.76, y: 775.2), control2: CGPoint(x: 205.67, y: 648.55))
            p3Path.closeSubpath()
            
            
            
            //// p3M Drawing
            p3MPath.move(to: CGPoint(x: 169.61, y: 744.92))
            p3MPath.addCurve(to: CGPoint(x: 232.71, y: 945.91), control1: CGPoint(x: 169.61, y: 744.92), control2: CGPoint(x: 160.6, y: 857.8))
            
            
            //// p3End Drawing
            p3EndPath.addRect(  CGRect(x: 193.5, y: 922.5, width: 78, height: 62))
            
            
            
            //// p5 Drawing
            p5Path.move(to: CGPoint(x: 495.17, y: 1119.37))
            p5Path.addLine(to: CGPoint(x: 437.01, y: 1065.88))
            p5Path.addLine(to: CGPoint(x: 495.17, y: 1009.24))
            p5Path.addLine(to: CGPoint(x: 557.2, y: 1065.88))
            p5Path.addLine(to: CGPoint(x: 495.17, y: 1119.37))
            p5Path.addLine(to: CGPoint(x: 495.17, y: 1119.37))
            p5Path.addLine(to: CGPoint(x: 495.17, y: 1119.37))
            p5MPath.move(to: CGPoint(x: 495.17, y: 1009.24))
            p5EndPath = p5Path
            
            //// p4 Drawing
            p4Path.move(to: CGPoint(x: 651.4, y: 1119.37))
            p4Path.addLine(to: CGPoint(x: 593.25, y: 1065.88))
            p4Path.addLine(to: CGPoint(x: 651.4, y: 1009.24))
            p4Path.addLine(to: CGPoint(x: 713.43, y: 1065.88))
            p4Path.addLine(to: CGPoint(x: 651.4, y: 1119.37))
            p4Path.addLine(to: CGPoint(x: 651.4, y: 1119.37))
            p4Path.addLine(to: CGPoint(x: 651.4, y: 1119.37))
            p4MPath.move(to: CGPoint(x: 651.4, y: 1009.24))
            p4EndPath = p4Path
            
            
            //// p6 Drawing
            p6Path.move(to: CGPoint(x: 567.28, y: 1229.5))
            p6Path.addLine(to: CGPoint(x: 509.12, y: 1176.01))
            p6Path.addLine(to: CGPoint(x: 567.28, y: 1119.37))
            p6Path.addLine(to: CGPoint(x: 629.3, y: 1176.01))
            p6Path.addLine(to: CGPoint(x: 567.28, y: 1229.5))
            p6Path.addLine(to: CGPoint(x: 567.28, y: 1229.5))
            p6Path.addLine(to: CGPoint(x: 567.28, y: 1229.5))
            p6MPath.move(to: CGPoint(x: 567.28, y: 1119.37))
            p6EndPath = p6Path
            
            
            
            //// p444 Drawing
            
            
            //// p5 Drawing
            
            
            
            
            
            parts = [p1Path,p2Path,p3Path,p4Path,p5Path,p6Path]
            paths = [p1MPath,p2MPath,p3MPath,p4MPath,p5MPath,p6MPath]
            ends = [p1EndPath,p2EndPath,p3EndPath,p4EndPath,p5EndPath,p6EndPath]
            
            
            break
        case 5 :
            
            p1Path.move(to: CGPoint(x: 171.95, y: 1020.98))
            p1Path.addCurve(to: CGPoint(x: 209.41, y: 1113.41), control1: CGPoint(x: 171.95, y: 1020.98), control2: CGPoint(x: 148.9, y: 1009.78))
            p1Path.addCurve(to: CGPoint(x: 471.61, y: 1175.03), control1: CGPoint(x: 269.92, y: 1217.04), control2: CGPoint(x: 390.93, y: 1197.43))
            p1Path.addCurve(to: CGPoint(x: 765.5, y: 1149.82), control1: CGPoint(x: 552.28, y: 1152.62), control2: CGPoint(x: 765.5, y: 1149.82))
            p1Path.addLine(to: CGPoint(x: 687.7, y: 1006.98))
            p1Path.addLine(to: CGPoint(x: 422.63, y: 1057.39))
            p1Path.addCurve(to: CGPoint(x: 298.73, y: 1065.79), control1: CGPoint(x: 422.63, y: 1057.39), control2: CGPoint(x: 344.83, y: 1065.79))
            p1Path.addCurve(to: CGPoint(x: 171.95, y: 1020.98), control1: CGPoint(x: 252.63, y: 1065.79), control2: CGPoint(x: 171.95, y: 1020.98))
            p1Path.closeSubpath()
            
            
            //// p1M Drawing
            p1MPath.move(to: CGPoint(x: 226.7, y: 1079.8))
            p1MPath.addCurve(to: CGPoint(x: 445.68, y: 1119.01), control1: CGPoint(x: 226.7, y: 1079.8), control2: CGPoint(x: 318.9, y: 1166.62))
            p1MPath.addCurve(to: CGPoint(x: 699.23, y: 1079.8), control1: CGPoint(x: 572.45, y: 1071.4), control2: CGPoint(x: 699.23, y: 1079.8))
            
            
            
            //// p1End Drawing
            p1EndPath.addRect(CGRect(x: 661, y: 1008, width: 104.5, height: 146.5))
            
            
            
            //// p2 Drawing
            p2Path.move(to: CGPoint(x: 422.63, y: 1057.39))
            p2Path.addLine(to: CGPoint(x: 765.5, y: 1149.82))
            p2Path.addLine(to: CGPoint(x: 684.82, y: 1006.98))
            p2Path.addCurve(to: CGPoint(x: 365, y: 894.95), control1: CGPoint(x: 684.82, y: 1006.98), control2: CGPoint(x: 491.78, y: 1046.19))
            p2Path.addCurve(to: CGPoint(x: 419.74, y: 519.64), control1: CGPoint(x: 238.22, y: 743.7), control2: CGPoint(x: 336.19, y: 584.06))
            p2Path.addCurve(to: CGPoint(x: 782.79, y: 519.64), control1: CGPoint(x: 503.3, y: 455.22), control2: CGPoint(x: 702.11, y: 480.43))
            p2Path.addCurve(to: CGPoint(x: 903.8, y: 542.05), control1: CGPoint(x: 863.46, y: 558.85), control2: CGPoint(x: 947.02, y: 609.27))
            p2Path.addCurve(to: CGPoint(x: 385.17, y: 354.39), control1: CGPoint(x: 860.58, y: 474.83), control2: CGPoint(x: 690.58, y: 303.98))
            p2Path.addCurve(to: CGPoint(x: 166.19, y: 612.07), control1: CGPoint(x: 235.72, y: 379.06), control2: CGPoint(x: 175.26, y: 523.56))
            p2Path.addCurve(to: CGPoint(x: 200.77, y: 844.53), control1: CGPoint(x: 156.73, y: 704.43), control2: CGPoint(x: 174.28, y: 778.74))
            p2Path.addCurve(to: CGPoint(x: 422.63, y: 1057.39), control1: CGPoint(x: 252.63, y: 973.37), control2: CGPoint(x: 422.63, y: 1057.39))
            p2Path.closeSubpath()
            
            
            //// p2M Drawing
            p2MPath.move(to: CGPoint(x: 595.5, y: 1062.99))
            p2MPath.addCurve(to: CGPoint(x: 223.82, y: 712.9), control1: CGPoint(x: 595.5, y: 1062.99), control2: CGPoint(x: 220.94, y: 987.37))
            p2MPath.addCurve(to: CGPoint(x: 408.22, y: 427.22), control1: CGPoint(x: 224.86, y: 613.36), control2: CGPoint(x: 305.88, y: 454.97))
            p2MPath.addCurve(to: CGPoint(x: 834.65, y: 514.04), control1: CGPoint(x: 588.08, y: 378.43), control2: CGPoint(x: 834.65, y: 514.04))
            
            
            
            //// p2End Drawing
            p2EndPath.addRect( CGRect(x: 796.5, y: 487.5, width: 119, height: 101))
            
            
            
            
            
            //// p3 Drawing
            p3Path.move(to: CGPoint(x: 589.54, y: 849.5))
            p3Path.addLine(to: CGPoint(x: 512.5, y: 772.46))
            p3Path.addLine(to: CGPoint(x: 589.54, y: 689.5))
            p3Path.addLine(to: CGPoint(x: 672.5, y: 772.46))
            p3Path.addLine(to: CGPoint(x: 589.54, y: 849.5))
            p3Path.addLine(to: CGPoint(x: 589.54, y: 849.5))
            p3MPath.move(to: CGPoint(x: 589.54, y: 689.5))
            p3EndPath = p3Path
            ////////
            parts = [p1Path,p2Path,p3Path]
            ends = [p1EndPath,p2EndPath,p3EndPath]
            paths = [p1MPath,p2MPath,p3MPath]
            
            break
        case 6 :
            
            p1Path.move(to: CGPoint(x: 171.95, y: 1020.98))
            p1Path.addCurve(to: CGPoint(x: 209.41, y: 1113.41), control1: CGPoint(x: 171.95, y: 1020.98), control2: CGPoint(x: 148.9, y: 1009.78))
            p1Path.addCurve(to: CGPoint(x: 471.61, y: 1175.03), control1: CGPoint(x: 269.92, y: 1217.04), control2: CGPoint(x: 390.93, y: 1197.43))
            p1Path.addCurve(to: CGPoint(x: 765.5, y: 1149.82), control1: CGPoint(x: 552.28, y: 1152.62), control2: CGPoint(x: 765.5, y: 1149.82))
            p1Path.addLine(to: CGPoint(x: 687.7, y: 1006.98))
            p1Path.addLine(to: CGPoint(x: 422.63, y: 1057.39))
            p1Path.addCurve(to: CGPoint(x: 298.73, y: 1065.79), control1: CGPoint(x: 422.63, y: 1057.39), control2: CGPoint(x: 344.83, y: 1065.79))
            p1Path.addCurve(to: CGPoint(x: 171.95, y: 1020.98), control1: CGPoint(x: 252.63, y: 1065.79), control2: CGPoint(x: 171.95, y: 1020.98))
            p1Path.closeSubpath()
            
            
            //// p1M Drawing
            p1MPath.move(to: CGPoint(x: 226.7, y: 1079.8))
            p1MPath.addCurve(to: CGPoint(x: 445.68, y: 1119.01), control1: CGPoint(x: 226.7, y: 1079.8), control2: CGPoint(x: 318.9, y: 1166.62))
            p1MPath.addCurve(to: CGPoint(x: 699.23, y: 1079.8), control1: CGPoint(x: 572.45, y: 1071.4), control2: CGPoint(x: 699.23, y: 1079.8))
            
            
            
            //// p1End Drawing
            p1EndPath.addRect(CGRect(x: 661, y: 1008, width: 104.5, height: 146.5))
            
            
            
            //// p2 Drawing
            p2Path.move(to: CGPoint(x: 422.63, y: 1057.39))
            p2Path.addLine(to: CGPoint(x: 765.5, y: 1149.82))
            p2Path.addLine(to: CGPoint(x: 684.82, y: 1006.98))
            p2Path.addCurve(to: CGPoint(x: 365, y: 894.95), control1: CGPoint(x: 684.82, y: 1006.98), control2: CGPoint(x: 491.78, y: 1046.19))
            p2Path.addCurve(to: CGPoint(x: 419.74, y: 519.64), control1: CGPoint(x: 238.22, y: 743.7), control2: CGPoint(x: 336.19, y: 584.06))
            p2Path.addCurve(to: CGPoint(x: 782.79, y: 519.64), control1: CGPoint(x: 503.3, y: 455.22), control2: CGPoint(x: 702.11, y: 480.43))
            p2Path.addCurve(to: CGPoint(x: 903.8, y: 542.05), control1: CGPoint(x: 863.46, y: 558.85), control2: CGPoint(x: 947.02, y: 609.27))
            p2Path.addCurve(to: CGPoint(x: 385.17, y: 354.39), control1: CGPoint(x: 860.58, y: 474.83), control2: CGPoint(x: 690.58, y: 303.98))
            p2Path.addCurve(to: CGPoint(x: 166.19, y: 612.07), control1: CGPoint(x: 235.72, y: 379.06), control2: CGPoint(x: 175.26, y: 523.56))
            p2Path.addCurve(to: CGPoint(x: 200.77, y: 844.53), control1: CGPoint(x: 156.73, y: 704.43), control2: CGPoint(x: 174.28, y: 778.74))
            p2Path.addCurve(to: CGPoint(x: 422.63, y: 1057.39), control1: CGPoint(x: 252.63, y: 973.37), control2: CGPoint(x: 422.63, y: 1057.39))
            p2Path.closeSubpath()
            
            
            //// p2M Drawing
            p2MPath.move(to: CGPoint(x: 595.5, y: 1062.99))
            p2MPath.addCurve(to: CGPoint(x: 223.82, y: 712.9), control1: CGPoint(x: 595.5, y: 1062.99), control2: CGPoint(x: 220.94, y: 987.37))
            p2MPath.addCurve(to: CGPoint(x: 408.22, y: 427.22), control1: CGPoint(x: 224.86, y: 613.36), control2: CGPoint(x: 305.88, y: 454.97))
            p2MPath.addCurve(to: CGPoint(x: 834.65, y: 514.04), control1: CGPoint(x: 588.08, y: 378.43), control2: CGPoint(x: 834.65, y: 514.04))
            
            
            
            //// p2End Drawing
            p2EndPath.addRect( CGRect(x: 796.5, y: 487.5, width: 119, height: 101))
            
            ////////
            parts = [p1Path,p2Path]
            ends = [p1EndPath,p2EndPath]
            paths = [p1MPath,p2MPath]
            
            
            break
        case 7 :
            
            p1Path.move(to: CGPoint(x: 171.95, y: 1020.98))
            p1Path.addCurve(to: CGPoint(x: 209.41, y: 1113.41), control1: CGPoint(x: 171.95, y: 1020.98), control2: CGPoint(x: 148.9, y: 1009.78))
            p1Path.addCurve(to: CGPoint(x: 471.61, y: 1175.03), control1: CGPoint(x: 269.92, y: 1217.04), control2: CGPoint(x: 390.93, y: 1197.43))
            p1Path.addCurve(to: CGPoint(x: 765.5, y: 1149.82), control1: CGPoint(x: 552.28, y: 1152.62), control2: CGPoint(x: 765.5, y: 1149.82))
            p1Path.addLine(to: CGPoint(x: 687.7, y: 1006.98))
            p1Path.addLine(to: CGPoint(x: 422.63, y: 1057.39))
            p1Path.addCurve(to: CGPoint(x: 298.73, y: 1065.79), control1: CGPoint(x: 422.63, y: 1057.39), control2: CGPoint(x: 344.83, y: 1065.79))
            p1Path.addCurve(to: CGPoint(x: 171.95, y: 1020.98), control1: CGPoint(x: 252.63, y: 1065.79), control2: CGPoint(x: 171.95, y: 1020.98))
            p1Path.closeSubpath()
            
            
            //// p1M Drawing
            p1MPath.move(to: CGPoint(x: 226.7, y: 1079.8))
            p1MPath.addCurve(to: CGPoint(x: 445.68, y: 1119.01), control1: CGPoint(x: 226.7, y: 1079.8), control2: CGPoint(x: 318.9, y: 1166.62))
            p1MPath.addCurve(to: CGPoint(x: 699.23, y: 1079.8), control1: CGPoint(x: 572.45, y: 1071.4), control2: CGPoint(x: 699.23, y: 1079.8))
            
            
            
            //// p1End Drawing
            p1EndPath.addRect(CGRect(x: 661, y: 1008, width: 104.5, height: 146.5))
            
            
            
            //// p2 Drawing
            p2Path.move(to: CGPoint(x: 422.63, y: 1057.39))
            p2Path.addLine(to: CGPoint(x: 765.5, y: 1149.82))
            p2Path.addLine(to: CGPoint(x: 684.82, y: 1006.98))
            p2Path.addCurve(to: CGPoint(x: 365, y: 894.95), control1: CGPoint(x: 684.82, y: 1006.98), control2: CGPoint(x: 491.78, y: 1046.19))
            p2Path.addCurve(to: CGPoint(x: 419.74, y: 519.64), control1: CGPoint(x: 238.22, y: 743.7), control2: CGPoint(x: 336.19, y: 584.06))
            p2Path.addCurve(to: CGPoint(x: 782.79, y: 519.64), control1: CGPoint(x: 503.3, y: 455.22), control2: CGPoint(x: 702.11, y: 480.43))
            p2Path.addCurve(to: CGPoint(x: 903.8, y: 542.05), control1: CGPoint(x: 863.46, y: 558.85), control2: CGPoint(x: 947.02, y: 609.27))
            p2Path.addCurve(to: CGPoint(x: 385.17, y: 354.39), control1: CGPoint(x: 860.58, y: 474.83), control2: CGPoint(x: 690.58, y: 303.98))
            p2Path.addCurve(to: CGPoint(x: 166.19, y: 612.07), control1: CGPoint(x: 235.72, y: 379.06), control2: CGPoint(x: 175.26, y: 523.56))
            p2Path.addCurve(to: CGPoint(x: 200.77, y: 844.53), control1: CGPoint(x: 156.73, y: 704.43), control2: CGPoint(x: 174.28, y: 778.74))
            p2Path.addCurve(to: CGPoint(x: 422.63, y: 1057.39), control1: CGPoint(x: 252.63, y: 973.37), control2: CGPoint(x: 422.63, y: 1057.39))
            p2Path.closeSubpath()
            
            
            //// p2M Drawing
            p2MPath.move(to: CGPoint(x: 595.5, y: 1062.99))
            p2MPath.addCurve(to: CGPoint(x: 223.82, y: 712.9), control1: CGPoint(x: 595.5, y: 1062.99), control2: CGPoint(x: 220.94, y: 987.37))
            p2MPath.addCurve(to: CGPoint(x: 408.22, y: 427.22), control1: CGPoint(x: 224.86, y: 613.36), control2: CGPoint(x: 305.88, y: 454.97))
            p2MPath.addCurve(to: CGPoint(x: 834.65, y: 514.04), control1: CGPoint(x: 588.08, y: 378.43), control2: CGPoint(x: 834.65, y: 514.04))
            
            
            
            //// p2End Drawing
            p2EndPath.addRect( CGRect(x: 796.5, y: 487.5, width: 119, height: 101))
            
            //// p3 Drawing
            
            p3Path.move(to: CGPoint(x: 537.54, y: 1460.5))
            p3Path.addLine(to: CGPoint(x: 460.5, y: 1383.46))
            p3Path.addLine(to: CGPoint(x: 537.54, y: 1300.5))
            p3Path.addLine(to: CGPoint(x: 620.5, y: 1383.46))
            p3Path.addLine(to: CGPoint(x: 537.54, y: 1460.5))
            p3Path.addLine(to: CGPoint(x: 537.54, y: 1460.5))
            p3MPath.move(to: CGPoint(x: 537.54, y: 1300.5))
            p3EndPath = p3Path
            ////////
            parts = [p1Path,p2Path,p3Path]
            ends = [p1EndPath,p2EndPath,p3EndPath]
            paths = [p1MPath,p2MPath,p3MPath]
            
            
            break
            
        case 8 :    //dal
            
            
            //// p2End Drawing
            p2EndPath.addRect( CGRect(x: 296, y: 434, width: 57, height: 178))
            
            
            
            //// p2 Drawing
            p2Path.move(to: CGPoint(x: 668.76, y: 562.22))
            p2Path.addCurve(to: CGPoint(x: 339.76, y: 560.85), control1: CGPoint(x: 668.76, y: 562.22), control2: CGPoint(x: 377.7, y: 503.03))
            p2Path.addCurve(to: CGPoint(x: 295.5, y: 489.27), control1: CGPoint(x: 301.82, y: 618.66), control2: CGPoint(x: 295.5, y: 624.17))
            p2Path.addCurve(to: CGPoint(x: 716, y: 446.59), control1: CGPoint(x: 295.5, y: 354.36), control2: CGPoint(x: 716, y: 446.59))
            p2Path.addCurve(to: CGPoint(x: 775.85, y: 548.46), control1: CGPoint(x: 716, y: 446.59), control2: CGPoint(x: 775.85, y: 468.62))
            p2Path.addCurve(to: CGPoint(x: 668.76, y: 562.22), control1: CGPoint(x: 775.85, y: 574.88), control2: CGPoint(x: 668.76, y: 562.22))
            p2Path.closeSubpath()
            
            
            //// p1 Drawing
            p1Path.move(to: CGPoint(x: 714.43, y: 445.22))
            p1Path.addCurve(to: CGPoint(x: 742.78, y: 726.04), control1: CGPoint(x: 714.43, y: 445.22), control2: CGPoint(x: 849.87, y: 527.81))
            p1Path.addCurve(to: CGPoint(x: 528.59, y: 841.67), control1: CGPoint(x: 635.68, y: 924.26), control2: CGPoint(x: 572.69, y: 904.99))
            p1Path.addCurve(to: CGPoint(x: 534.89, y: 767.33), control1: CGPoint(x: 484.49, y: 778.35), control2: CGPoint(x: 503.39, y: 737.05))
            p1Path.addCurve(to: CGPoint(x: 660.88, y: 566.35), control1: CGPoint(x: 566.39, y: 797.62), control2: CGPoint(x: 660.88, y: 566.35))
            p1Path.addLine(to: CGPoint(x: 714.43, y: 445.22))
            p1Path.closeSubpath()
            
            //// p1End Drawing
            p1EndPath.move(to: CGPoint(x: 686.08, y: 566.35))
            p1EndPath.addCurve(to: CGPoint(x: 783.73, y: 519.55), control1: CGPoint(x: 802.63, y: 536.07), control2: CGPoint(x: 783.73, y: 519.55))
            p1EndPath.addLine(to: CGPoint(x: 733.33, y: 447.97))
            p1EndPath.addCurve(to: CGPoint(x: 686.08, y: 566.35), control1: CGPoint(x: 733.33, y: 447.97), control2: CGPoint(x: 569.54, y: 596.64))
            p1EndPath.closeSubpath()
            
            
            //// p1M Drawing
            p1MPath.move(to: CGPoint(x: 585.29, y: 814.14))
            p1MPath.addCurve(to: CGPoint(x: 714.43, y: 508.54), control1: CGPoint(x: 585.29, y: 814.14), control2: CGPoint(x: 749.08, y: 684.74))
            
            
            
            //// p2M Drawing
            p2MPath.move(to: CGPoint(x: 717.58, y: 511.29))
            p2MPath.addCurve(to: CGPoint(x: 323.85, y: 511.29), control1: CGPoint(x: 717.58, y: 511.29), control2: CGPoint(x: 481.34, y: 425.94))
            
            ////////
            parts = [p1Path,p2Path]
            ends = [p1EndPath,p2EndPath]
            paths = [p1MPath,p2MPath]
            
            break
        case 9 :
            
            
            
            p3Path.move(to: CGPoint(x: 582.14, y: 1133.5))
            p3Path.addLine(to: CGPoint(x: 519.14, y: 1064.77))
            p3Path.addLine(to: CGPoint(x: 582.14, y: 989.5))
            p3Path.addLine(to: CGPoint(x: 645.13, y: 1064.77))
            p3Path.addLine(to: CGPoint(x: 582.14, y: 1133.5))
            p3Path.closeSubpath()
            p3MPath.move(to: CGPoint(x: 582.14, y: 989.5))
            p3EndPath = p3Path
            
            //// p2End Drawing
            p2EndPath.addRect( CGRect(x: 296, y: 434, width: 57, height: 178))
            
            
            
            //// p2 Drawing
            p2Path.move(to: CGPoint(x: 668.76, y: 562.22))
            p2Path.addCurve(to: CGPoint(x: 339.76, y: 560.85), control1: CGPoint(x: 668.76, y: 562.22), control2: CGPoint(x: 377.7, y: 503.03))
            p2Path.addCurve(to: CGPoint(x: 295.5, y: 489.27), control1: CGPoint(x: 301.82, y: 618.66), control2: CGPoint(x: 295.5, y: 624.17))
            p2Path.addCurve(to: CGPoint(x: 716, y: 446.59), control1: CGPoint(x: 295.5, y: 354.36), control2: CGPoint(x: 716, y: 446.59))
            p2Path.addCurve(to: CGPoint(x: 775.85, y: 548.46), control1: CGPoint(x: 716, y: 446.59), control2: CGPoint(x: 775.85, y: 468.62))
            p2Path.addCurve(to: CGPoint(x: 668.76, y: 562.22), control1: CGPoint(x: 775.85, y: 574.88), control2: CGPoint(x: 668.76, y: 562.22))
            p2Path.closeSubpath()
            
            
            //// p1 Drawing
            p1Path.move(to: CGPoint(x: 714.43, y: 445.22))
            p1Path.addCurve(to: CGPoint(x: 742.78, y: 726.04), control1: CGPoint(x: 714.43, y: 445.22), control2: CGPoint(x: 849.87, y: 527.81))
            p1Path.addCurve(to: CGPoint(x: 528.59, y: 841.67), control1: CGPoint(x: 635.68, y: 924.26), control2: CGPoint(x: 572.69, y: 904.99))
            p1Path.addCurve(to: CGPoint(x: 534.89, y: 767.33), control1: CGPoint(x: 484.49, y: 778.35), control2: CGPoint(x: 503.39, y: 737.05))
            p1Path.addCurve(to: CGPoint(x: 660.88, y: 566.35), control1: CGPoint(x: 566.39, y: 797.62), control2: CGPoint(x: 660.88, y: 566.35))
            p1Path.addLine(to: CGPoint(x: 714.43, y: 445.22))
            p1Path.closeSubpath()
            
            //// p1End Drawing
            p1EndPath.move(to: CGPoint(x: 686.08, y: 566.35))
            p1EndPath.addCurve(to: CGPoint(x: 783.73, y: 519.55), control1: CGPoint(x: 802.63, y: 536.07), control2: CGPoint(x: 783.73, y: 519.55))
            p1EndPath.addLine(to: CGPoint(x: 733.33, y: 447.97))
            p1EndPath.addCurve(to: CGPoint(x: 686.08, y: 566.35), control1: CGPoint(x: 733.33, y: 447.97), control2: CGPoint(x: 569.54, y: 596.64))
            p1EndPath.closeSubpath()
            
            
            //// p1M Drawing
            p1MPath.move(to: CGPoint(x: 585.29, y: 814.14))
            p1MPath.addCurve(to: CGPoint(x: 714.43, y: 508.54), control1: CGPoint(x: 585.29, y: 814.14), control2: CGPoint(x: 749.08, y: 684.74))
            
            
            
            //// p2M Drawing
            p2MPath.move(to: CGPoint(x: 717.58, y: 511.29))
            p2MPath.addCurve(to: CGPoint(x: 323.85, y: 511.29), control1: CGPoint(x: 717.58, y: 511.29), control2: CGPoint(x: 481.34, y: 425.94))
            
            
            ////////
            parts = [p1Path,p2Path,p3Path]
            ends = [p1EndPath,p2EndPath,p3EndPath]
            paths = [p1MPath,p2MPath,p3MPath]
            break
            
        case 10 :
            //// p1 Drawing
            p1Path.move(to: CGPoint(x: 558.71, y: 931.95))
            p1Path.addLine(to: CGPoint(x: 644.73, y: 1046.79))
            p1Path.addCurve(to: CGPoint(x: 687.08, y: 536.14), control1: CGPoint(x: 644.73, y: 1046.79), control2: CGPoint(x: 949.13, y: 803.73))
            p1Path.addCurve(to: CGPoint(x: 214.6, y: 564.02), control1: CGPoint(x: 425.03, y: 268.56), control2: CGPoint(x: 213.28, y: 507.15))
            p1Path.addCurve(to: CGPoint(x: 525.62, y: 585.2), control1: CGPoint(x: 215.92, y: 620.88), control2: CGPoint(x: 272.31, y: 458.5))
            p1Path.addCurve(to: CGPoint(x: 687.08, y: 810.79), control1: CGPoint(x: 610.32, y: 627.57), control2: CGPoint(x: 697.67, y: 774.74))
            p1Path.addCurve(to: CGPoint(x: 560.03, y: 933.06), control1: CGPoint(x: 666.01, y: 882.54), control2: CGPoint(x: 560.03, y: 933.06))
            
            
            //// p1M Drawing
            p1MPath.move(to: CGPoint(x: 617.4, y: 969.01))
            p1MPath.addCurve(to: CGPoint(x: 658.61, y: 617.33), control1: CGPoint(x: 617.4, y: 969.01), control2: CGPoint(x: 868.44, y: 843.89))
            p1MPath.addCurve(to: CGPoint(x: 310.15, y: 502.36), control1: CGPoint(x: 448.78, y: 390.76), control2: CGPoint(x: 310.15, y: 502.36))
            
            
            
            //// p1End Drawing
            p1EndPath.move(to: CGPoint(x: 268.93, y: 468.54))
            p1EndPath.addLine(to: CGPoint(x: 351.36, y: 529.41))
            p1EndPath.addLine(to: CGPoint(x: 298.91, y: 580.13))
            p1EndPath.addLine(to: CGPoint(x: 186.5, y: 573.37))
            p1EndPath.addLine(to: CGPoint(x: 268.93, y: 468.54))
            p1EndPath.closeSubpath()
            
            
            
            parts = [p1Path]
            ends = [p1EndPath]
            paths = [p1MPath]
            break
        case 11 :
            
            //// p1 Drawing
            p1Path.move(to: CGPoint(x: 558.71, y: 931.95))
            p1Path.addLine(to: CGPoint(x: 644.73, y: 1046.79))
            p1Path.addCurve(to: CGPoint(x: 687.08, y: 536.14), control1: CGPoint(x: 644.73, y: 1046.79), control2: CGPoint(x: 949.13, y: 803.73))
            p1Path.addCurve(to: CGPoint(x: 214.6, y: 564.02), control1: CGPoint(x: 425.03, y: 268.56), control2: CGPoint(x: 213.28, y: 507.15))
            p1Path.addCurve(to: CGPoint(x: 525.62, y: 585.2), control1: CGPoint(x: 215.92, y: 620.88), control2: CGPoint(x: 272.31, y: 458.5))
            p1Path.addCurve(to: CGPoint(x: 687.08, y: 810.79), control1: CGPoint(x: 610.32, y: 627.57), control2: CGPoint(x: 697.67, y: 774.74))
            p1Path.addCurve(to: CGPoint(x: 560.03, y: 933.06), control1: CGPoint(x: 666.01, y: 882.54), control2: CGPoint(x: 560.03, y: 933.06))
            
            
            //// p2 Drawing
            p2Path.move(to: CGPoint(x: 615.57, y: 1283.5))
            p2Path.addLine(to: CGPoint(x: 538.71, y: 1215.87))
            p2Path.addLine(to: CGPoint(x: 615.57, y: 1148.24))
            p2Path.addLine(to: CGPoint(x: 688.59, y: 1215.87))
            p2Path.addLine(to: CGPoint(x: 615.57, y: 1283.5))
            p2Path.closeSubpath()
            p2MPath.move(to: CGPoint(x: 615.57, y: 1148.24))
            p2EndPath = p2Path
            
            
            //// p1M Drawing
            p1MPath.move(to: CGPoint(x: 617.4, y: 969.01))
            p1MPath.addCurve(to: CGPoint(x: 658.61, y: 617.33), control1: CGPoint(x: 617.4, y: 969.01), control2: CGPoint(x: 868.44, y: 843.89))
            p1MPath.addCurve(to: CGPoint(x: 310.15, y: 502.36), control1: CGPoint(x: 448.78, y: 390.76), control2: CGPoint(x: 310.15, y: 502.36))
            
            
            
            //// p1End Drawing
            p1EndPath.move(to: CGPoint(x: 268.93, y: 468.54))
            p1EndPath.addLine(to: CGPoint(x: 351.36, y: 529.41))
            p1EndPath.addLine(to: CGPoint(x: 298.91, y: 580.13))
            p1EndPath.addLine(to: CGPoint(x: 186.5, y: 573.37))
            p1EndPath.addLine(to: CGPoint(x: 268.93, y: 468.54))
            p1EndPath.closeSubpath()
            
            
            
            parts = [p1Path,p2Path]
            ends = [p1EndPath,p2EndPath]
            paths = [p1MPath,p2MPath]
            
            break
            
        case 12 :
            
            //// p1 Drawing
            p1Path.move(to: CGPoint(x: 816.02, y: 874.84))
            p1Path.addLine(to: CGPoint(x: 838.44, y: 951.56))
            p1Path.addCurve(to: CGPoint(x: 922.5, y: 816.64), control1: CGPoint(x: 838.44, y: 951.56), control2: CGPoint(x: 922.5, y: 927.75))
            p1Path.addCurve(to: CGPoint(x: 762.78, y: 708.17), control1: CGPoint(x: 922.5, y: 705.53), control2: CGPoint(x: 830.03, y: 681.72))
            p1Path.addCurve(to: CGPoint(x: 695.53, y: 734.63), control1: CGPoint(x: 695.53, y: 734.63), control2: CGPoint(x: 695.53, y: 734.63))
            p1Path.addLine(to: CGPoint(x: 729.15, y: 795.47))
            p1Path.addCurve(to: CGPoint(x: 838.44, y: 816.64), control1: CGPoint(x: 729.15, y: 795.47), control2: CGPoint(x: 858.05, y: 758.44))
            p1Path.addCurve(to: CGPoint(x: 816.02, y: 874.84), control1: CGPoint(x: 818.82, y: 874.84), control2: CGPoint(x: 816.02, y: 874.84))
            p1Path.closeSubpath()
            
            
            //// p2 Drawing
            p2Path.move(to: CGPoint(x: 568.03, y: 770.34))
            p2Path.addCurve(to: CGPoint(x: 654.9, y: 796.8), control1: CGPoint(x: 604.46, y: 765.05), control2: CGPoint(x: 654.9, y: 796.8))
            p2Path.addLine(to: CGPoint(x: 729.15, y: 898.65))
            p2Path.addLine(to: CGPoint(x: 731.96, y: 795.47))
            p2Path.addLine(to: CGPoint(x: 695.53, y: 734.63))
            p2Path.addCurve(to: CGPoint(x: 569.43, y: 687.01), control1: CGPoint(x: 695.53, y: 734.63), control2: CGPoint(x: 629.68, y: 677.75))
            p2Path.addCurve(to: CGPoint(x: 568.03, y: 770.34), control1: CGPoint(x: 556.11, y: 689.05), control2: CGPoint(x: 548.81, y: 773.13))
            p2Path.closeSubpath()
            
            
            //// p3 Drawing
            p3Path.move(to: CGPoint(x: 565.23, y: 772.99))
            p3Path.addCurve(to: CGPoint(x: 513.39, y: 906.58), control1: CGPoint(x: 565.23, y: 772.99), control2: CGPoint(x: 514.79, y: 907.91))
            p3Path.addCurve(to: CGPoint(x: 446.14, y: 821.93), control1: CGPoint(x: 511.99, y: 905.26), control2: CGPoint(x: 446.14, y: 821.93))
            p3Path.addCurve(to: CGPoint(x: 415.32, y: 578.54), control1: CGPoint(x: 446.14, y: 821.93), control2: CGPoint(x: 538.61, y: 671.13))
            p3Path.addCurve(to: CGPoint(x: 202.36, y: 755.79), control1: CGPoint(x: 292.02, y: 485.95), control2: CGPoint(x: 149.11, y: 665.84))
            p3Path.addCurve(to: CGPoint(x: 151.92, y: 755.79), control1: CGPoint(x: 255.6, y: 845.74), control2: CGPoint(x: 205.16, y: 872.19))
            p3Path.addCurve(to: CGPoint(x: 311.64, y: 464.79), control1: CGPoint(x: 98.68, y: 639.39), control2: CGPoint(x: 143.51, y: 501.82))
            p3Path.addCurve(to: CGPoint(x: 575.04, y: 687.01), control1: CGPoint(x: 479.77, y: 427.75), control2: CGPoint(x: 580.64, y: 594.41))
            p3Path.addCurve(to: CGPoint(x: 565.23, y: 772.99), control1: CGPoint(x: 569.43, y: 779.6), control2: CGPoint(x: 565.23, y: 772.99))
            p3Path.closeSubpath()
            
            
            //// p1M Drawing
            p1MPath.move(to: CGPoint(x: 846.84, y: 906.58))
            p1MPath.addCurve(to: CGPoint(x: 734.76, y: 755.79), control1: CGPoint(x: 846.84, y: 906.58), control2: CGPoint(x: 986.95, y: 668.49))
            
            
            
            //// p2M Drawing
            p2MPath.move(to: CGPoint(x: 709.54, y: 851.03))
            p2MPath.addCurve(to: CGPoint(x: 692.73, y: 769.02), control1: CGPoint(x: 709.54, y: 851.03), control2: CGPoint(x: 719.2, y: 805.08))
            p2MPath.addCurve(to: CGPoint(x: 589.05, y: 726.69), control1: CGPoint(x: 675.72, y: 745.85), control2: CGPoint(x: 640.56, y: 726.69))
            
            
            
            //// p3M Drawing
            p3MPath.move(to: CGPoint(x: 496.58, y: 853.67))
            p3MPath.addCurve(to: CGPoint(x: 370.48, y: 501.82), control1: CGPoint(x: 496.58, y: 853.67), control2: CGPoint(x: 597.45, y: 522.99))
            p3MPath.addCurve(to: CGPoint(x: 196.75, y: 798.12), control1: CGPoint(x: 143.51, y: 480.66), control2: CGPoint(x: 157.52, y: 769.02))
            
            
            
            //// p1End Drawing
            p1EndPath.move(to: CGPoint(x: 753.75, y: 796.8))
            p1EndPath.addLine(to: CGPoint(x: 682.92, y: 735.95))
            p1EndPath.addLine(to: CGPoint(x: 710.16, y: 725.37))
            p1EndPath.addLine(to: CGPoint(x: 780.99, y: 788.86))
            p1EndPath.addLine(to: CGPoint(x: 753.75, y: 796.8))
            p1EndPath.closeSubpath()
            
            
            //// p2End Drawing
            p2EndPath.move(to: CGPoint(x: 548.42, y: 770.34))
            p2EndPath.addLine(to: CGPoint(x: 572.7, y: 683.04))
            p2EndPath.addLine(to: CGPoint(x: 621.27, y: 688.33))
            p2EndPath.addLine(to: CGPoint(x: 588.89, y: 770.34))
            p2EndPath.addLine(to: CGPoint(x: 548.42, y: 770.34))
            p2EndPath.closeSubpath()
            
            
            //// p3End Drawing
            p3EndPath.move(to: CGPoint(x: 129.5, y: 794.93))
            p3EndPath.addLine(to: CGPoint(x: 245.79, y: 855))
            p3EndPath.addLine(to: CGPoint(x: 245.79, y: 757.11))
            p3EndPath.addLine(to: CGPoint(x: 129.5, y: 794.93))
            p3EndPath.closeSubpath()
            
            ////////
            parts = [p1Path,p2Path,p3Path]
            paths = [p1MPath,p2MPath,p3MPath]
            ends = [p1EndPath,p2EndPath,p3EndPath]
            
            break
        case 13 :
            
            
            
            
            p4Path.move(to: CGPoint(x: 735.56, y: 1139.39))
            p4Path.addLine(to: CGPoint(x: 678.72, y: 1081.93))
            p4Path.addLine(to: CGPoint(x: 732.76, y: 1028.28))
            p4Path.addLine(to: CGPoint(x: 790.8, y: 1081.93))
            p4Path.addLine(to: CGPoint(x: 735.56, y: 1139.39))
            p4Path.closeSubpath()
            p4MPath.move(to: CGPoint(x: 732.76, y: 1028.28))
            p4EndPath = p4Path
            
            
            //// p5 Drawing
            p5Path.move(to: CGPoint(x: 612.27, y: 1136.74))
            p5Path.addLine(to: CGPoint(x: 555.42, y: 1079.28))
            p5Path.addLine(to: CGPoint(x: 609.46, y: 1025.63))
            p5Path.addLine(to: CGPoint(x: 667.51, y: 1079.28))
            p5Path.addLine(to: CGPoint(x: 612.27, y: 1136.74))
            p5MPath.move(to: CGPoint(x: 609.46, y: 1025.63))
            p5EndPath = p5Path
            
            
            //// p6 Drawing
            p6Path.move(to: CGPoint(x: 685.12, y: 1250.5))
            p6Path.addLine(to: CGPoint(x: 628.28, y: 1193.04))
            p6Path.addLine(to: CGPoint(x: 682.32, y: 1139.39))
            p6Path.addLine(to: CGPoint(x: 740.36, y: 1193.04))
            p6Path.addLine(to: CGPoint(x: 685.12, y: 1250.5))
            p6MPath.move(to: CGPoint(x: 682.32, y: 1139.39))
            p6EndPath = p6Path
            
            
            //// p1 Drawing
            p1Path.move(to: CGPoint(x: 816.02, y: 874.84))
            p1Path.addLine(to: CGPoint(x: 838.44, y: 951.56))
            p1Path.addCurve(to: CGPoint(x: 922.5, y: 816.64), control1: CGPoint(x: 838.44, y: 951.56), control2: CGPoint(x: 922.5, y: 927.75))
            p1Path.addCurve(to: CGPoint(x: 762.78, y: 708.17), control1: CGPoint(x: 922.5, y: 705.53), control2: CGPoint(x: 830.03, y: 681.72))
            p1Path.addCurve(to: CGPoint(x: 695.53, y: 734.63), control1: CGPoint(x: 695.53, y: 734.63), control2: CGPoint(x: 695.53, y: 734.63))
            p1Path.addLine(to: CGPoint(x: 729.15, y: 795.47))
            p1Path.addCurve(to: CGPoint(x: 838.44, y: 816.64), control1: CGPoint(x: 729.15, y: 795.47), control2: CGPoint(x: 858.05, y: 758.44))
            p1Path.addCurve(to: CGPoint(x: 816.02, y: 874.84), control1: CGPoint(x: 818.82, y: 874.84), control2: CGPoint(x: 816.02, y: 874.84))
            p1Path.closeSubpath()
            
            
            //// p2 Drawing
            p2Path.move(to: CGPoint(x: 568.03, y: 770.34))
            p2Path.addCurve(to: CGPoint(x: 654.9, y: 796.8), control1: CGPoint(x: 604.46, y: 765.05), control2: CGPoint(x: 654.9, y: 796.8))
            p2Path.addLine(to: CGPoint(x: 729.15, y: 898.65))
            p2Path.addLine(to: CGPoint(x: 731.96, y: 795.47))
            p2Path.addLine(to: CGPoint(x: 695.53, y: 734.63))
            p2Path.addCurve(to: CGPoint(x: 569.43, y: 687.01), control1: CGPoint(x: 695.53, y: 734.63), control2: CGPoint(x: 629.68, y: 677.75))
            p2Path.addCurve(to: CGPoint(x: 568.03, y: 770.34), control1: CGPoint(x: 556.11, y: 689.05), control2: CGPoint(x: 548.81, y: 773.13))
            p2Path.closeSubpath()
            
            
            //// p3 Drawing
            p3Path.move(to: CGPoint(x: 565.23, y: 772.99))
            p3Path.addCurve(to: CGPoint(x: 513.39, y: 906.58), control1: CGPoint(x: 565.23, y: 772.99), control2: CGPoint(x: 514.79, y: 907.91))
            p3Path.addCurve(to: CGPoint(x: 446.14, y: 821.93), control1: CGPoint(x: 511.99, y: 905.26), control2: CGPoint(x: 446.14, y: 821.93))
            p3Path.addCurve(to: CGPoint(x: 415.32, y: 578.54), control1: CGPoint(x: 446.14, y: 821.93), control2: CGPoint(x: 538.61, y: 671.13))
            p3Path.addCurve(to: CGPoint(x: 202.36, y: 755.79), control1: CGPoint(x: 292.02, y: 485.95), control2: CGPoint(x: 149.11, y: 665.84))
            p3Path.addCurve(to: CGPoint(x: 151.92, y: 755.79), control1: CGPoint(x: 255.6, y: 845.74), control2: CGPoint(x: 205.16, y: 872.19))
            p3Path.addCurve(to: CGPoint(x: 311.64, y: 464.79), control1: CGPoint(x: 98.68, y: 639.39), control2: CGPoint(x: 143.51, y: 501.82))
            p3Path.addCurve(to: CGPoint(x: 575.04, y: 687.01), control1: CGPoint(x: 479.77, y: 427.75), control2: CGPoint(x: 580.64, y: 594.41))
            p3Path.addCurve(to: CGPoint(x: 565.23, y: 772.99), control1: CGPoint(x: 569.43, y: 779.6), control2: CGPoint(x: 565.23, y: 772.99))
            p3Path.closeSubpath()
            
            
            //// p1M Drawing
            p1MPath.move(to: CGPoint(x: 846.84, y: 906.58))
            p1MPath.addCurve(to: CGPoint(x: 734.76, y: 755.79), control1: CGPoint(x: 846.84, y: 906.58), control2: CGPoint(x: 986.95, y: 668.49))
            
            
            
            //// p2M Drawing
            p2MPath.move(to: CGPoint(x: 709.54, y: 851.03))
            p2MPath.addCurve(to: CGPoint(x: 692.73, y: 769.02), control1: CGPoint(x: 709.54, y: 851.03), control2: CGPoint(x: 719.2, y: 805.08))
            p2MPath.addCurve(to: CGPoint(x: 589.05, y: 726.69), control1: CGPoint(x: 675.72, y: 745.85), control2: CGPoint(x: 640.56, y: 726.69))
            
            
            
            //// p3M Drawing
            p3MPath.move(to: CGPoint(x: 496.58, y: 853.67))
            p3MPath.addCurve(to: CGPoint(x: 370.48, y: 501.82), control1: CGPoint(x: 496.58, y: 853.67), control2: CGPoint(x: 597.45, y: 522.99))
            p3MPath.addCurve(to: CGPoint(x: 196.75, y: 798.12), control1: CGPoint(x: 143.51, y: 480.66), control2: CGPoint(x: 157.52, y: 769.02))
            
            
            
            //// p1End Drawing
            p1EndPath.move(to: CGPoint(x: 753.75, y: 796.8))
            p1EndPath.addLine(to: CGPoint(x: 682.92, y: 735.95))
            p1EndPath.addLine(to: CGPoint(x: 710.16, y: 725.37))
            p1EndPath.addLine(to: CGPoint(x: 780.99, y: 788.86))
            p1EndPath.addLine(to: CGPoint(x: 753.75, y: 796.8))
            p1EndPath.closeSubpath()
            
            
            //// p2End Drawing
            p2EndPath.move(to: CGPoint(x: 548.42, y: 770.34))
            p2EndPath.addLine(to: CGPoint(x: 572.7, y: 683.04))
            p2EndPath.addLine(to: CGPoint(x: 621.27, y: 688.33))
            p2EndPath.addLine(to: CGPoint(x: 588.89, y: 770.34))
            p2EndPath.addLine(to: CGPoint(x: 548.42, y: 770.34))
            p2EndPath.closeSubpath()
            
            
            //// p3End Drawing
            p3EndPath.move(to: CGPoint(x: 129.5, y: 794.93))
            p3EndPath.addLine(to: CGPoint(x: 245.79, y: 855))
            p3EndPath.addLine(to: CGPoint(x: 245.79, y: 757.11))
            p3EndPath.addLine(to: CGPoint(x: 129.5, y: 794.93))
            p3EndPath.closeSubpath()
            
            
            
            parts = [p1Path,p2Path,p3Path,p4Path,p5Path,p6Path]
            paths = [p1MPath,p2MPath,p3MPath,p4MPath,p5MPath,p6MPath]
            ends = [p1EndPath,p2EndPath,p3EndPath,p4EndPath,p5EndPath,p6EndPath]
            
            break
        case 14 :
            
            
            //// p2 Drawing
            p2Path.move(to: CGPoint(x: 858.46, y: 675.58))
            p2Path.addCurve(to: CGPoint(x: 839.24, y: 806.65), control1: CGPoint(x: 861.73, y: 687.44), control2: CGPoint(x: 900.73, y: 819.33))
            p2Path.addCurve(to: CGPoint(x: 531.8, y: 815.1), control1: CGPoint(x: 755.12, y: 789.29), control2: CGPoint(x: 539.48, y: 811.93))
            p2Path.addCurve(to: CGPoint(x: 501.05, y: 645.98), control1: CGPoint(x: 501.05, y: 827.79), control2: CGPoint(x: 501.05, y: 645.98))
            p2Path.addCurve(to: CGPoint(x: 858.46, y: 675.58), control1: CGPoint(x: 501.05, y: 645.98), control2: CGPoint(x: 844.7, y: 625.73))
            p2Path.closeSubpath()
            
            
            //// p1 Drawing
            p1Path.move(to: CGPoint(x: 593.98, y: 802.42))
            p1Path.addCurve(to: CGPoint(x: 559.39, y: 810.87), control1: CGPoint(x: 560.73, y: 808.51), control2: CGPoint(x: 559.39, y: 810.87))
            p1Path.addCurve(to: CGPoint(x: 816.88, y: 1005.36), control1: CGPoint(x: 559.39, y: 810.87), control2: CGPoint(x: 740.02, y: 992.68))
            p1Path.addCurve(to: CGPoint(x: 955.23, y: 836.24), control1: CGPoint(x: 893.74, y: 1018.04), control2: CGPoint(x: 1012.88, y: 1013.82))
            p1Path.addCurve(to: CGPoint(x: 816.88, y: 654.44), control1: CGPoint(x: 897.59, y: 658.67), control2: CGPoint(x: 839.94, y: 662.89))
            p1Path.addCurve(to: CGPoint(x: 805.35, y: 802.42), control1: CGPoint(x: 793.82, y: 645.98), control2: CGPoint(x: 805.35, y: 802.42))
            p1Path.addCurve(to: CGPoint(x: 893.74, y: 823.56), control1: CGPoint(x: 805.35, y: 802.42), control2: CGPoint(x: 886.06, y: 810.87))
            p1Path.addCurve(to: CGPoint(x: 778.45, y: 903.89), control1: CGPoint(x: 901.43, y: 836.24), control2: CGPoint(x: 863, y: 920.8))
            p1Path.addCurve(to: CGPoint(x: 636.26, y: 806.65), control1: CGPoint(x: 693.9, y: 886.98), control2: CGPoint(x: 678.53, y: 848.93))
            p1Path.addCurve(to: CGPoint(x: 593.98, y: 802.42), control1: CGPoint(x: 630.26, y: 800.65), control2: CGPoint(x: 609.06, y: 799.65))
            p1Path.closeSubpath()
            
            
            //// p3 Drawing
            p3Path.move(to: CGPoint(x: 528.65, y: 815.1))
            p3Path.addCurve(to: CGPoint(x: 453.71, y: 884.86), control1: CGPoint(x: 505.59, y: 823.56), control2: CGPoint(x: 453.71, y: 884.86))
            p3Path.addLine(to: CGPoint(x: 399.9, y: 787.62))
            p3Path.addCurve(to: CGPoint(x: 444.1, y: 620.61), control1: CGPoint(x: 399.9, y: 787.62), control2: CGPoint(x: 461.39, y: 660.78))
            p3Path.addCurve(to: CGPoint(x: 138.57, y: 665.01), control1: CGPoint(x: 426.81, y: 580.45), control2: CGPoint(x: 148.18, y: 510.69))
            p3Path.addCurve(to: CGPoint(x: 148.18, y: 751.68), control1: CGPoint(x: 136.31, y: 701.42), control2: CGPoint(x: 138.69, y: 730.79))
            p3Path.addCurve(to: CGPoint(x: 113.59, y: 726.31), control1: CGPoint(x: 178.93, y: 819.33), control2: CGPoint(x: 145.89, y: 807.07))
            p3Path.addCurve(to: CGPoint(x: 186.61, y: 421.9), control1: CGPoint(x: 71.32, y: 620.61), control2: CGPoint(x: 55.95, y: 455.72))
            p3Path.addCurve(to: CGPoint(x: 417.2, y: 443.04), control1: CGPoint(x: 317.28, y: 388.08), control2: CGPoint(x: 417.2, y: 443.04))
            p3Path.addCurve(to: CGPoint(x: 497.9, y: 645.98), control1: CGPoint(x: 417.2, y: 443.04), control2: CGPoint(x: 501.75, y: 459.95))
            p3Path.addCurve(to: CGPoint(x: 528.65, y: 815.1), control1: CGPoint(x: 497.17, y: 681.56), control2: CGPoint(x: 528.65, y: 815.1))
            p3Path.closeSubpath()
            
            
            //// p1M Drawing
            p1MPath.move(to: CGPoint(x: 614.9, y: 815.1))
            p1MPath.addCurve(to: CGPoint(x: 879.3, y: 946.97), control1: CGPoint(x: 614.9, y: 815.1), control2: CGPoint(x: 741.38, y: 993.4))
            p1MPath.addCurve(to: CGPoint(x: 833.66, y: 744.22), control1: CGPoint(x: 967.43, y: 917.3), control2: CGPoint(x: 929.66, y: 742.57))
            
            
            
            //// p2M Drawing
            p2MPath.move(to: CGPoint(x: 850.97, y: 745.86))
            p2MPath.addLine(to: CGPoint(x: 526.76, y: 745.86))
            
            
            
            //// p3M Drawing
            p3MPath.move(to: CGPoint(x: 451.22, y: 818.39))
            p3MPath.addCurve(to: CGPoint(x: 284.39, y: 478.82), control1: CGPoint(x: 451.22, y: 818.39), control2: CGPoint(x: 545.65, y: 459.04))
            p3MPath.addCurve(to: CGPoint(x: 133.31, y: 745.86), control1: CGPoint(x: 23.14, y: 498.6), control2: CGPoint(x: 145.9, y: 782.13))
            
            
            
            //// p1End Drawing
            p1EndPath.move(to: CGPoint(x: 866.71, y: 818.39))
            p1EndPath.addCurve(to: CGPoint(x: 819.49, y: 801.91), control1: CGPoint(x: 869.85, y: 808.5), control2: CGPoint(x: 819.49, y: 801.91))
            p1EndPath.addCurve(to: CGPoint(x: 828.94, y: 653.55), control1: CGPoint(x: 819.49, y: 801.91), control2: CGPoint(x: 838.38, y: 653.55))
            p1EndPath.addCurve(to: CGPoint(x: 866.71, y: 676.63), control1: CGPoint(x: 819.49, y: 653.55), control2: CGPoint(x: 866.71, y: 676.63))
            p1EndPath.addCurve(to: CGPoint(x: 866.71, y: 818.39), control1: CGPoint(x: 866.71, y: 676.63), control2: CGPoint(x: 863.56, y: 828.29))
            p1EndPath.closeSubpath()
            
            
            //// p2End Drawing
            p2EndPath.move(to: CGPoint(x: 558.2, y: 828.22))
            p2EndPath.addCurve(to: CGPoint(x: 498.43, y: 809.43), control1: CGPoint(x: 562.18, y: 816.95), control2: CGPoint(x: 498.43, y: 809.43))
            p2EndPath.addCurve(to: CGPoint(x: 510.39, y: 640.37), control1: CGPoint(x: 498.43, y: 809.43), control2: CGPoint(x: 522.34, y: 640.37))
            p2EndPath.addCurve(to: CGPoint(x: 558.2, y: 666.66), control1: CGPoint(x: 498.43, y: 640.37), control2: CGPoint(x: 558.2, y: 666.66))
            p2EndPath.addCurve(to: CGPoint(x: 558.2, y: 828.22), control1: CGPoint(x: 558.2, y: 666.66), control2: CGPoint(x: 554.22, y: 839.49))
            p2EndPath.closeSubpath()
            
            
            //// p3End Drawing
            p3EndPath.move(to: CGPoint(x: 158.49, y: 703.01))
            p3EndPath.addLine(to: CGPoint(x: 73.5, y: 729.38))
            p3EndPath.addLine(to: CGPoint(x: 158.49, y: 824.99))
            p3EndPath.addLine(to: CGPoint(x: 158.49, y: 703.01))
            p3EndPath.closeSubpath()
            
            
            
            parts = [p1Path,p2Path,p3Path]
            ends = [p1EndPath,p2EndPath,p3EndPath]
            paths = [p1MPath,p2MPath,p3MPath]
            break
        case 15:
            //// p4 Drawing
            p4Path.move(to: CGPoint(x: 768.34, y: 1230.5))
            p4Path.addLine(to: CGPoint(x: 712.47, y: 1165.96))
            p4Path.addLine(to: CGPoint(x: 769.13, y: 1105.22))
            p4Path.addLine(to: CGPoint(x: 825.79, y: 1165.96))
            p4Path.addLine(to: CGPoint(x: 768.34, y: 1230.5))
            p4Path.addLine(to: CGPoint(x: 768.34, y: 1230.5))
            p4Path.addLine(to: CGPoint(x: 768.34, y: 1230.5))
            p4MPath.move(to:CGPoint(x: 769.13, y: 1105.22) )
            p4EndPath = p4Path
            
            
            //// p2 Drawing
            p2Path.move(to: CGPoint(x: 858.46, y: 675.58))
            p2Path.addCurve(to: CGPoint(x: 839.24, y: 806.65), control1: CGPoint(x: 861.73, y: 687.44), control2: CGPoint(x: 900.73, y: 819.33))
            p2Path.addCurve(to: CGPoint(x: 531.8, y: 815.1), control1: CGPoint(x: 755.12, y: 789.29), control2: CGPoint(x: 539.48, y: 811.93))
            p2Path.addCurve(to: CGPoint(x: 501.05, y: 645.98), control1: CGPoint(x: 501.05, y: 827.79), control2: CGPoint(x: 501.05, y: 645.98))
            p2Path.addCurve(to: CGPoint(x: 858.46, y: 675.58), control1: CGPoint(x: 501.05, y: 645.98), control2: CGPoint(x: 844.7, y: 625.73))
            p2Path.closeSubpath()
            
            
            //// p1 Drawing
            p1Path.move(to: CGPoint(x: 593.98, y: 802.42))
            p1Path.addCurve(to: CGPoint(x: 559.39, y: 810.87), control1: CGPoint(x: 560.73, y: 808.51), control2: CGPoint(x: 559.39, y: 810.87))
            p1Path.addCurve(to: CGPoint(x: 816.88, y: 1005.36), control1: CGPoint(x: 559.39, y: 810.87), control2: CGPoint(x: 740.02, y: 992.68))
            p1Path.addCurve(to: CGPoint(x: 955.23, y: 836.24), control1: CGPoint(x: 893.74, y: 1018.04), control2: CGPoint(x: 1012.88, y: 1013.82))
            p1Path.addCurve(to: CGPoint(x: 816.88, y: 654.44), control1: CGPoint(x: 897.59, y: 658.67), control2: CGPoint(x: 839.94, y: 662.89))
            p1Path.addCurve(to: CGPoint(x: 805.35, y: 802.42), control1: CGPoint(x: 793.82, y: 645.98), control2: CGPoint(x: 805.35, y: 802.42))
            p1Path.addCurve(to: CGPoint(x: 893.74, y: 823.56), control1: CGPoint(x: 805.35, y: 802.42), control2: CGPoint(x: 886.06, y: 810.87))
            p1Path.addCurve(to: CGPoint(x: 778.45, y: 903.89), control1: CGPoint(x: 901.43, y: 836.24), control2: CGPoint(x: 863, y: 920.8))
            p1Path.addCurve(to: CGPoint(x: 636.26, y: 806.65), control1: CGPoint(x: 693.9, y: 886.98), control2: CGPoint(x: 678.53, y: 848.93))
            p1Path.addCurve(to: CGPoint(x: 593.98, y: 802.42), control1: CGPoint(x: 630.26, y: 800.65), control2: CGPoint(x: 609.06, y: 799.65))
            p1Path.closeSubpath()
            
            
            //// p3 Drawing
            p3Path.move(to: CGPoint(x: 528.65, y: 815.1))
            p3Path.addCurve(to: CGPoint(x: 453.71, y: 884.86), control1: CGPoint(x: 505.59, y: 823.56), control2: CGPoint(x: 453.71, y: 884.86))
            p3Path.addLine(to: CGPoint(x: 399.9, y: 787.62))
            p3Path.addCurve(to: CGPoint(x: 444.1, y: 620.61), control1: CGPoint(x: 399.9, y: 787.62), control2: CGPoint(x: 461.39, y: 660.78))
            p3Path.addCurve(to: CGPoint(x: 138.57, y: 665.01), control1: CGPoint(x: 426.81, y: 580.45), control2: CGPoint(x: 148.18, y: 510.69))
            p3Path.addCurve(to: CGPoint(x: 148.18, y: 751.68), control1: CGPoint(x: 136.31, y: 701.42), control2: CGPoint(x: 138.69, y: 730.79))
            p3Path.addCurve(to: CGPoint(x: 113.59, y: 726.31), control1: CGPoint(x: 178.93, y: 819.33), control2: CGPoint(x: 145.89, y: 807.07))
            p3Path.addCurve(to: CGPoint(x: 186.61, y: 421.9), control1: CGPoint(x: 71.32, y: 620.61), control2: CGPoint(x: 55.95, y: 455.72))
            p3Path.addCurve(to: CGPoint(x: 417.2, y: 443.04), control1: CGPoint(x: 317.28, y: 388.08), control2: CGPoint(x: 417.2, y: 443.04))
            p3Path.addCurve(to: CGPoint(x: 497.9, y: 645.98), control1: CGPoint(x: 417.2, y: 443.04), control2: CGPoint(x: 501.75, y: 459.95))
            p3Path.addCurve(to: CGPoint(x: 528.65, y: 815.1), control1: CGPoint(x: 497.17, y: 681.56), control2: CGPoint(x: 528.65, y: 815.1))
            p3Path.closeSubpath()
            
            
            //// p1M Drawing
            p1MPath.move(to: CGPoint(x: 614.9, y: 815.1))
            p1MPath.addCurve(to: CGPoint(x: 879.3, y: 946.97), control1: CGPoint(x: 614.9, y: 815.1), control2: CGPoint(x: 741.38, y: 993.4))
            p1MPath.addCurve(to: CGPoint(x: 833.66, y: 744.22), control1: CGPoint(x: 967.43, y: 917.3), control2: CGPoint(x: 929.66, y: 742.57))
            
            
            
            //// p2M Drawing
            p2MPath.move(to: CGPoint(x: 850.97, y: 745.86))
            p2MPath.addLine(to: CGPoint(x: 526.76, y: 745.86))
            
            
            
            //// p3M Drawing
            p3MPath.move(to: CGPoint(x: 451.22, y: 818.39))
            p3MPath.addCurve(to: CGPoint(x: 284.39, y: 478.82), control1: CGPoint(x: 451.22, y: 818.39), control2: CGPoint(x: 545.65, y: 459.04))
            p3MPath.addCurve(to: CGPoint(x: 133.31, y: 745.86), control1: CGPoint(x: 23.14, y: 498.6), control2: CGPoint(x: 145.9, y: 782.13))
            
            
            
            //// p1End Drawing
            p1EndPath.move(to: CGPoint(x: 866.71, y: 818.39))
            p1EndPath.addCurve(to: CGPoint(x: 819.49, y: 801.91), control1: CGPoint(x: 869.85, y: 808.5), control2: CGPoint(x: 819.49, y: 801.91))
            p1EndPath.addCurve(to: CGPoint(x: 828.94, y: 653.55), control1: CGPoint(x: 819.49, y: 801.91), control2: CGPoint(x: 838.38, y: 653.55))
            p1EndPath.addCurve(to: CGPoint(x: 866.71, y: 676.63), control1: CGPoint(x: 819.49, y: 653.55), control2: CGPoint(x: 866.71, y: 676.63))
            p1EndPath.addCurve(to: CGPoint(x: 866.71, y: 818.39), control1: CGPoint(x: 866.71, y: 676.63), control2: CGPoint(x: 863.56, y: 828.29))
            p1EndPath.closeSubpath()
            
            
            //// p2End Drawing
            p2EndPath.move(to: CGPoint(x: 558.2, y: 828.22))
            p2EndPath.addCurve(to: CGPoint(x: 498.43, y: 809.43), control1: CGPoint(x: 562.18, y: 816.95), control2: CGPoint(x: 498.43, y: 809.43))
            p2EndPath.addCurve(to: CGPoint(x: 510.39, y: 640.37), control1: CGPoint(x: 498.43, y: 809.43), control2: CGPoint(x: 522.34, y: 640.37))
            p2EndPath.addCurve(to: CGPoint(x: 558.2, y: 666.66), control1: CGPoint(x: 498.43, y: 640.37), control2: CGPoint(x: 558.2, y: 666.66))
            p2EndPath.addCurve(to: CGPoint(x: 558.2, y: 828.22), control1: CGPoint(x: 558.2, y: 666.66), control2: CGPoint(x: 554.22, y: 839.49))
            p2EndPath.closeSubpath()
            
            
            //// p3End Drawing
            p3EndPath.move(to: CGPoint(x: 158.49, y: 703.01))
            p3EndPath.addLine(to: CGPoint(x: 73.5, y: 729.38))
            p3EndPath.addLine(to: CGPoint(x: 158.49, y: 824.99))
            p3EndPath.addLine(to: CGPoint(x: 158.49, y: 703.01))
            p3EndPath.closeSubpath()
            
            
            
            
            
            
            parts = [p1Path,p2Path,p3Path,p4Path]
            ends = [p1EndPath,p2EndPath,p3EndPath,p4EndPath]
            paths = [p1MPath,p2MPath,p3MPath,p4MPath]
            
            break
        case 16 :
            //// p1 Drawing
            p1Path.move(to: CGPoint(x: 873.17, y: 402.46))
            p1Path.addCurve(to: CGPoint(x: 784.36, y: 389.87), control1: CGPoint(x: 862.46, y: 396.9), control2: CGPoint(x: 784.36, y: 389.87))
            p1Path.addCurve(to: CGPoint(x: 796.47, y: 582.9), control1: CGPoint(x: 784.36, y: 389.87), control2: CGPoint(x: 762.33, y: 539.22))
            p1Path.addCurve(to: CGPoint(x: 873.17, y: 620.66), control1: CGPoint(x: 804.4, y: 593.05), control2: CGPoint(x: 862.87, y: 596.08))
            p1Path.addCurve(to: CGPoint(x: 768.21, y: 708.78), control1: CGPoint(x: 880.49, y: 638.12), control2: CGPoint(x: 855.15, y: 697.14))
            p1Path.addCurve(to: CGPoint(x: 546.17, y: 662.63), control1: CGPoint(x: 706.57, y: 717.04), control2: CGPoint(x: 622.87, y: 696.2))
            p1Path.addCurve(to: CGPoint(x: 380.65, y: 570.31), control1: CGPoint(x: 493.06, y: 639.38), control2: CGPoint(x: 391.86, y: 581.96))
            p1Path.addCurve(to: CGPoint(x: 231.28, y: 570.31), control1: CGPoint(x: 360.47, y: 549.33), control2: CGPoint(x: 231.28, y: 570.31))
            p1Path.addCurve(to: CGPoint(x: 707.65, y: 838.87), control1: CGPoint(x: 231.28, y: 570.31), control2: CGPoint(x: 497.73, y: 796.91))
            p1Path.addCurve(to: CGPoint(x: 990.25, y: 637.45), control1: CGPoint(x: 917.58, y: 880.83), control2: CGPoint(x: 1062.91, y: 889.22))
            p1Path.addCurve(to: CGPoint(x: 873.17, y: 402.46), control1: CGPoint(x: 976.65, y: 590.34), control2: CGPoint(x: 921.62, y: 427.64))
            p1Path.closeSubpath()
            
            
            //// p2 Drawing
            p2Path.move(to: CGPoint(x: 860.03, y: 582.69))
            p2Path.addCurve(to: CGPoint(x: 843.03, y: 395.39), control1: CGPoint(x: 874.44, y: 528.9), control2: CGPoint(x: 896.61, y: 410.04))
            p2Path.addCurve(to: CGPoint(x: 98.13, y: 395.39), control1: CGPoint(x: 745.13, y: 368.63), control2: CGPoint(x: 98.13, y: 395.39))
            p2Path.addLine(to: CGPoint(x: 98.13, y: 587.15))
            p2Path.addLine(to: CGPoint(x: 387.56, y: 578.23))
            p2Path.addCurve(to: CGPoint(x: 625.94, y: 564.85), control1: CGPoint(x: 387.56, y: 578.23), control2: CGPoint(x: 400.35, y: 555.93))
            p2Path.addCurve(to: CGPoint(x: 860.03, y: 582.69), control1: CGPoint(x: 851.54, y: 573.77), control2: CGPoint(x: 848.11, y: 627.2))
            p2Path.closeSubpath()
            
            
            //// p3 Drawing
            p3Path.move(to: CGPoint(x: 424.84, y: 832.81))
            p3Path.addCurve(to: CGPoint(x: 404.19, y: 695.23), control1: CGPoint(x: 424.84, y: 796.12), control2: CGPoint(x: 404.19, y: 695.23))
            p3Path.addLine(to: CGPoint(x: 329.85, y: 644.79))
            p3Path.addCurve(to: CGPoint(x: 321.59, y: 897.01), control1: CGPoint(x: 329.85, y: 644.79), control2: CGPoint(x: 332.82, y: 792.23))
            p3Path.addCurve(to: CGPoint(x: 296.81, y: 1112.55), control1: CGPoint(x: 300.94, y: 1089.62), control2: CGPoint(x: 296.81, y: 1112.55))
            p3Path.addLine(to: CGPoint(x: 267.9, y: 1153.82))
            p3Path.addLine(to: CGPoint(x: 358.76, y: 1323.5))
            p3Path.addCurve(to: CGPoint(x: 408.32, y: 1208.85), control1: CGPoint(x: 358.76, y: 1323.5), control2: CGPoint(x: 358.76, y: 1277.64))
            p3Path.addCurve(to: CGPoint(x: 490.93, y: 1153.82), control1: CGPoint(x: 457.88, y: 1140.06), control2: CGPoint(x: 490.93, y: 1153.82))
            p3Path.addLine(to: CGPoint(x: 437.23, y: 1007.07))
            p3Path.addLine(to: CGPoint(x: 404.19, y: 1016.25))
            p3Path.addCurve(to: CGPoint(x: 424.84, y: 832.81), control1: CGPoint(x: 404.19, y: 1016.25), control2: CGPoint(x: 424.84, y: 965.8))
            p3Path.closeSubpath()
            
            
            //// p2M Drawing
            p2MPath.move(to: CGPoint(x: 800.5, y: 491.84))
            p2MPath.addCurve(to: CGPoint(x: 161.38, y: 491.84), control1: CGPoint(x: 151.39, y: 498.21), control2: CGPoint(x: 161.38, y: 491.84))
            
            
            
            //// p1M Drawing
            p1MPath.move(to: CGPoint(x: 374.42, y: 616.11))
            p1MPath.addCurve(to: CGPoint(x: 900.36, y: 762.69), control1: CGPoint(x: 374.42, y: 616.11), control2: CGPoint(x: 692.71, y: 862.07))
            p1MPath.addCurve(to: CGPoint(x: 827.13, y: 491.84), control1: CGPoint(x: 973.6, y: 727.64), control2: CGPoint(x: 970.27, y: 571.5))
            
            
            
            //// p1End Drawing
            p1EndPath.move(to: CGPoint(x: 803.83, y: 603.36))
            p1EndPath.addLine(to: CGPoint(x: 783.86, y: 389.87))
            p1EndPath.addLine(to: CGPoint(x: 873.73, y: 402.62))
            p1EndPath.addLine(to: CGPoint(x: 873.73, y: 603.36))
            p1EndPath.addLine(to: CGPoint(x: 803.83, y: 603.36))
            p1EndPath.closeSubpath()
            
            
            //// p2End Drawing
            p2EndPath.move(to: CGPoint(x: 91.47, y: 596.99))
            p2EndPath.addLine(to: CGPoint(x: 71.5, y: 383.5))
            p2EndPath.addLine(to: CGPoint(x: 161.38, y: 396.25))
            p2EndPath.addLine(to: CGPoint(x: 161.38, y: 596.99))
            p2EndPath.addLine(to: CGPoint(x: 91.47, y: 596.99))
            p2EndPath.closeSubpath()
            
            
            //// p3End Drawing
            p3EndPath.move(to: CGPoint(x: 324.49, y: 702.14))
            p3EndPath.addLine(to: CGPoint(x: 411.03, y: 702.14))
            p3EndPath.addLine(to: CGPoint(x: 411.03, y: 644.79))
            p3EndPath.addLine(to: CGPoint(x: 324.49, y: 644.79))
            p3EndPath.addLine(to: CGPoint(x: 324.49, y: 702.14))
            p3EndPath.addLine(to: CGPoint(x: 324.49, y: 702.14))
            p3EndPath.addLine(to: CGPoint(x: 324.49, y: 702.14))
            
            
            //// p3M Drawing
            p3MPath.move(to: CGPoint(x: 377.75, y: 1173.74))
            p3MPath.addLine(to: CGPoint(x: 377.75, y: 749.94))
            
            
            
            /////
            parts = [p1Path,p2Path,p3Path]
            ends = [p1EndPath,p2EndPath,p3EndPath]
            paths = [p1MPath,p2MPath,p3MPath]
            
            
            break
        case 17 :
            //// p1 Drawing
            p1Path.move(to: CGPoint(x: 873.17, y: 402.46))
            p1Path.addCurve(to: CGPoint(x: 784.36, y: 389.87), control1: CGPoint(x: 862.46, y: 396.9), control2: CGPoint(x: 784.36, y: 389.87))
            p1Path.addCurve(to: CGPoint(x: 796.47, y: 582.9), control1: CGPoint(x: 784.36, y: 389.87), control2: CGPoint(x: 762.33, y: 539.22))
            p1Path.addCurve(to: CGPoint(x: 873.17, y: 620.66), control1: CGPoint(x: 804.4, y: 593.05), control2: CGPoint(x: 862.87, y: 596.08))
            p1Path.addCurve(to: CGPoint(x: 768.21, y: 708.78), control1: CGPoint(x: 880.49, y: 638.12), control2: CGPoint(x: 855.15, y: 697.14))
            p1Path.addCurve(to: CGPoint(x: 546.17, y: 662.63), control1: CGPoint(x: 706.57, y: 717.04), control2: CGPoint(x: 622.87, y: 696.2))
            p1Path.addCurve(to: CGPoint(x: 380.65, y: 570.31), control1: CGPoint(x: 493.06, y: 639.38), control2: CGPoint(x: 391.86, y: 581.96))
            p1Path.addCurve(to: CGPoint(x: 231.28, y: 570.31), control1: CGPoint(x: 360.47, y: 549.33), control2: CGPoint(x: 231.28, y: 570.31))
            p1Path.addCurve(to: CGPoint(x: 707.65, y: 838.87), control1: CGPoint(x: 231.28, y: 570.31), control2: CGPoint(x: 497.73, y: 796.91))
            p1Path.addCurve(to: CGPoint(x: 990.25, y: 637.45), control1: CGPoint(x: 917.58, y: 880.83), control2: CGPoint(x: 1062.91, y: 889.22))
            p1Path.addCurve(to: CGPoint(x: 873.17, y: 402.46), control1: CGPoint(x: 976.65, y: 590.34), control2: CGPoint(x: 921.62, y: 427.64))
            p1Path.closeSubpath()
            
            
            //// p2 Drawing
            p2Path.move(to: CGPoint(x: 860.03, y: 582.69))
            p2Path.addCurve(to: CGPoint(x: 843.03, y: 395.39), control1: CGPoint(x: 874.44, y: 528.9), control2: CGPoint(x: 896.61, y: 410.04))
            p2Path.addCurve(to: CGPoint(x: 98.13, y: 395.39), control1: CGPoint(x: 745.13, y: 368.63), control2: CGPoint(x: 98.13, y: 395.39))
            p2Path.addLine(to: CGPoint(x: 98.13, y: 587.15))
            p2Path.addLine(to: CGPoint(x: 387.56, y: 578.23))
            p2Path.addCurve(to: CGPoint(x: 625.94, y: 564.85), control1: CGPoint(x: 387.56, y: 578.23), control2: CGPoint(x: 400.35, y: 555.93))
            p2Path.addCurve(to: CGPoint(x: 860.03, y: 582.69), control1: CGPoint(x: 851.54, y: 573.77), control2: CGPoint(x: 848.11, y: 627.2))
            p2Path.closeSubpath()
            
            
            //// p3 Drawing
            p3Path.move(to: CGPoint(x: 424.84, y: 832.81))
            p3Path.addCurve(to: CGPoint(x: 404.19, y: 695.23), control1: CGPoint(x: 424.84, y: 796.12), control2: CGPoint(x: 404.19, y: 695.23))
            p3Path.addLine(to: CGPoint(x: 329.85, y: 644.79))
            p3Path.addCurve(to: CGPoint(x: 321.59, y: 897.01), control1: CGPoint(x: 329.85, y: 644.79), control2: CGPoint(x: 332.82, y: 792.23))
            p3Path.addCurve(to: CGPoint(x: 296.81, y: 1112.55), control1: CGPoint(x: 300.94, y: 1089.62), control2: CGPoint(x: 296.81, y: 1112.55))
            p3Path.addLine(to: CGPoint(x: 267.9, y: 1153.82))
            p3Path.addLine(to: CGPoint(x: 358.76, y: 1323.5))
            p3Path.addCurve(to: CGPoint(x: 408.32, y: 1208.85), control1: CGPoint(x: 358.76, y: 1323.5), control2: CGPoint(x: 358.76, y: 1277.64))
            p3Path.addCurve(to: CGPoint(x: 490.93, y: 1153.82), control1: CGPoint(x: 457.88, y: 1140.06), control2: CGPoint(x: 490.93, y: 1153.82))
            p3Path.addLine(to: CGPoint(x: 437.23, y: 1007.07))
            p3Path.addLine(to: CGPoint(x: 404.19, y: 1016.25))
            p3Path.addCurve(to: CGPoint(x: 424.84, y: 832.81), control1: CGPoint(x: 404.19, y: 1016.25), control2: CGPoint(x: 424.84, y: 965.8))
            p3Path.closeSubpath()
            
            
            //// p4 Drawing
            p4Path.move(to: CGPoint(x: 733.09, y: 1098.86))
            p4Path.addLine(to: CGPoint(x: 662.36, y: 1036.76))
            p4Path.addLine(to: CGPoint(x: 733.09, y: 971.4))
            p4Path.addLine(to: CGPoint(x: 795.51, y: 1036.76))
            p4Path.addLine(to: CGPoint(x: 733.09, y: 1098.86))
            p4Path.addLine(to: CGPoint(x: 733.09, y: 1098.86))
            p4Path.closeSubpath()
            p4MPath.move(to: CGPoint(x: 733.09, y: 971.4))
            p4EndPath = p4Path
            
            //// p2M Drawing
            p2MPath.move(to: CGPoint(x: 800.5, y: 491.84))
            p2MPath.addCurve(to: CGPoint(x: 161.38, y: 491.84), control1: CGPoint(x: 151.39, y: 498.21), control2: CGPoint(x: 161.38, y: 491.84))
            
            
            
            //// p1M Drawing
            p1MPath.move(to: CGPoint(x: 374.42, y: 616.11))
            p1MPath.addCurve(to: CGPoint(x: 900.36, y: 762.69), control1: CGPoint(x: 374.42, y: 616.11), control2: CGPoint(x: 692.71, y: 862.07))
            p1MPath.addCurve(to: CGPoint(x: 827.13, y: 491.84), control1: CGPoint(x: 973.6, y: 727.64), control2: CGPoint(x: 970.27, y: 571.5))
            
            
            
            //// p1End Drawing
            p1EndPath.move(to: CGPoint(x: 803.83, y: 603.36))
            p1EndPath.addLine(to: CGPoint(x: 783.86, y: 389.87))
            p1EndPath.addLine(to: CGPoint(x: 873.73, y: 402.62))
            p1EndPath.addLine(to: CGPoint(x: 873.73, y: 603.36))
            p1EndPath.addLine(to: CGPoint(x: 803.83, y: 603.36))
            p1EndPath.closeSubpath()
            
            
            //// p2End Drawing
            p2EndPath.move(to: CGPoint(x: 91.47, y: 596.99))
            p2EndPath.addLine(to: CGPoint(x: 71.5, y: 383.5))
            p2EndPath.addLine(to: CGPoint(x: 161.38, y: 396.25))
            p2EndPath.addLine(to: CGPoint(x: 161.38, y: 596.99))
            p2EndPath.addLine(to: CGPoint(x: 91.47, y: 596.99))
            p2EndPath.closeSubpath()
            
            
            //// p3End Drawing
            p3EndPath.move(to: CGPoint(x: 324.49, y: 702.14))
            p3EndPath.addLine(to: CGPoint(x: 411.03, y: 702.14))
            p3EndPath.addLine(to: CGPoint(x: 411.03, y: 644.79))
            p3EndPath.addLine(to: CGPoint(x: 324.49, y: 644.79))
            p3EndPath.addLine(to: CGPoint(x: 324.49, y: 702.14))
            p3EndPath.addLine(to: CGPoint(x: 324.49, y: 702.14))
            p3EndPath.addLine(to: CGPoint(x: 324.49, y: 702.14))
            
            
            //// p3M Drawing
            p3MPath.move(to: CGPoint(x: 377.75, y: 1173.74))
            p3MPath.addLine(to: CGPoint(x: 377.75, y: 749.94))
            
            
            
            /////
            parts = [p1Path,p2Path,p3Path,p4Path]
            ends = [p1EndPath,p2EndPath,p3EndPath,p4EndPath]
            paths = [p1MPath,p2MPath,p3MPath,p4MPath]
            
            break
        case 18 :
            p2Path.move(to: CGPoint(x: 645.43, y: 1030.62))
            p2Path.addLine(to: CGPoint(x: 516.48, y: 977.93))
            p2Path.addLine(to: CGPoint(x: 376.77, y: 893.64))
            p2Path.addCurve(to: CGPoint(x: 398.59, y: 397.38), control1: CGPoint(x: 376.77, y: 893.64), control2: CGPoint(x: 57.53, y: 550.65))
            p2Path.addCurve(to: CGPoint(x: 815.59, y: 564.82), control1: CGPoint(x: 739.65, y: 244.12), control2: CGPoint(x: 815.59, y: 564.82))
            p2Path.addCurve(to: CGPoint(x: 433.11, y: 573.83), control1: CGPoint(x: 815.59, y: 564.82), control2: CGPoint(x: 623.66, y: 419.28))
            p2Path.addCurve(to: CGPoint(x: 634.14, y: 929.19), control1: CGPoint(x: 242.56, y: 728.39), control2: CGPoint(x: 634.14, y: 929.19))
            p2Path.addLine(to: CGPoint(x: 645.43, y: 1030.62))
            p2Path.closeSubpath()
            
            
            
            
            //// p1 Drawing
            p1Path.move(to: CGPoint(x: 400.93, y: 1122.4))
            p1Path.addCurve(to: CGPoint(x: 567.91, y: 1162.83), control1: CGPoint(x: 400.93, y: 1122.4), control2: CGPoint(x: 493.56, y: 1191.72))
            p1Path.addCurve(to: CGPoint(x: 583.75, y: 1247.17), control1: CGPoint(x: 642.26, y: 1133.95), control2: CGPoint(x: 583.75, y: 1247.17))
            p1Path.addCurve(to: CGPoint(x: 283.92, y: 1122.4), control1: CGPoint(x: 583.75, y: 1247.17), control2: CGPoint(x: 400.93, y: 1309.56))
            p1Path.addCurve(to: CGPoint(x: 371.68, y: 893.64), control1: CGPoint(x: 166.92, y: 935.23), control2: CGPoint(x: 371.68, y: 893.64))
            p1Path.addLine(to: CGPoint(x: 632.51, y: 928.3))
            p1Path.addLine(to: CGPoint(x: 647.13, y: 1032.28))
            p1Path.addLine(to: CGPoint(x: 517.94, y: 979.14))
            p1Path.addCurve(to: CGPoint(x: 400.93, y: 1122.4), control1: CGPoint(x: 517.94, y: 979.14), control2: CGPoint(x: 320.49, y: 1020.73))
            
            
            
            //// p1M Drawing
            p1MPath.move(to: CGPoint(x: 579.16, y: 1200.96))
            p1MPath.addCurve(to: CGPoint(x: 299.75, y: 1018.32), control1: CGPoint(x: 579.16, y: 1200.96), control2: CGPoint(x: 305.2, y: 1221.24))
            p1MPath.addCurve(to: CGPoint(x: 607.82, y: 965.64), control1: CGPoint(x: 296.17, y: 884.86), control2: CGPoint(x: 597.08, y: 955.1))
            
            
            
            //// p2M Drawing
            p2MPath.move(to: CGPoint(x: 611.4, y: 958.62))
            p2MPath.addCurve(to: CGPoint(x: 335.58, y: 554.71), control1: CGPoint(x: 611.4, y: 958.62), control2: CGPoint(x: 192.29, y: 783))
            p2MPath.addCurve(to: CGPoint(x: 776.18, y: 516.08), control1: CGPoint(x: 478.86, y: 326.41), control2: CGPoint(x: 776.18, y: 516.08))
            
            
            
            //// p1End Drawing
            p1EndPath.move(to: CGPoint(x: 650.81, y: 1028.86))
            p1EndPath.addLine(to: CGPoint(x: 575.58, y: 1007.79))
            p1EndPath.addLine(to: CGPoint(x: 575.58, y: 923.49))
            p1EndPath.addLine(to: CGPoint(x: 627.66, y: 927.01))
            p1EndPath.addLine(to: CGPoint(x: 650.81, y: 1028.86))
            p1EndPath.closeSubpath()
            
            
            //// p2End Drawing
            p2EndPath.move(to: CGPoint(x: 726.03, y: 533.64))
            p2EndPath.addLine(to: CGPoint(x: 790.51, y: 459.88))
            p2EndPath.addLine(to: CGPoint(x: 833.5, y: 586.32))
            p2EndPath.addLine(to: CGPoint(x: 726.03, y: 533.64))
            p2EndPath.closeSubpath()
            
            
            parts = [p1Path,p2Path]
            ends = [p1EndPath,p2EndPath]
            paths = [p1MPath,p2MPath]
            
            break
        case 19 :
            p2Path.move(to: CGPoint(x: 645.43, y: 1030.62))
            p2Path.addLine(to: CGPoint(x: 516.48, y: 977.93))
            p2Path.addLine(to: CGPoint(x: 376.77, y: 893.64))
            p2Path.addCurve(to: CGPoint(x: 398.59, y: 397.38), control1: CGPoint(x: 376.77, y: 893.64), control2: CGPoint(x: 57.53, y: 550.65))
            p2Path.addCurve(to: CGPoint(x: 815.59, y: 564.82), control1: CGPoint(x: 739.65, y: 244.12), control2: CGPoint(x: 815.59, y: 564.82))
            p2Path.addCurve(to: CGPoint(x: 433.11, y: 573.83), control1: CGPoint(x: 815.59, y: 564.82), control2: CGPoint(x: 623.66, y: 419.28))
            p2Path.addCurve(to: CGPoint(x: 634.14, y: 929.19), control1: CGPoint(x: 242.56, y: 728.39), control2: CGPoint(x: 634.14, y: 929.19))
            p2Path.addLine(to: CGPoint(x: 645.43, y: 1030.62))
            p2Path.closeSubpath()
            
            
            //// p3 Drawing
            p3Path.move(to: CGPoint(x: 464.22, y: 1499.5))
            p3Path.addLine(to: CGPoint(x: 536.18, y: 1433.38))
            p3Path.addLine(to: CGPoint(x: 464.22, y: 1362.52))
            p3Path.addLine(to: CGPoint(x: 396.47, y: 1433.38))
            p3Path.addLine(to: CGPoint(x: 464.22, y: 1499.5))
            p3Path.addLine(to: CGPoint(x: 464.22, y: 1499.5))
            p3MPath.move(to: CGPoint(x: 464.22, y: 1362.52))
            p3EndPath = p3Path
            
            
            //// p1 Drawing
            p1Path.move(to: CGPoint(x: 400.93, y: 1122.4))
            p1Path.addCurve(to: CGPoint(x: 567.91, y: 1162.83), control1: CGPoint(x: 400.93, y: 1122.4), control2: CGPoint(x: 493.56, y: 1191.72))
            p1Path.addCurve(to: CGPoint(x: 583.75, y: 1247.17), control1: CGPoint(x: 642.26, y: 1133.95), control2: CGPoint(x: 583.75, y: 1247.17))
            p1Path.addCurve(to: CGPoint(x: 283.92, y: 1122.4), control1: CGPoint(x: 583.75, y: 1247.17), control2: CGPoint(x: 400.93, y: 1309.56))
            p1Path.addCurve(to: CGPoint(x: 371.68, y: 893.64), control1: CGPoint(x: 166.92, y: 935.23), control2: CGPoint(x: 371.68, y: 893.64))
            p1Path.addLine(to: CGPoint(x: 632.51, y: 928.3))
            p1Path.addLine(to: CGPoint(x: 647.13, y: 1032.28))
            p1Path.addLine(to: CGPoint(x: 517.94, y: 979.14))
            p1Path.addCurve(to: CGPoint(x: 400.93, y: 1122.4), control1: CGPoint(x: 517.94, y: 979.14), control2: CGPoint(x: 320.49, y: 1020.73))
            
            
            
            //// p1M Drawing
            p1MPath.move(to: CGPoint(x: 579.16, y: 1200.96))
            p1MPath.addCurve(to: CGPoint(x: 299.75, y: 1018.32), control1: CGPoint(x: 579.16, y: 1200.96), control2: CGPoint(x: 305.2, y: 1221.24))
            p1MPath.addCurve(to: CGPoint(x: 607.82, y: 965.64), control1: CGPoint(x: 296.17, y: 884.86), control2: CGPoint(x: 597.08, y: 955.1))
            
            
            
            //// p2M Drawing
            p2MPath.move(to: CGPoint(x: 611.4, y: 958.62))
            p2MPath.addCurve(to: CGPoint(x: 335.58, y: 554.71), control1: CGPoint(x: 611.4, y: 958.62), control2: CGPoint(x: 192.29, y: 783))
            p2MPath.addCurve(to: CGPoint(x: 776.18, y: 516.08), control1: CGPoint(x: 478.86, y: 326.41), control2: CGPoint(x: 776.18, y: 516.08))
            
            
            
            //// p1End Drawing
            p1EndPath.move(to: CGPoint(x: 650.81, y: 1028.86))
            p1EndPath.addLine(to: CGPoint(x: 575.58, y: 1007.79))
            p1EndPath.addLine(to: CGPoint(x: 575.58, y: 923.49))
            p1EndPath.addLine(to: CGPoint(x: 627.66, y: 927.01))
            p1EndPath.addLine(to: CGPoint(x: 650.81, y: 1028.86))
            p1EndPath.closeSubpath()
            
            
            //// p2End Drawing
            p2EndPath.move(to: CGPoint(x: 726.03, y: 533.64))
            p2EndPath.addLine(to: CGPoint(x: 790.51, y: 459.88))
            p2EndPath.addLine(to: CGPoint(x: 833.5, y: 586.32))
            p2EndPath.addLine(to: CGPoint(x: 726.03, y: 533.64))
            p2EndPath.closeSubpath()
            
            
            
            parts = [p1Path,p2Path,p3Path]
            ends = [p1EndPath,p2EndPath,p3EndPath]
            paths = [p1MPath,p2MPath,p3MPath]
            
            break
        case 20 :
            p1Path.move(to: CGPoint(x: 852.27, y: 792.21))
            p1Path.addCurve(to: CGPoint(x: 734.81, y: 803.14), control1: CGPoint(x: 852.27, y: 792.21), control2: CGPoint(x: 749.49, y: 764.88))
            p1Path.addCurve(to: CGPoint(x: 827.1, y: 825), control1: CGPoint(x: 720.13, y: 841.4), control2: CGPoint(x: 793.54, y: 857.8))
            p1Path.addCurve(to: CGPoint(x: 898.42, y: 708.41), control1: CGPoint(x: 860.66, y: 792.21), control2: CGPoint(x: 875.35, y: 735.74))
            p1Path.addCurve(to: CGPoint(x: 896.32, y: 611.85), control1: CGPoint(x: 921.49, y: 681.08), control2: CGPoint(x: 919.4, y: 624.6))
            p1Path.addCurve(to: CGPoint(x: 829.2, y: 586.35), control1: CGPoint(x: 893.74, y: 610.42), control2: CGPoint(x: 863.38, y: 590.91))
            p1Path.addCurve(to: CGPoint(x: 862.76, y: 422.38), control1: CGPoint(x: 774.66, y: 579.06), control2: CGPoint(x: 761.17, y: 415.38))
            p1Path.addCurve(to: CGPoint(x: 1007.49, y: 551.73), control1: CGPoint(x: 994.91, y: 431.49), control2: CGPoint(x: 993.51, y: 484.54))
            p1Path.addCurve(to: CGPoint(x: 718.03, y: 912.45), control1: CGPoint(x: 1038.95, y: 702.94), control2: CGPoint(x: 837.59, y: 1089.17))
            p1Path.addCurve(to: CGPoint(x: 673.98, y: 688.37), control1: CGPoint(x: 664.57, y: 833.43), control2: CGPoint(x: 645.76, y: 732.79))
            p1Path.addCurve(to: CGPoint(x: 825.01, y: 659.22), control1: CGPoint(x: 708.87, y: 633.45), control2: CGPoint(x: 801.81, y: 645.12))
            p1Path.addCurve(to: CGPoint(x: 896.32, y: 710.23), control1: CGPoint(x: 849.55, y: 674.14), control2: CGPoint(x: 894.24, y: 707.29))
            
            
            
            //// p2 Drawing
            p2Path.move(to: CGPoint(x: 917.3, y: 433.31))
            p2Path.addLine(to: CGPoint(x: 866.96, y: 597.28))
            p2Path.addCurve(to: CGPoint(x: 204.13, y: 608.21), control1: CGPoint(x: 866.96, y: 597.28), control2: CGPoint(x: 376.13, y: 517.12))
            p2Path.addCurve(to: CGPoint(x: 153.79, y: 775.81), control1: CGPoint(x: 136.39, y: 644.08), control2: CGPoint(x: 173.16, y: 761.69))
            p2Path.addCurve(to: CGPoint(x: 61.5, y: 593.63), control1: CGPoint(x: 123.99, y: 797.56), control2: CGPoint(x: 61.5, y: 693.02))
            p2Path.addCurve(to: CGPoint(x: 405.5, y: 400.52), control1: CGPoint(x: 61.5, y: 429.67), control2: CGPoint(x: 183.16, y: 415.1))
            p2Path.addCurve(to: CGPoint(x: 917.3, y: 433.31), control1: CGPoint(x: 627.84, y: 385.95), control2: CGPoint(x: 917.3, y: 433.31))
            p2Path.closeSubpath()
            
            
            //// p3 Drawing
            p3Path.move(to: CGPoint(x: 709.63, y: 1142))
            p3Path.addLine(to: CGPoint(x: 628.27, y: 1068.32))
            p3Path.addLine(to: CGPoint(x: 713.83, y: 996.25))
            p3Path.addLine(to: CGPoint(x: 796.08, y: 1068.32))
            p3Path.addLine(to: CGPoint(x: 709.63, y: 1142))
            p3Path.closeSubpath()
            p3MPath.move(to: CGPoint(x: 713.83, y: 996.25))
            p3EndPath = p3Path
            
            
            //// p1End Drawing
            p1EndPath.move(to: CGPoint(x: 862.76, y: 589.99))
            p1EndPath.addLine(to: CGPoint(x: 795.64, y: 589.99))
            p1EndPath.addLine(to: CGPoint(x: 829.2, y: 422.38))
            p1EndPath.addLine(to: CGPoint(x: 917.3, y: 433.31))
            p1EndPath.addLine(to: CGPoint(x: 862.76, y: 589.99))
            p1EndPath.closeSubpath()
            
            
            //// p2End Drawing
            p2EndPath.move(to: CGPoint(x: 183.16, y: 671.07))
            p2EndPath.addCurve(to: CGPoint(x: 61.5, y: 703.39), control1: CGPoint(x: 183.16, y: 684.92), control2: CGPoint(x: 61.5, y: 703.39))
            p2EndPath.addLine(to: CGPoint(x: 150.4, y: 804.96))
            p2EndPath.addCurve(to: CGPoint(x: 183.16, y: 671.07), control1: CGPoint(x: 150.4, y: 804.96), control2: CGPoint(x: 183.16, y: 657.21))
            p2EndPath.closeSubpath()
            
            
            //// p1M Drawing
            p1MPath.move(to: CGPoint(x: 854.37, y: 750.31))
            p1MPath.addCurve(to: CGPoint(x: 745.3, y: 877.84), control1: CGPoint(x: 854.37, y: 750.31), control2: CGPoint(x: 611.06, y: 644.64))
            p1MPath.addCurve(to: CGPoint(x: 875.35, y: 498.9), control1: CGPoint(x: 879.54, y: 1111.03), control2: CGPoint(x: 1089.3, y: 498.9))
            
            
            
            //// p2M Drawing
            p2MPath.move(to: CGPoint(x: 858.57, y: 502.54))
            p2MPath.addCurve(to: CGPoint(x: 124.43, y: 721.16), control1: CGPoint(x: 858.57, y: 502.54), control2: CGPoint(x: 2.77, y: 309.43))
            
            
            
            
            
            
            parts = [p1Path,p2Path,p3Path]
            ends = [p1EndPath,p2EndPath,p3EndPath]
            paths = [p1MPath,p2MPath,p3MPath]
            
            break
        case 21 :
            //// p1 Drawing
            p1Path.move(to: CGPoint(x: 753.21, y: 955.69))
            p1Path.addCurve(to: CGPoint(x: 580.16, y: 969.92), control1: CGPoint(x: 753.21, y: 955.69), control2: CGPoint(x: 591.32, y: 938.29))
            p1Path.addCurve(to: CGPoint(x: 701.11, y: 1003.13), control1: CGPoint(x: 569, y: 1001.55), control2: CGPoint(x: 628.54, y: 1039.5))
            p1Path.addCurve(to: CGPoint(x: 781.12, y: 859.22), control1: CGPoint(x: 773.67, y: 966.76), control2: CGPoint(x: 760.65, y: 882.94))
            p1Path.addCurve(to: CGPoint(x: 796, y: 653.63), control1: CGPoint(x: 801.59, y: 835.49), control2: CGPoint(x: 809.03, y: 734.28))
            p1Path.addLine(to: CGPoint(x: 777.4, y: 644.14))
            p1Path.addLine(to: CGPoint(x: 807.17, y: 495.48))
            p1Path.addCurve(to: CGPoint(x: 911.37, y: 758), control1: CGPoint(x: 889.04, y: 596.69), control2: CGPoint(x: 908.89, y: 689.84))
            p1Path.addCurve(to: CGPoint(x: 606.21, y: 1137.55), control1: CGPoint(x: 916.95, y: 911.4), control2: CGPoint(x: 792.28, y: 1289.37))
            p1Path.addCurve(to: CGPoint(x: 502.01, y: 865.54), control1: CGPoint(x: 523, y: 1069.66), control2: CGPoint(x: 499, y: 932.06))
            p1Path.addCurve(to: CGPoint(x: 624.82, y: 783.31), control1: CGPoint(x: 505.73, y: 783.31), control2: CGPoint(x: 624.82, y: 783.31))
            p1Path.addCurve(to: CGPoint(x: 781.12, y: 859.22), control1: CGPoint(x: 679.96, y: 776.61), control2: CGPoint(x: 779.27, y: 856.66))
            
            
            
            //// p3 Drawing
            p3Path.move(to: CGPoint(x: 733.71, y: 1374.5))
            p3Path.addLine(to: CGPoint(x: 667.96, y: 1309.69))
            p3Path.addLine(to: CGPoint(x: 743.83, y: 1253.82))
            p3Path.addLine(to: CGPoint(x: 807.06, y: 1318.63))
            p3Path.addLine(to: CGPoint(x: 733.71, y: 1374.5))
            p3Path.closeSubpath()
            p3MPath.move(to: CGPoint(x: 743.83, y: 1253.82))
            p3EndPath = p3Path
            
            
            //// p2 Drawing
            p2Path.move(to: CGPoint(x: 827.64, y: 674.18))
            p2Path.addLine(to: CGPoint(x: 861.13, y: 582.46))
            p2Path.addCurve(to: CGPoint(x: 788.56, y: 473.34), control1: CGPoint(x: 861.13, y: 582.46), control2: CGPoint(x: 810.89, y: 482.83))
            p2Path.addCurve(to: CGPoint(x: 174.52, y: 584.04), control1: CGPoint(x: 766.23, y: 463.85), control2: CGPoint(x: 267.56, y: 229.79))
            p2Path.addCurve(to: CGPoint(x: 301.05, y: 884.52), control1: CGPoint(x: 143.77, y: 701.15), control2: CGPoint(x: 249.71, y: 887.49))
            p2Path.addCurve(to: CGPoint(x: 301.05, y: 675.77), control1: CGPoint(x: 327.73, y: 882.98), control2: CGPoint(x: 281.78, y: 717.26))
            p2Path.addCurve(to: CGPoint(x: 658.31, y: 603.02), control1: CGPoint(x: 356.87, y: 555.58), control2: CGPoint(x: 580.16, y: 577.72))
            p2Path.addCurve(to: CGPoint(x: 827.64, y: 674.18), control1: CGPoint(x: 815.36, y: 653.87), control2: CGPoint(x: 827.64, y: 674.18))
            p2Path.closeSubpath()
            
            
            //// p1End Drawing
            p1EndPath.move(to: CGPoint(x: 807.06, y: 680.62))
            p1EndPath.addCurve(to: CGPoint(x: 777.5, y: 642.9), control1: CGPoint(x: 807.06, y: 680.62), control2: CGPoint(x: 777.5, y: 657.99))
            p1EndPath.addCurve(to: CGPoint(x: 807.06, y: 496.59), control1: CGPoint(x: 777.5, y: 627.82), control2: CGPoint(x: 807.06, y: 496.59))
            p1EndPath.addLine(to: CGPoint(x: 862.7, y: 581.06))
            p1EndPath.addLine(to: CGPoint(x: 807.06, y: 680.62))
            p1EndPath.closeSubpath()
            
            
            //// p2End Drawing
            p2EndPath.move(to: CGPoint(x: 327.17, y: 810.34))
            p2EndPath.addLine(to: CGPoint(x: 215.89, y: 810.34))
            p2EndPath.addLine(to: CGPoint(x: 295.87, y: 943.09))
            p2EndPath.addLine(to: CGPoint(x: 327.17, y: 810.34))
            p2EndPath.closeSubpath()
            
            
            //// p1M Drawing
            p1MPath.move(to: CGPoint(x: 744.46, y: 891.8))
            p1MPath.addCurve(to: CGPoint(x: 615.8, y: 1072.81), control1: CGPoint(x: 744.46, y: 891.8), control2: CGPoint(x: 372.38, y: 795.26))
            p1MPath.addCurve(to: CGPoint(x: 817.49, y: 590.11), control1: CGPoint(x: 859.22, y: 1350.36), control2: CGPoint(x: 817.49, y: 590.11))
            
            
            
            //// p4 Drawing
            p4Path.move(to: CGPoint(x: 584.18, y: 1365.45))
            p4Path.addLine(to: CGPoint(x: 518.43, y: 1300.64))
            p4Path.addLine(to: CGPoint(x: 594.3, y: 1244.77))
            p4Path.addLine(to: CGPoint(x: 657.53, y: 1309.58))
            p4Path.addLine(to: CGPoint(x: 584.18, y: 1365.45))
            p4Path.closeSubpath()
            p4MPath.move( to: CGPoint(x: 594.3, y: 1244.77))
            p4EndPath = p4Path
            
            //// p2M Drawing
            p2MPath.move(to: CGPoint(x: 819.23, y: 588.6))
            p2MPath.addCurve(to: CGPoint(x: 278.49, y: 837.49), control1: CGPoint(x: 819.23, y: 588.6), control2: CGPoint(x: 108.09, y: 258.25))
            
            
            
            
            
            parts = [p1Path,p2Path,p3Path,p4Path]
            ends = [p1EndPath,p2EndPath,p3EndPath,p4EndPath]
            paths = [p1MPath,p2MPath,p3MPath,p4MPath]
            break
        case 22 :
            
            //// p2 Drawing
            p2Path.move(to: CGPoint(x: 937.85, y: 646.25))
            p2Path.addCurve(to: CGPoint(x: 436.47, y: 382.19), control1: CGPoint(x: 909.55, y: 530.96), control2: CGPoint(x: 933.81, y: 397.07))
            p2Path.addCurve(to: CGPoint(x: 149.4, y: 408.23), control1: CGPoint(x: 305.84, y: 378.29), control2: CGPoint(x: 185.41, y: 376.43))
            p2Path.addCurve(to: CGPoint(x: 104.92, y: 687.16), control1: CGPoint(x: 101.05, y: 450.91), control2: CGPoint(x: 53.03, y: 741.7))
            p2Path.addCurve(to: CGPoint(x: 828.68, y: 690.88), control1: CGPoint(x: 161.53, y: 627.66), control2: CGPoint(x: 514.34, y: 622.96))
            p2Path.addLine(to: CGPoint(x: 937.85, y: 646.25))
            p2Path.closeSubpath()
            
            
            //// p1M Drawing
            p1MPath.move(to: CGPoint(x: 861.29, y: 1238.17))
            p1MPath.addLine(to: CGPoint(x: 894.66, y: 605.31))
            
            
            
            //// p3 Drawing
            p3Path.move(to: CGPoint(x: 455.14, y: 1029.68))
            p3Path.addCurve(to: CGPoint(x: 559.31, y: 1060.68), control1: CGPoint(x: 470.83, y: 1082.79), control2: CGPoint(x: 559.31, y: 1060.68))
            p3Path.addLine(to: CGPoint(x: 591.36, y: 1142.06))
            p3Path.addCurve(to: CGPoint(x: 427.1, y: 1076.18), control1: CGPoint(x: 591.36, y: 1142.06), control2: CGPoint(x: 507.23, y: 1211.81))
            p3Path.addCurve(to: CGPoint(x: 455.14, y: 909.56), control1: CGPoint(x: 346.97, y: 940.56), control2: CGPoint(x: 387.03, y: 925.06))
            p3Path.addCurve(to: CGPoint(x: 463.15, y: 847.56), control1: CGPoint(x: 523.25, y: 894.06), control2: CGPoint(x: 567.32, y: 894.06))
            p3Path.addCurve(to: CGPoint(x: 379.02, y: 797.19), control1: CGPoint(x: 358.99, y: 801.06), control2: CGPoint(x: 274.85, y: 843.69))
            p3Path.addCurve(to: CGPoint(x: 563.32, y: 847.56), control1: CGPoint(x: 483.19, y: 750.69), control2: CGPoint(x: 563.32, y: 847.56))
            p3Path.addCurve(to: CGPoint(x: 555.31, y: 983.18), control1: CGPoint(x: 563.32, y: 847.56), control2: CGPoint(x: 671.49, y: 967.68))
            p3Path.addCurve(to: CGPoint(x: 455.14, y: 1029.68), control1: CGPoint(x: 516.02, y: 988.42), control2: CGPoint(x: 447.13, y: 1002.56))
            p3Path.closeSubpath()
            
            
            //// p2End Drawing
            p2EndPath.addRect(CGRect(x: 86.5, y: 378.5, width: 100, height: 307))
            
            
            
            //// p3End Drawing
            p3EndPath.move(to: CGPoint(x: 412.56, y: 861.38))
            p3EndPath.addLine(to: CGPoint(x: 412.56, y: 762.61))
            p3EndPath.addLine(to: CGPoint(x: 308.72, y: 819.48))
            p3EndPath.addLine(to: CGPoint(x: 412.56, y: 861.38))
            p3EndPath.closeSubpath()
            
            
            //// p3M Drawing
            p3MPath.move(to: CGPoint(x: 542.35, y: 1121.11))
            p3MPath.addCurve(to: CGPoint(x: 486.73, y: 949.18), control1: CGPoint(x: 542.35, y: 1121.11), control2: CGPoint(x: 316.14, y: 1044.29))
            p3MPath.addCurve(to: CGPoint(x: 397.72, y: 810.17), control1: CGPoint(x: 657.32, y: 854.06), control2: CGPoint(x: 508.98, y: 824.8))
            
            
            
            //// p1 Drawing
            p1Path.move(to: CGPoint(x: 774.09, y: 1209.7))
            p1Path.addLine(to: CGPoint(x: 741.75, y: 1235.73))
            p1Path.addLine(to: CGPoint(x: 838.79, y: 1384.5))
            p1Path.addCurve(to: CGPoint(x: 998.5, y: 1237.59), control1: CGPoint(x: 838.79, y: 1384.5), control2: CGPoint(x: 893.37, y: 1259.91))
            p1Path.addLine(to: CGPoint(x: 933.81, y: 1103.71))
            p1Path.addLine(to: CGPoint(x: 897.42, y: 1114.86))
            p1Path.addLine(to: CGPoint(x: 937.85, y: 646.25))
            p1Path.addCurve(to: CGPoint(x: 813.07, y: 451.66), control1: CGPoint(x: 927.47, y: 603.96), control2: CGPoint(x: 913.2, y: 477.27))
            p1Path.addCurve(to: CGPoint(x: 828.68, y: 690.88), control1: CGPoint(x: 813.07, y: 451.66), control2: CGPoint(x: 631.36, y: 667.5))
            p1Path.addLine(to: CGPoint(x: 774.09, y: 1209.7))
            p1Path.closeSubpath()
            
            
            //// p1End Drawing
            p1EndPath.addRect( CGRect(x: 774, y: 501, width: 185, height: 183))
            
            
            //// p2M Drawing
            p2MPath.move(to: CGPoint(x: 879.83, y: 608.97))
            p2MPath.addCurve(to: CGPoint(x: 141.84, y: 557.75), control1: CGPoint(x: 879.83, y: 608.97), control2: CGPoint(x: 412.56, y: 469.95))
            
            
            
            
            
            
            
            parts = [p1Path,p2Path,p3Path]
            ends = [p1EndPath,p2EndPath,p3EndPath]
            paths = [p1MPath,p2MPath,p3MPath]
            break
        case 23 :
            p1Path.move(to: CGPoint(x: 673.68, y: 1237.96))
            p1Path.addLine(to: CGPoint(x: 652.49, y: 1267.33))
            p1Path.addLine(to: CGPoint(x: 725.32, y: 1399.5))
            p1Path.addCurve(to: CGPoint(x: 844.5, y: 1268.67), control1: CGPoint(x: 725.32, y: 1399.5), control2: CGPoint(x: 754.45, y: 1287.36))
            p1Path.addLine(to: CGPoint(x: 791.53, y: 1151.19))
            p1Path.addLine(to: CGPoint(x: 770.34, y: 1161.87))
            p1Path.addLine(to: CGPoint(x: 807.42, y: 756.02))
            p1Path.addCurve(to: CGPoint(x: 701.48, y: 475.66), control1: CGPoint(x: 807.42, y: 756.02), control2: CGPoint(x: 774.6, y: 561.66))
            p1Path.addCurve(to: CGPoint(x: 447.23, y: 400.9), control1: CGPoint(x: 669.7, y: 438.28), control2: CGPoint(x: 518.65, y: 394.43))
            p1Path.addCurve(to: CGPoint(x: 267.14, y: 737.33), control1: CGPoint(x: 211.52, y: 422.26), control2: CGPoint(x: 227.41, y: 635.87))
            p1Path.addCurve(to: CGPoint(x: 346.74, y: 737.32), control1: CGPoint(x: 306.87, y: 838.79), control2: CGPoint(x: 415.6, y: 934.9))
            p1Path.addCurve(to: CGPoint(x: 697.51, y: 685.85), control1: CGPoint(x: 277.88, y: 539.74), control2: CGPoint(x: 600.63, y: 480))
            p1Path.addLine(to: CGPoint(x: 673.68, y: 1237.96))
            p1Path.closeSubpath()
            
            
            //// p1M Drawing
            p1MPath.move(to: CGPoint(x: 720.9, y: 1255.4))
            p1MPath.addLine(to: CGPoint(x: 754.3, y: 696.15))
            p1MPath.addCurve(to: CGPoint(x: 353.42, y: 493.72), control1: CGPoint(x: 721, y: 538.45), control2: CGPoint(x: 449.65, y: 391.79))
            p1MPath.addCurve(to: CGPoint(x: 316.68, y: 775.06), control1: CGPoint(x: 275.88, y: 575.86), control2: CGPoint(x: 316.68, y: 775.06))
            
            
            
            //// p1End Drawing
            p1EndPath.move(to: CGPoint(x: 353.42, y: 713.3))
            p1EndPath.addLine(to: CGPoint(x: 236.5, y: 785.35))
            p1EndPath.addLine(to: CGPoint(x: 390.17, y: 902.01))
            p1EndPath.addLine(to: CGPoint(x: 353.42, y: 713.3))
            p1EndPath.closeSubpath()
            
            parts = [p1Path]
            ends = [p1EndPath]
            paths = [p1MPath]
            break
            
        case 24 :
            //// p1 Drawing
            
            p1Path.move(to: CGPoint(x: 393.2, y: 1190.81))
            p1Path.addCurve(to: CGPoint(x: 405.57, y: 1291), control1: CGPoint(x: 296.26, y: 1103.29), control2: CGPoint(x: 405.57, y: 1291))
            p1Path.addCurve(to: CGPoint(x: 637.04, y: 1340.25), control1: CGPoint(x: 405.57, y: 1291), control2: CGPoint(x: 488.61, y: 1421.76))
            p1Path.addCurve(to: CGPoint(x: 842, y: 1156.85), control1: CGPoint(x: 785.46, y: 1258.74), control2: CGPoint(x: 842, y: 1156.85))
            p1Path.addCurve(to: CGPoint(x: 758.95, y: 910.61), control1: CGPoint(x: 842, y: 1156.85), control2: CGPoint(x: 785.46, y: 915.71))
            p1Path.addCurve(to: CGPoint(x: 460.34, y: 810.42), control1: CGPoint(x: 732.45, y: 905.52), control2: CGPoint(x: 373.76, y: 1168.73))
            p1Path.addCurve(to: CGPoint(x: 426.77, y: 414.75), control1: CGPoint(x: 460.34, y: 810.42), control2: CGPoint(x: 539.85, y: 492.86))
            p1Path.addCurve(to: CGPoint(x: 416.17, y: 608.34), control1: CGPoint(x: 388.89, y: 388.58), control2: CGPoint(x: 447.19, y: 492.79))
            p1Path.addCurve(to: CGPoint(x: 357.86, y: 810.42), control1: CGPoint(x: 387.9, y: 713.63), control2: CGPoint(x: 357.86, y: 810.42))
            p1Path.addCurve(to: CGPoint(x: 599.93, y: 1131.37), control1: CGPoint(x: 288.95, y: 1036.28), control2: CGPoint(x: 327.82, y: 1212.89))
            p1Path.addCurve(to: CGPoint(x: 393.2, y: 1190.81), control1: CGPoint(x: 599.93, y: 1131.37), control2: CGPoint(x: 509.82, y: 1296.1))
            p1Path.closeSubpath()
            
            
            //// p1M Drawing
            p1MPath.move(to: CGPoint(x: 381.02, y: 1209.04))
            p1MPath.addCurve(to: CGPoint(x: 733.13, y: 1154.44), control1: CGPoint(x: 381.02, y: 1209.04), control2: CGPoint(x: 561.71, y: 1509.36))
            p1MPath.addCurve(to: CGPoint(x: 390.29, y: 943.83), control1: CGPoint(x: 904.54, y: 799.52), control2: CGPoint(x: 283.73, y: 1306.55))
            p1MPath.addCurve(to: CGPoint(x: 441.25, y: 483.61), control1: CGPoint(x: 496.85, y: 581.11), control2: CGPoint(x: 441.25, y: 483.61))
            
            
            //// p1End Drawing
            p1EndPath.move(to: CGPoint(x: 506.11, y: 514.81))
            p1EndPath.addLine(to: CGPoint(x: 371.76, y: 514.81))
            p1EndPath.addLine(to: CGPoint(x: 408.82, y: 370.5))
            p1EndPath.addLine(to: CGPoint(x: 506.11, y: 514.81))
            p1EndPath.closeSubpath()
            
            parts = [p1Path]
            ends = [p1EndPath]
            paths = [p1MPath]
            
            break
        case 25 :
            
            p1Path.move(to: CGPoint(x: 777.05, y: 667.47))
            p1Path.addCurve(to: CGPoint(x: 684.64, y: 953.49), control1: CGPoint(x: 797.21, y: 713.36), control2: CGPoint(x: 684.64, y: 953.49))
            p1Path.addLine(to: CGPoint(x: 775.37, y: 1103.38))
            p1Path.addCurve(to: CGPoint(x: 797.21, y: 456.41), control1: CGPoint(x: 775.37, y: 1103.38), control2: CGPoint(x: 992.09, y: 866.31))
            p1Path.addCurve(to: CGPoint(x: 252.87, y: 456.41), control1: CGPoint(x: 797.21, y: 456.41), control2: CGPoint(x: 420.88, y: 272.87))
            p1Path.addCurve(to: CGPoint(x: 286.47, y: 774.54), control1: CGPoint(x: 84.87, y: 639.94), control2: CGPoint(x: 410.8, y: 1120.2))
            p1Path.addCurve(to: CGPoint(x: 777.05, y: 667.47), control1: CGPoint(x: 209.23, y: 559.78), control2: CGPoint(x: 743.97, y: 592.2))
            p1Path.closeSubpath()
            
            //// p2 Drawing
            p2Path.move(to: CGPoint(x: 517.39, y: 1271.5))
            p2Path.addLine(to: CGPoint(x: 435.49, y: 1190.71))
            p2Path.addLine(to: CGPoint(x: 517.39, y: 1103.38))
            p2Path.addLine(to: CGPoint(x: 596.29, y: 1186.5))
            p2Path.addLine(to: CGPoint(x: 517.39, y: 1271.5))
            p2Path.closeSubpath()
            p2MPath.move(to:  CGPoint(x: 517.39, y: 1103.38))
            p2EndPath = p2Path
            
            
            //// p1M Drawing
            p1MPath.move(to: CGPoint(x: 753.8, y: 976.49))
            p1MPath.addCurve(to: CGPoint(x: 573.32, y: 449.91), control1: CGPoint(x: 750.52, y: 973.32), control2: CGPoint(x: 1029.45, y: 560.93))
            p1MPath.addCurve(to: CGPoint(x: 271.41, y: 830.57), control1: CGPoint(x: 117.18, y: 338.88), control2: CGPoint(x: 271.41, y: 830.57))
            
            
            
            //// p1End Drawing
            p1EndPath.move(to: CGPoint(x: 327.2, y: 782.99))
            p1EndPath.addLine(to: CGPoint(x: 202.5, y: 824.22))
            p1EndPath.addLine(to: CGPoint(x: 327.2, y: 935.25))
            p1EndPath.addLine(to: CGPoint(x: 327.2, y: 782.99))
            p1EndPath.closeSubpath()
            
            
            
            
            parts = [p1Path,p2Path]
            ends = [p1EndPath,p2EndPath]
            paths = [p1MPath,p2MPath]
            break
        case 26 :
            //// Group
            //// p1 Drawing
            p1Path.move(to: CGPoint(x: 493.34, y: 959.97))
            p1Path.addCurve(to: CGPoint(x: 671.09, y: 830.04), control1: CGPoint(x: 493.34, y: 959.97), control2: CGPoint(x: 656.28, y: 884.11))
            p1Path.addCurve(to: CGPoint(x: 537.7, y: 756.35), control1: CGPoint(x: 677.32, y: 807.26), control2: CGPoint(x: 569.56, y: 760.22))
            p1Path.addCurve(to: CGPoint(x: 496.46, y: 958.77), control1: CGPoint(x: 410.29, y: 740.83), control2: CGPoint(x: 458.51, y: 909.48))
            p1Path.addCurve(to: CGPoint(x: 424.86, y: 990.5), control1: CGPoint(x: 498.29, y: 961.15), control2: CGPoint(x: 424.86, y: 990.5))
            p1Path.addCurve(to: CGPoint(x: 495.9, y: 630.29), control1: CGPoint(x: 358.17, y: 878.99), control2: CGPoint(x: 273.77, y: 615.06))
            p1Path.addCurve(to: CGPoint(x: 717.87, y: 960.94), control1: CGPoint(x: 778.59, y: 649.69), control2: CGPoint(x: 765.65, y: 875.61))
            p1Path.addCurve(to: CGPoint(x: 462.05, y: 1134.5), control1: CGPoint(x: 670.09, y: 1046.26), control2: CGPoint(x: 462.05, y: 1134.5))
            p1Path.addLine(to: CGPoint(x: 408.3, y: 992.93))
            p1Path.addLine(to: CGPoint(x: 424.23, y: 989.06))
            
            
            
            //// p1M Drawing
            p1MPath.move(to: CGPoint(x: 478.56, y: 1017.34))
            p1MPath.addCurve(to: CGPoint(x: 591.07, y: 712.25), control1: CGPoint(x: 478.56, y: 1017.34), control2: CGPoint(x: 926.06, y: 887.99))
            p1MPath.addCurve(to: CGPoint(x: 445.32, y: 968.53), control1: CGPoint(x: 256.09, y: 536.52), control2: CGPoint(x: 445.32, y: 968.53))
            
            
            
            
            
            
            
            //// p1End Drawing
            p1EndPath.move(to: CGPoint(x: 392.5, y: 1017.5))
            p1EndPath.addLine(to: CGPoint(x: 517.5, y: 953.98))
            p1EndPath.addLine(to: CGPoint(x: 448.42, y: 886.5))
            p1EndPath.addLine(to: CGPoint(x: 392.5, y: 953.98))
            p1EndPath.addLine(to: CGPoint(x: 392.5, y: 1017.5))
            p1EndPath.closeSubpath()
            
            parts = [p1Path]
            ends = [p1EndPath]
            paths = [p1MPath]
            
            break
        case 27 :
            //// p1 Drawing
            p1Path.move(to: CGPoint(x: 764.78, y: 919.18))
            p1Path.addCurve(to: CGPoint(x: 816.19, y: 1137.62), control1: CGPoint(x: 841.89, y: 991.24), control2: CGPoint(x: 883.96, y: 979.98))
            p1Path.addCurve(to: CGPoint(x: 577.83, y: 1211.93), control1: CGPoint(x: 748.42, y: 1295.25), control2: CGPoint(x: 659.62, y: 1342.55))
            p1Path.addCurve(to: CGPoint(x: 594.76, y: 864.94), control1: CGPoint(x: 496.04, y: 1081.32), control2: CGPoint(x: 424.17, y: 909.98))
            p1Path.addCurve(to: CGPoint(x: 672.47, y: 864.48), control1: CGPoint(x: 594.76, y: 864.94), control2: CGPoint(x: 644.87, y: 855.55))
            p1Path.addCurve(to: CGPoint(x: 764.78, y: 919.18), control1: CGPoint(x: 700.27, y: 873.46), control2: CGPoint(x: 735.46, y: 889.8))
            p1Path.addCurve(to: CGPoint(x: 722.71, y: 1047.54), control1: CGPoint(x: 764.78, y: 919.18), control2: CGPoint(x: 737.83, y: 1050.07))
            p1Path.addCurve(to: CGPoint(x: 594.19, y: 1074.56), control1: CGPoint(x: 668.97, y: 1038.53), control2: CGPoint(x: 598.86, y: 1045.29))
            p1Path.addCurve(to: CGPoint(x: 650.27, y: 1126.36), control1: CGPoint(x: 594.19, y: 1074.56), control2: CGPoint(x: 603.54, y: 1126.36))
            p1Path.addCurve(to: CGPoint(x: 725.05, y: 1045.29), control1: CGPoint(x: 697.01, y: 1126.36), control2: CGPoint(x: 725.05, y: 1045.29))
            
            
            
            //// p2 Drawing
            p2Path.move(to: CGPoint(x: 850.35, y: 1029.3))
            p2Path.addLine(to: CGPoint(x: 778.46, y: 933.98))
            p2Path.addCurve(to: CGPoint(x: 771.65, y: 820.37), control1: CGPoint(x: 778.46, y: 933.98), control2: CGPoint(x: 791.01, y: 869.17))
            p2Path.addCurve(to: CGPoint(x: 398.65, y: 577.15), control1: CGPoint(x: 726.42, y: 706.35), control2: CGPoint(x: 599.95, y: 549.5))
            p2Path.addCurve(to: CGPoint(x: 340.98, y: 483.81), control1: CGPoint(x: 236.92, y: 599.37), control2: CGPoint(x: 166.97, y: 683.22))
            p2Path.addCurve(to: CGPoint(x: 752.44, y: 553.76), control1: CGPoint(x: 476.25, y: 328.8), control2: CGPoint(x: 696.12, y: 454.61))
            p2Path.addCurve(to: CGPoint(x: 850.35, y: 1029.3), control1: CGPoint(x: 881.21, y: 780.43), control2: CGPoint(x: 850.35, y: 1029.3))
            p2Path.closeSubpath()
            
            
            
            
            //// p1M Drawing
            p1MPath.move(to: CGPoint(x: 723.73, y: 980.11))
            p1MPath.addCurve(to: CGPoint(x: 594.68, y: 1125.87), control1: CGPoint(x: 723.73, y: 980.11), control2: CGPoint(x: 433.36, y: 916.73))
            p1MPath.addCurve(to: CGPoint(x: 793.63, y: 961.1), control1: CGPoint(x: 755.99, y: 1335.01), control2: CGPoint(x: 793.63, y: 961.1))
            
            
            
            //// p2M Drawing
            p2MPath.move(to: CGPoint(x: 823.48, y: 892.89))
            p2MPath.addCurve(to: CGPoint(x: 304.11, y: 578.55), control1: CGPoint(x: 823.48, y: 892.89), control2: CGPoint(x: 721.99, y: 382.82))
            
            
            
            //// p2End Drawing
            p2EndPath.move(to: CGPoint(x: 338.44, y: 609.68))
            p2EndPath.addLine(to: CGPoint(x: 293.67, y: 526.65))
            p2EndPath.addLine(to: CGPoint(x: 228, y: 609.68))
            p2EndPath.addLine(to: CGPoint(x: 338.44, y: 609.68))
            p2EndPath.closeSubpath()
            
            
            //// p1End Drawing
            p1EndPath.move(to: CGPoint(x: 850.34, y: 1047.09))
            p1EndPath.addLine(to: CGPoint(x: 742.89, y: 1005.58))
            p1EndPath.addLine(to: CGPoint(x: 763.78, y: 919.58))
            p1EndPath.addLine(to: CGPoint(x: 850.34, y: 1005.58))
            p1EndPath.addLine(to: CGPoint(x: 850.34, y: 1047.09))
            p1EndPath.closeSubpath()
            
            
            
            
            parts = [p1Path,p2Path]
            ends = [p1EndPath,p2EndPath]
            paths = [p1MPath,p2MPath]
            
            break
        case 28 :
            
            //// Group
            //// p1 Drawing
            p1Path.move(to: CGPoint(x: 619.62, y: 1018.99))
            p1Path.addCurve(to: CGPoint(x: 859.21, y: 1172.21), control1: CGPoint(x: 619.62, y: 1018.99), control2: CGPoint(x: 686.57, y: 1289.57))
            p1Path.addCurve(to: CGPoint(x: 876.83, y: 1325.43), control1: CGPoint(x: 859.21, y: 1172.21), control2: CGPoint(x: 933.2, y: 1286.31))
            p1Path.addCurve(to: CGPoint(x: 619.62, y: 1214.59), control1: CGPoint(x: 876.83, y: 1325.43), control2: CGPoint(x: 771.94, y: 1425.99))
            p1Path.addCurve(to: CGPoint(x: 524.49, y: 921.19), control1: CGPoint(x: 510.19, y: 1062.71), control2: CGPoint(x: 466.71, y: 979.45))
            p1Path.addCurve(to: CGPoint(x: 838.07, y: 816.87), control1: CGPoint(x: 608.09, y: 836.9), control2: CGPoint(x: 838.07, y: 816.87))
            p1Path.addCurve(to: CGPoint(x: 757.03, y: 983.13), control1: CGPoint(x: 838.07, y: 816.87), control2: CGPoint(x: 894.45, y: 960.31))
            p1Path.addCurve(to: CGPoint(x: 619.62, y: 1018.99), control1: CGPoint(x: 619.62, y: 1005.95), control2: CGPoint(x: 619.62, y: 1018.99))
            p1Path.closeSubpath()
            
            //// p2 Drawing
            p2Path.move(to: CGPoint(x: 792.27, y: 875.55))
            p2Path.addCurve(to: CGPoint(x: 841.6, y: 826.65), control1: CGPoint(x: 845.12, y: 872.29), control2: CGPoint(x: 841.6, y: 825.35))
            p2Path.addCurve(to: CGPoint(x: 415.27, y: 556.08), control1: CGPoint(x: 841.6, y: 829.91), control2: CGPoint(x: 735.89, y: 556.08))
            p2Path.addCurve(to: CGPoint(x: 182.72, y: 911.41), control1: CGPoint(x: 94.64, y: 556.08), control2: CGPoint(x: 129.87, y: 803.84))
            p2Path.addCurve(to: CGPoint(x: 256.71, y: 999.43), control1: CGPoint(x: 182.72, y: 911.41), control2: CGPoint(x: 299, y: 1155.91))
            p2Path.addCurve(to: CGPoint(x: 390.6, y: 751.68), control1: CGPoint(x: 214.43, y: 842.95), control2: CGPoint(x: 263.76, y: 751.68))
            p2Path.addCurve(to: CGPoint(x: 718.28, y: 839.69), control1: CGPoint(x: 517.44, y: 751.68), control2: CGPoint(x: 795.79, y: 807.1))
            p2Path.addCurve(to: CGPoint(x: 792.27, y: 875.55), control1: CGPoint(x: 671.87, y: 859.21), control2: CGPoint(x: 713.4, y: 880.42))
            p2Path.closeSubpath()
            
            
            //// p1M Drawing
            p1MPath.move(to: CGPoint(x: 841.6, y: 1221.11))
            p1MPath.addCurve(to: CGPoint(x: 610.81, y: 1134.72), control1: CGPoint(x: 848.64, y: 1221.11), control2: CGPoint(x: 829.26, y: 1405.3))
            p1MPath.addCurve(to: CGPoint(x: 561.49, y: 981.5), control1: CGPoint(x: 566.11, y: 1079.35), control2: CGPoint(x: 561.49, y: 981.5))
            p1MPath.addCurve(to: CGPoint(x: 783.46, y: 854.36), control1: CGPoint(x: 868.02, y: 955.42), control2: CGPoint(x: 783.46, y: 854.36))
            
            
            
            //// p2M Drawing
            p2MPath.move(to: CGPoint(x: 786.98, y: 818.5))
            p2MPath.addCurve(to: CGPoint(x: 226.77, y: 948.9), control1: CGPoint(x: 786.98, y: 818.5), control2: CGPoint(x: 64.69, y: 378.41))
            
            
            
            //// p1End Drawing
            p1EndPath.addRect( CGRect(x: 678.5, y: 817.5, width: 192, height: 54))
            
            
            
            //// p2End Drawing
            p2EndPath.move(to: CGPoint(x: 276.09, y: 988.02))
            p2EndPath.addLine(to: CGPoint(x: 188.01, y: 1004.32))
            p2EndPath.addLine(to: CGPoint(x: 276.09, y: 1072.78))
            p2EndPath.addLine(to: CGPoint(x: 276.09, y: 988.02))
            p2EndPath.closeSubpath()
            
            
            //// p3 Drawing
            p3Path.move(to: CGPoint(x: 637.24, y: 500.66))
            p3Path.addLine(to: CGPoint(x: 570.3, y: 428.94))
            p3Path.addLine(to: CGPoint(x: 637.24, y: 367))
            p3Path.addLine(to: CGPoint(x: 704.18, y: 432.2))
            p3Path.addLine(to: CGPoint(x: 637.24, y: 500.66))
            p3Path.addLine(to: CGPoint(x: 637.24, y: 500.66))
            p3Path.closeSubpath()
            p3MPath.move(to: CGPoint(x: 637.24, y: 367))
            p3EndPath = p3Path
            
            //// p4 Drawing
            p4Path.move(to: CGPoint(x: 503.35, y: 500.66))
            p4Path.addLine(to: CGPoint(x: 436.41, y: 428.94))
            p4Path.addLine(to: CGPoint(x: 503.35, y: 367))
            p4Path.addLine(to: CGPoint(x: 570.3, y: 432.2))
            p4Path.addLine(to: CGPoint(x: 503.35, y: 500.66))
            p4Path.addLine(to: CGPoint(x: 503.35, y: 500.66))
            p4Path.closeSubpath()
            p4MPath.move(to: CGPoint(x: 503.35, y: 367))
            p4EndPath=p4Path
            
            
            parts = [p1Path,p2Path,p3Path,p4Path]
            ends = [p1EndPath,p2EndPath,p3EndPath,p4EndPath]
            paths = [p1MPath,p2MPath,p3MPath,p4MPath]
            
            break
            
        default:
            break
        }
        
        return (parts,paths,ends)
        
        
    }
    
    
}
