//
//  LetterDrawingiPad.swift
//  LearnArabicLetter
//
//  Created by بدور on ١١‏/٧‏/٢٠١٧.
//  Copyright © ٢٠١٧ بدور. All rights reserved.
//



import Foundation
import UIKit
import SpriteKit


class LetterDrawingiPad {
    
    
    
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
            
            p1Path.move(to: CGPoint(x: 871.97, y: 1255.57))
            p1Path.addCurve(to: CGPoint(x: 908.7, y: 827.16), control1: CGPoint(x: 871.97, y: 1255.57), control2: CGPoint(x: 876.05, y: 927.65))
            p1Path.addCurve(to: CGPoint(x: 818.91, y: 451.64), control1: CGPoint(x: 941.35, y: 726.67), control2: CGPoint(x: 953.6, y: 501.88))
            p1Path.addCurve(to: CGPoint(x: 768.83, y: 439.36), control1: CGPoint(x: 790.79, y: 441.15), control2: CGPoint(x: 775.66, y: 437.35))
            p1Path.addCurve(to: CGPoint(x: 794.42, y: 665.84), control1: CGPoint(x: 742.94, y: 446.98), control2: CGPoint(x: 836.4, y: 538.2))
            p1Path.addCurve(to: CGPoint(x: 716.87, y: 1107.48), control1: CGPoint(x: 741.35, y: 827.16), control2: CGPoint(x: 716.87, y: 1107.48))
            p1Path.addLine(to: CGPoint(x: 871.97, y: 1255.57))
            p1Path.closeSubpath()
            
            
            
            //// p1End Drawing
            p1EndPath.addRect(CGRect(x: 767.46, y: 439.18, width: 142.5, height: 112.5))
            
            
            //// p3M Drawing
            
            p3MPath.move(to: CGPoint(x: 928.72, y: 1356.9))
            p3MPath.addCurve(to: CGPoint(x: 641.81, y: 1211.78), control1: CGPoint(x: 928.72, y: 1356.9), control2: CGPoint(x: 713.54, y: 1304.66))
            
            
            
            
            //// p2 Drawing
            
            p2Path.move(to: CGPoint(x: 716.22, y: 1465.17))
            p2Path.addCurve(to: CGPoint(x: 899.22, y: 1477.78), control1: CGPoint(x: 716.22, y: 1465.17), control2: CGPoint(x: 823.94, y: 1550.75))
            p2Path.addCurve(to: CGPoint(x: 899.22, y: 1587.01), control1: CGPoint(x: 942.56, y: 1435.76), control2: CGPoint(x: 949.07, y: 1551.71))
            p2Path.addCurve(to: CGPoint(x: 716.22, y: 1540.8), control1: CGPoint(x: 862.49, y: 1613.04), control2: CGPoint(x: 767.3, y: 1585.36))
            p2Path.addCurve(to: CGPoint(x: 701.78, y: 1355.93), control1: CGPoint(x: 595.83, y: 1435.76), control2: CGPoint(x: 634.36, y: 1393.75))
            p2Path.addCurve(to: CGPoint(x: 913.67, y: 1330.72), control1: CGPoint(x: 769.2, y: 1318.12), control2: CGPoint(x: 913.67, y: 1330.72))
            p2Path.addCurve(to: CGPoint(x: 966.64, y: 1406.35), control1: CGPoint(x: 913.67, y: 1330.72), control2: CGPoint(x: 934.33, y: 1340.57))
            p2Path.addCurve(to: CGPoint(x: 889.59, y: 1393.75), control1: CGPoint(x: 981.09, y: 1435.76), control2: CGPoint(x: 958.82, y: 1407.68))
            p2Path.addCurve(to: CGPoint(x: 716.22, y: 1465.17), control1: CGPoint(x: 764.38, y: 1368.54), control2: CGPoint(x: 716.22, y: 1465.17))
            p2Path.addLine(to: CGPoint(x: 716.22, y: 1465.17))
            p2Path.closeSubpath()
            
            
            
            //// p3 Drawing
            
            p3Path.move(to: CGPoint(x: 747.79, y: 1318.05))
            p3Path.addCurve(to: CGPoint(x: 641.31, y: 1246.41), control1: CGPoint(x: 747.79, y: 1318.05), control2: CGPoint(x: 690.67, y: 1296.91))
            p3Path.addCurve(to: CGPoint(x: 708.57, y: 1220.97), control1: CGPoint(x: 591.94, y: 1195.9), control2: CGPoint(x: 576.79, y: 1157.74))
            p3Path.addCurve(to: CGPoint(x: 895.96, y: 1297.61), control1: CGPoint(x: 840.35, y: 1284.19), control2: CGPoint(x: 895.96, y: 1297.61))
            p3Path.addCurve(to: CGPoint(x: 956.03, y: 1378.67), control1: CGPoint(x: 895.96, y: 1297.61), control2: CGPoint(x: 923.58, y: 1298.24))
            p3Path.addCurve(to: CGPoint(x: 917.75, y: 1389.59), control1: CGPoint(x: 983.11, y: 1445.8), control2: CGPoint(x: 959.38, y: 1410.51))
            p3Path.addCurve(to: CGPoint(x: 747.79, y: 1318.05), control1: CGPoint(x: 826.23, y: 1343.6), control2: CGPoint(x: 747.79, y: 1318.05))
            p3Path.closeSubpath()
            
            
            //// p1M Drawing
            
            p1MPath.move(to: CGPoint(x: 802.93, y: 1137.91))
            p1MPath.addCurve(to: CGPoint(x: 836.61, y: 479.67), control1: CGPoint(x: 802.93, y: 1137.91), control2: CGPoint(x: 930.16, y: 630.04))
            
            
            
            //// p2M Drawing
            p2MPath.move(to: CGPoint(x: 910.5, y: 1508.92))
            p2MPath.addCurve(to: CGPoint(x: 817.11, y: 1548.04), control1: CGPoint(x: 910.5, y: 1508.92), control2: CGPoint(x: 874.57, y: 1550.18))
            p2MPath.addCurve(to: CGPoint(x: 679.5, y: 1438.52), control1: CGPoint(x: 760.29, y: 1545.92), control2: CGPoint(x: 677.05, y: 1487.14))
            p2MPath.addCurve(to: CGPoint(x: 930.16, y: 1387.67), control1: CGPoint(x: 684.41, y: 1340.73), control2: CGPoint(x: 930.16, y: 1387.67))
            
            
            
            //// p2End Drawing
            
            p2EndPath.move(to: CGPoint(x: 967.58, y: 1411.38))
            p2EndPath.addLine(to: CGPoint(x: 934.65, y: 1411.38))
            p2EndPath.addLine(to: CGPoint(x: 802.93, y: 1274.65))
            p2EndPath.addLine(to: CGPoint(x: 936.43, y: 1276.53))
            p2EndPath.addLine(to: CGPoint(x: 967.58, y: 1411.38))
            p2EndPath.closeSubpath()
            
            
            //// p3End Drawing
            p3EndPath.move(to: CGPoint(x: 630.22, y: 1274.65))
            p3EndPath.addLine(to: CGPoint(x: 555.96, y: 1137.91))
            p3EndPath.addLine(to: CGPoint(x: 716.87, y: 1224.93))
            p3EndPath.addLine(to: CGPoint(x: 630.22, y: 1274.65))
            p3EndPath.closeSubpath()
            
            
            
            
            parts = [p1Path,p2Path,p3Path]
            paths = [p1MPath,p2MPath,p3MPath]
            ends = [p1EndPath,p2EndPath,p3EndPath]
            
            break
            
            
        case 2 :
            
            
            
            //// p1 Drawing
            
            p1Path.move(to: CGPoint(x: 1163.31, y: 623.03))
            p1Path.addCurve(to: CGPoint(x: 1163.31, y: 795.96), control1: CGPoint(x: 1163.31, y: 623.03), control2: CGPoint(x: 1159.87, y: 738.26))
            p1Path.addCurve(to: CGPoint(x: 1100.26, y: 928.75), control1: CGPoint(x: 1166.82, y: 854.64), control2: CGPoint(x: 1100.26, y: 928.75))
            p1Path.addLine(to: CGPoint(x: 1180.83, y: 1058.45))
            p1Path.addCurve(to: CGPoint(x: 1261.4, y: 675.53), control1: CGPoint(x: 1180.83, y: 1058.45), control2: CGPoint(x: 1341.97, y: 817.58))
            p1Path.addCurve(to: CGPoint(x: 1163.31, y: 623.03), control1: CGPoint(x: 1241.26, y: 640.01), control2: CGPoint(x: 1163.31, y: 623.03))
            p1Path.closeSubpath()
            
            
            //// p1End Drawing
            
            p1EndPath.move(to: CGPoint(x: 1134.04, y: 624.47))
            p1EndPath.addLine(to: CGPoint(x: 1271.73, y: 604.5))
            p1EndPath.addLine(to: CGPoint(x: 1285.5, y: 784.19))
            p1EndPath.addLine(to: CGPoint(x: 1127.15, y: 784.19))
            p1EndPath.addLine(to: CGPoint(x: 1134.04, y: 624.47))
            p1EndPath.closeSubpath()
            
            
            //// p1M Drawing
            p1MPath.move(to: CGPoint(x: 1187.83, y: 968.9))
            p1MPath.addCurve(to: CGPoint(x: 1250.89, y: 783.61), control1: CGPoint(x: 1187.83, y: 968.9), control2: CGPoint(x: 1257.89, y: 826.84))
            p1MPath.addCurve(to: CGPoint(x: 1233.37, y: 728.02), control1: CGPoint(x: 1243.88, y: 740.38), control2: CGPoint(x: 1233.37, y: 728.02))
            
            
            
            //// p2 Drawing
            p2Path.move(to: CGPoint(x: 1163.31, y: 805.23))
            p2Path.addLine(to: CGPoint(x: 1278.91, y: 805.23))
            p2Path.addCurve(to: CGPoint(x: 1173.82, y: 623.03), control1: CGPoint(x: 1278.91, y: 805.23), control2: CGPoint(x: 1321.03, y: 648.98))
            p2Path.addCurve(to: CGPoint(x: 813.01, y: 604.5), control1: CGPoint(x: 1103.76, y: 610.68), control2: CGPoint(x: 953.13, y: 604.5))
            p2Path.addCurve(to: CGPoint(x: 375.13, y: 647.73), control1: CGPoint(x: 658.72, y: 604.5), control2: CGPoint(x: 466.92, y: 626.69))
            p2Path.addCurve(to: CGPoint(x: 242.01, y: 811.4), control1: CGPoint(x: 199.97, y: 687.88), control2: CGPoint(x: 242.01, y: 811.4))
            p2Path.addLine(to: CGPoint(x: 382.13, y: 811.4))
            p2Path.addCurve(to: CGPoint(x: 813.01, y: 761.99), control1: CGPoint(x: 382.13, y: 811.4), control2: CGPoint(x: 431.17, y: 768.17))
            p2Path.addCurve(to: CGPoint(x: 1163.31, y: 805.23), control1: CGPoint(x: 1194.84, y: 755.82), control2: CGPoint(x: 1163.31, y: 805.23))
            p2Path.closeSubpath()
            
            
            //// p2M Drawing
            p2MPath.move(to: CGPoint(x: 1236.88, y: 718.76))
            p2MPath.addCurve(to: CGPoint(x: 735.94, y: 663.17), control1: CGPoint(x: 1236.88, y: 718.76), control2: CGPoint(x: 1012.68, y: 653.91))
            p2MPath.addCurve(to: CGPoint(x: 329.59, y: 752.73), control1: CGPoint(x: 459.2, y: 672.44), control2: CGPoint(x: 329.59, y: 752.73))
            
            
            //// p2End Drawing
            p2EndPath.move(to: CGPoint(x: 273.54, y: 697.14))
            p2EndPath.addLine(to: CGPoint(x: 396.14, y: 792.87))
            p2EndPath.addLine(to: CGPoint(x: 369.87, y: 819.12))
            p2EndPath.addLine(to: CGPoint(x: 231.5, y: 743.46))
            p2EndPath.addLine(to: CGPoint(x: 273.54, y: 697.14))
            p2EndPath.closeSubpath()
            
            
            //// p3 Drawing
            p3Path.move(to: CGPoint(x: 361.11, y: 653.91))
            p3Path.addCurve(to: CGPoint(x: 291.05, y: 938.02), control1: CGPoint(x: 361.11, y: 653.91), control2: CGPoint(x: 136.92, y: 684.79))
            p3Path.addCurve(to: CGPoint(x: 420.66, y: 984.34), control1: CGPoint(x: 367.32, y: 1063.32), control2: CGPoint(x: 465.27, y: 1035.76))
            p3Path.addCurve(to: CGPoint(x: 357.61, y: 876.25), control1: CGPoint(x: 375.13, y: 931.84), control2: CGPoint(x: 357.61, y: 876.25))
            p3Path.addCurve(to: CGPoint(x: 382.13, y: 814.49), control1: CGPoint(x: 357.61, y: 876.25), control2: CGPoint(x: 333.09, y: 833.02))
            p3Path.addCurve(to: CGPoint(x: 361.11, y: 653.91), control1: CGPoint(x: 431.17, y: 795.96), control2: CGPoint(x: 361.11, y: 653.91))
            p3Path.closeSubpath()
            
            
            //// p3M Drawing
            p3MPath.move(to: CGPoint(x: 319.08, y: 761.99))
            p3MPath.addCurve(to: CGPoint(x: 392.64, y: 987.43), control1: CGPoint(x: 319.08, y: 761.99), control2: CGPoint(x: 308.57, y: 888.61))
            
            
            
            
            //// p3End Drawing
            p3EndPath.addRect(CGRect(x: 347.5, y: 961.5, width: 90, height: 69))
            
            
            
            
            
            
            
            
            p4Path.move(to: CGPoint(x: 797.11, y: 560.5))
            p4Path.addLine(to: CGPoint(x: 725.5, y: 497.23))
            p4Path.addLine(to: CGPoint(x: 797.11, y: 433.5))
            p4Path.addLine(to: CGPoint(x: 873.5, y: 497.23))
            p4Path.addLine(to: CGPoint(x: 797.11, y: 560.5))
            p4Path.addLine(to: CGPoint(x: 797.11, y: 560.5))
            p4Path.addLine(to: CGPoint(x: 797.11, y: 560.5))
            p4MPath.move(to: CGPoint(x: 873.5, y: 497.23))
            p4EndPath = p4Path
            
            
            
            
            /////
            parts = [p1Path,p2Path,p3Path,p4Path]
            ends = [p1EndPath,p2EndPath,p3EndPath,p4EndPath]
            paths = [p1MPath,p2MPath,p3MPath,p4MPath]
            
            break
            
        case 3  :
            
            
            //// p1 Drawing
            
            p1Path.move(to: CGPoint(x: 1163.31, y: 623.03))
            p1Path.addCurve(to: CGPoint(x: 1163.31, y: 795.96), control1: CGPoint(x: 1163.31, y: 623.03), control2: CGPoint(x: 1159.87, y: 738.26))
            p1Path.addCurve(to: CGPoint(x: 1100.26, y: 928.75), control1: CGPoint(x: 1166.82, y: 854.64), control2: CGPoint(x: 1100.26, y: 928.75))
            p1Path.addLine(to: CGPoint(x: 1180.83, y: 1058.45))
            p1Path.addCurve(to: CGPoint(x: 1261.4, y: 675.53), control1: CGPoint(x: 1180.83, y: 1058.45), control2: CGPoint(x: 1341.97, y: 817.58))
            p1Path.addCurve(to: CGPoint(x: 1163.31, y: 623.03), control1: CGPoint(x: 1241.26, y: 640.01), control2: CGPoint(x: 1163.31, y: 623.03))
            p1Path.closeSubpath()
            
            
            //// p1End Drawing
            
            p1EndPath.move(to: CGPoint(x: 1134.04, y: 624.47))
            p1EndPath.addLine(to: CGPoint(x: 1271.73, y: 604.5))
            p1EndPath.addLine(to: CGPoint(x: 1285.5, y: 784.19))
            p1EndPath.addLine(to: CGPoint(x: 1127.15, y: 784.19))
            p1EndPath.addLine(to: CGPoint(x: 1134.04, y: 624.47))
            p1EndPath.closeSubpath()
            
            
            //// p1M Drawing
            p1MPath.move(to: CGPoint(x: 1187.83, y: 968.9))
            p1MPath.addCurve(to: CGPoint(x: 1250.89, y: 783.61), control1: CGPoint(x: 1187.83, y: 968.9), control2: CGPoint(x: 1257.89, y: 826.84))
            p1MPath.addCurve(to: CGPoint(x: 1233.37, y: 728.02), control1: CGPoint(x: 1243.88, y: 740.38), control2: CGPoint(x: 1233.37, y: 728.02))
            
            
            
            //// p2 Drawing
            p2Path.move(to: CGPoint(x: 1163.31, y: 805.23))
            p2Path.addLine(to: CGPoint(x: 1278.91, y: 805.23))
            p2Path.addCurve(to: CGPoint(x: 1173.82, y: 623.03), control1: CGPoint(x: 1278.91, y: 805.23), control2: CGPoint(x: 1321.03, y: 648.98))
            p2Path.addCurve(to: CGPoint(x: 813.01, y: 604.5), control1: CGPoint(x: 1103.76, y: 610.68), control2: CGPoint(x: 953.13, y: 604.5))
            p2Path.addCurve(to: CGPoint(x: 375.13, y: 647.73), control1: CGPoint(x: 658.72, y: 604.5), control2: CGPoint(x: 466.92, y: 626.69))
            p2Path.addCurve(to: CGPoint(x: 242.01, y: 811.4), control1: CGPoint(x: 199.97, y: 687.88), control2: CGPoint(x: 242.01, y: 811.4))
            p2Path.addLine(to: CGPoint(x: 382.13, y: 811.4))
            p2Path.addCurve(to: CGPoint(x: 813.01, y: 761.99), control1: CGPoint(x: 382.13, y: 811.4), control2: CGPoint(x: 431.17, y: 768.17))
            p2Path.addCurve(to: CGPoint(x: 1163.31, y: 805.23), control1: CGPoint(x: 1194.84, y: 755.82), control2: CGPoint(x: 1163.31, y: 805.23))
            p2Path.closeSubpath()
            
            
            //// p2M Drawing
            p2MPath.move(to: CGPoint(x: 1236.88, y: 718.76))
            p2MPath.addCurve(to: CGPoint(x: 735.94, y: 663.17), control1: CGPoint(x: 1236.88, y: 718.76), control2: CGPoint(x: 1012.68, y: 653.91))
            p2MPath.addCurve(to: CGPoint(x: 329.59, y: 752.73), control1: CGPoint(x: 459.2, y: 672.44), control2: CGPoint(x: 329.59, y: 752.73))
            
            
            //// p2End Drawing
            p2EndPath.move(to: CGPoint(x: 273.54, y: 697.14))
            p2EndPath.addLine(to: CGPoint(x: 396.14, y: 792.87))
            p2EndPath.addLine(to: CGPoint(x: 369.87, y: 819.12))
            p2EndPath.addLine(to: CGPoint(x: 231.5, y: 743.46))
            p2EndPath.addLine(to: CGPoint(x: 273.54, y: 697.14))
            p2EndPath.closeSubpath()
            
            
            //// p3 Drawing
            p3Path.move(to: CGPoint(x: 361.11, y: 653.91))
            p3Path.addCurve(to: CGPoint(x: 291.05, y: 938.02), control1: CGPoint(x: 361.11, y: 653.91), control2: CGPoint(x: 136.92, y: 684.79))
            p3Path.addCurve(to: CGPoint(x: 420.66, y: 984.34), control1: CGPoint(x: 367.32, y: 1063.32), control2: CGPoint(x: 465.27, y: 1035.76))
            p3Path.addCurve(to: CGPoint(x: 357.61, y: 876.25), control1: CGPoint(x: 375.13, y: 931.84), control2: CGPoint(x: 357.61, y: 876.25))
            p3Path.addCurve(to: CGPoint(x: 382.13, y: 814.49), control1: CGPoint(x: 357.61, y: 876.25), control2: CGPoint(x: 333.09, y: 833.02))
            p3Path.addCurve(to: CGPoint(x: 361.11, y: 653.91), control1: CGPoint(x: 431.17, y: 795.96), control2: CGPoint(x: 361.11, y: 653.91))
            p3Path.closeSubpath()
            
            
            //// p3M Drawing
            p3MPath.move(to: CGPoint(x: 319.08, y: 761.99))
            p3MPath.addCurve(to: CGPoint(x: 392.64, y: 987.43), control1: CGPoint(x: 319.08, y: 761.99), control2: CGPoint(x: 308.57, y: 888.61))
            
            
            
            
            //// p3End Drawing
            p3EndPath.addRect(CGRect(x: 347.5, y: 961.5, width: 90, height: 69))
            
            
            
            
            //// p5 Drawing
            p5Path.move(to: CGPoint(x: 698.65, y: 1181.98))
            p5Path.addLine(to: CGPoint(x: 630.85, y: 1121.98))
            p5Path.addLine(to: CGPoint(x: 698.65, y: 1058.45))
            p5Path.addLine(to: CGPoint(x: 770.97, y: 1121.98))
            p5Path.addLine(to: CGPoint(x: 698.65, y: 1181.98))
            p5Path.addLine(to: CGPoint(x: 698.65, y: 1181.98))
            p5Path.addLine(to: CGPoint(x: 698.65, y: 1181.98))
            p5MPath.move(to: CGPoint(x: 698.65, y: 1058.45))
            p5EndPath = p5Path
            
            
            
            
            //// p4 Drawing
            p4Path.move(to: CGPoint(x: 880.81, y: 1181.98))
            p4Path.addLine(to: CGPoint(x: 813.01, y: 1121.98))
            p4Path.addLine(to: CGPoint(x: 880.81, y: 1058.45))
            p4Path.addLine(to: CGPoint(x: 953.13, y: 1121.98))
            p4Path.addLine(to: CGPoint(x: 880.81, y: 1181.98))
            p4Path.addLine(to: CGPoint(x: 880.81, y: 1181.98))
            p4Path.addLine(to: CGPoint(x: 880.81, y: 1181.98))
            
            p4MPath.move(to: CGPoint(x: 880.81, y: 1058.45))
            p4EndPath = p4Path
            
            
            
            
            
            
            
            parts = [p1Path,p2Path,p3Path,p4Path,p5Path]
            paths = [p1MPath,p2MPath,p3MPath,p4MPath,p5MPath]
            ends = [p1EndPath,p2EndPath,p3EndPath,p4EndPath,p5EndPath]
            
            
            
            
            
            
            break
            
        case 4 :
            
            
            //// p1 Drawing
            
            p1Path.move(to: CGPoint(x: 1163.31, y: 623.03))
            p1Path.addCurve(to: CGPoint(x: 1163.31, y: 795.96), control1: CGPoint(x: 1163.31, y: 623.03), control2: CGPoint(x: 1159.87, y: 738.26))
            p1Path.addCurve(to: CGPoint(x: 1100.26, y: 928.75), control1: CGPoint(x: 1166.82, y: 854.64), control2: CGPoint(x: 1100.26, y: 928.75))
            p1Path.addLine(to: CGPoint(x: 1180.83, y: 1058.45))
            p1Path.addCurve(to: CGPoint(x: 1261.4, y: 675.53), control1: CGPoint(x: 1180.83, y: 1058.45), control2: CGPoint(x: 1341.97, y: 817.58))
            p1Path.addCurve(to: CGPoint(x: 1163.31, y: 623.03), control1: CGPoint(x: 1241.26, y: 640.01), control2: CGPoint(x: 1163.31, y: 623.03))
            p1Path.closeSubpath()
            
            
            //// p1End Drawing
            
            p1EndPath.move(to: CGPoint(x: 1134.04, y: 624.47))
            p1EndPath.addLine(to: CGPoint(x: 1271.73, y: 604.5))
            p1EndPath.addLine(to: CGPoint(x: 1285.5, y: 784.19))
            p1EndPath.addLine(to: CGPoint(x: 1127.15, y: 784.19))
            p1EndPath.addLine(to: CGPoint(x: 1134.04, y: 624.47))
            p1EndPath.closeSubpath()
            
            
            //// p1M Drawing
            p1MPath.move(to: CGPoint(x: 1187.83, y: 968.9))
            p1MPath.addCurve(to: CGPoint(x: 1250.89, y: 783.61), control1: CGPoint(x: 1187.83, y: 968.9), control2: CGPoint(x: 1257.89, y: 826.84))
            p1MPath.addCurve(to: CGPoint(x: 1233.37, y: 728.02), control1: CGPoint(x: 1243.88, y: 740.38), control2: CGPoint(x: 1233.37, y: 728.02))
            
            
            
            //// p2 Drawing
            p2Path.move(to: CGPoint(x: 1163.31, y: 805.23))
            p2Path.addLine(to: CGPoint(x: 1278.91, y: 805.23))
            p2Path.addCurve(to: CGPoint(x: 1173.82, y: 623.03), control1: CGPoint(x: 1278.91, y: 805.23), control2: CGPoint(x: 1321.03, y: 648.98))
            p2Path.addCurve(to: CGPoint(x: 813.01, y: 604.5), control1: CGPoint(x: 1103.76, y: 610.68), control2: CGPoint(x: 953.13, y: 604.5))
            p2Path.addCurve(to: CGPoint(x: 375.13, y: 647.73), control1: CGPoint(x: 658.72, y: 604.5), control2: CGPoint(x: 466.92, y: 626.69))
            p2Path.addCurve(to: CGPoint(x: 242.01, y: 811.4), control1: CGPoint(x: 199.97, y: 687.88), control2: CGPoint(x: 242.01, y: 811.4))
            p2Path.addLine(to: CGPoint(x: 382.13, y: 811.4))
            p2Path.addCurve(to: CGPoint(x: 813.01, y: 761.99), control1: CGPoint(x: 382.13, y: 811.4), control2: CGPoint(x: 431.17, y: 768.17))
            p2Path.addCurve(to: CGPoint(x: 1163.31, y: 805.23), control1: CGPoint(x: 1194.84, y: 755.82), control2: CGPoint(x: 1163.31, y: 805.23))
            p2Path.closeSubpath()
            
            
            //// p2M Drawing
            p2MPath.move(to: CGPoint(x: 1236.88, y: 718.76))
            p2MPath.addCurve(to: CGPoint(x: 735.94, y: 663.17), control1: CGPoint(x: 1236.88, y: 718.76), control2: CGPoint(x: 1012.68, y: 653.91))
            p2MPath.addCurve(to: CGPoint(x: 329.59, y: 752.73), control1: CGPoint(x: 459.2, y: 672.44), control2: CGPoint(x: 329.59, y: 752.73))
            
            
            //// p2End Drawing
            p2EndPath.move(to: CGPoint(x: 273.54, y: 697.14))
            p2EndPath.addLine(to: CGPoint(x: 396.14, y: 792.87))
            p2EndPath.addLine(to: CGPoint(x: 369.87, y: 819.12))
            p2EndPath.addLine(to: CGPoint(x: 231.5, y: 743.46))
            p2EndPath.addLine(to: CGPoint(x: 273.54, y: 697.14))
            p2EndPath.closeSubpath()
            
            
            //// p3 Drawing
            p3Path.move(to: CGPoint(x: 361.11, y: 653.91))
            p3Path.addCurve(to: CGPoint(x: 291.05, y: 938.02), control1: CGPoint(x: 361.11, y: 653.91), control2: CGPoint(x: 136.92, y: 684.79))
            p3Path.addCurve(to: CGPoint(x: 420.66, y: 984.34), control1: CGPoint(x: 367.32, y: 1063.32), control2: CGPoint(x: 465.27, y: 1035.76))
            p3Path.addCurve(to: CGPoint(x: 357.61, y: 876.25), control1: CGPoint(x: 375.13, y: 931.84), control2: CGPoint(x: 357.61, y: 876.25))
            p3Path.addCurve(to: CGPoint(x: 382.13, y: 814.49), control1: CGPoint(x: 357.61, y: 876.25), control2: CGPoint(x: 333.09, y: 833.02))
            p3Path.addCurve(to: CGPoint(x: 361.11, y: 653.91), control1: CGPoint(x: 431.17, y: 795.96), control2: CGPoint(x: 361.11, y: 653.91))
            p3Path.closeSubpath()
            
            
            //// p3M Drawing
            p3MPath.move(to: CGPoint(x: 319.08, y: 761.99))
            p3MPath.addCurve(to: CGPoint(x: 392.64, y: 987.43), control1: CGPoint(x: 319.08, y: 761.99), control2: CGPoint(x: 308.57, y: 888.61))
            
            
            
            
            //// p3End Drawing
            p3EndPath.addRect(CGRect(x: 347.5, y: 961.5, width: 90, height: 69))
            
            
            
            //// p5 Drawing
            
            p5Path.move(to: CGPoint(x: 698.65, y: 1181.98))
            p5Path.addLine(to: CGPoint(x: 630.85, y: 1121.98))
            p5Path.addLine(to: CGPoint(x: 698.65, y: 1058.45))
            p5Path.addLine(to: CGPoint(x: 770.97, y: 1121.98))
            p5Path.addLine(to: CGPoint(x: 698.65, y: 1181.98))
            p5Path.addLine(to: CGPoint(x: 698.65, y: 1181.98))
            p5Path.addLine(to: CGPoint(x: 698.65, y: 1181.98))
            p5MPath.move(to: CGPoint(x: 698.65, y: 1058.45))
            p5EndPath = p5Path
            
            
            //// p4 Drawing
            p4Path.move(to: CGPoint(x: 880.81, y: 1181.98))
            p4Path.addLine(to: CGPoint(x: 813.01, y: 1121.98))
            p4Path.addLine(to: CGPoint(x: 880.81, y: 1058.45))
            p4Path.addLine(to: CGPoint(x: 953.13, y: 1121.98))
            p4Path.addLine(to: CGPoint(x: 880.81, y: 1181.98))
            p4Path.addLine(to: CGPoint(x: 880.81, y: 1181.98))
            p4Path.addLine(to: CGPoint(x: 880.81, y: 1181.98))
            
            p4MPath.move(to: CGPoint(x: 880.81, y: 1058.45))
            p4EndPath = p4Path
            
            
            
            //// p6 Drawing
            p6Path.move(to: CGPoint(x: 782.72, y: 1305.5))
            p6Path.addLine(to: CGPoint(x: 714.92, y: 1245.5))
            p6Path.addLine(to: CGPoint(x: 782.72, y: 1181.98))
            p6Path.addLine(to: CGPoint(x: 855.04, y: 1245.5))
            p6Path.addLine(to: CGPoint(x: 782.72, y: 1305.5))
            p6Path.addLine(to: CGPoint(x: 782.72, y: 1305.5))
            p6Path.addLine(to: CGPoint(x: 782.72, y: 1305.5))
            
            p6MPath.move(to: CGPoint(x: 782.72, y: 1181.98))
            p6EndPath = p6Path
            
            
            parts = [p1Path,p2Path,p3Path,p4Path,p5Path,p6Path]
            paths = [p1MPath,p2MPath,p3MPath,p4MPath,p5MPath,p6MPath]
            ends = [p1EndPath,p2EndPath,p3EndPath,p4EndPath,p5EndPath,p6EndPath]
            
            
            break
        case 5 :
            
            p1Path.move(to: CGPoint(x: 436.95, y: 1151.98))
            p1Path.addCurve(to: CGPoint(x: 474.41, y: 1244.41), control1: CGPoint(x: 436.95, y: 1151.98), control2: CGPoint(x: 413.9, y: 1140.78))
            p1Path.addCurve(to: CGPoint(x: 736.61, y: 1306.03), control1: CGPoint(x: 534.92, y: 1348.04), control2: CGPoint(x: 655.93, y: 1328.43))
            p1Path.addCurve(to: CGPoint(x: 1030.5, y: 1280.82), control1: CGPoint(x: 817.28, y: 1283.62), control2: CGPoint(x: 1030.5, y: 1280.82))
            p1Path.addLine(to: CGPoint(x: 952.7, y: 1137.98))
            p1Path.addLine(to: CGPoint(x: 687.63, y: 1188.39))
            p1Path.addCurve(to: CGPoint(x: 563.73, y: 1196.79), control1: CGPoint(x: 687.63, y: 1188.39), control2: CGPoint(x: 609.83, y: 1196.79))
            p1Path.addCurve(to: CGPoint(x: 436.95, y: 1151.98), control1: CGPoint(x: 517.63, y: 1196.79), control2: CGPoint(x: 436.95, y: 1151.98))
            p1Path.closeSubpath()
            
            //// p1M Drawing
            p1MPath.move(to: CGPoint(x: 491.7, y: 1210.8))
            p1MPath.addCurve(to: CGPoint(x: 710.68, y: 1250.01), control1: CGPoint(x: 491.7, y: 1210.8), control2: CGPoint(x: 583.9, y: 1297.62))
            p1MPath.addCurve(to: CGPoint(x: 964.23, y: 1210.8), control1: CGPoint(x: 837.45, y: 1202.4), control2: CGPoint(x: 964.23, y: 1210.8))
            
            
            
            //// p1End Drawing
            p1EndPath.addRect(CGRect(x: 926, y: 1139, width: 104.5, height: 146.5))
            
            
            
            //// p2 Drawing
            p2Path.move(to: CGPoint(x: 687.63, y: 1188.39))
            p2Path.addLine(to: CGPoint(x: 1030.5, y: 1280.82))
            p2Path.addLine(to: CGPoint(x: 949.82, y: 1137.98))
            p2Path.addCurve(to: CGPoint(x: 630, y: 1025.95), control1: CGPoint(x: 949.82, y: 1137.98), control2: CGPoint(x: 756.78, y: 1177.19))
            p2Path.addCurve(to: CGPoint(x: 684.74, y: 650.64), control1: CGPoint(x: 503.22, y: 874.7), control2: CGPoint(x: 601.19, y: 715.06))
            p2Path.addCurve(to: CGPoint(x: 1047.79, y: 650.64), control1: CGPoint(x: 768.3, y: 586.22), control2: CGPoint(x: 967.11, y: 611.43))
            p2Path.addCurve(to: CGPoint(x: 1168.8, y: 673.05), control1: CGPoint(x: 1128.46, y: 689.85), control2: CGPoint(x: 1212.02, y: 740.27))
            p2Path.addCurve(to: CGPoint(x: 650.17, y: 485.39), control1: CGPoint(x: 1125.58, y: 605.83), control2: CGPoint(x: 955.58, y: 434.98))
            p2Path.addCurve(to: CGPoint(x: 431.19, y: 743.07), control1: CGPoint(x: 500.72, y: 510.06), control2: CGPoint(x: 440.26, y: 654.56))
            p2Path.addCurve(to: CGPoint(x: 465.77, y: 975.53), control1: CGPoint(x: 421.73, y: 835.43), control2: CGPoint(x: 439.28, y: 909.74))
            p2Path.addCurve(to: CGPoint(x: 687.63, y: 1188.39), control1: CGPoint(x: 517.63, y: 1104.37), control2: CGPoint(x: 687.63, y: 1188.39))
            p2Path.closeSubpath()
            
            
            //// p2M Drawing
            p2MPath.move(to: CGPoint(x: 860.5, y: 1193.99))
            p2MPath.addCurve(to: CGPoint(x: 488.82, y: 843.9), control1: CGPoint(x: 860.5, y: 1193.99), control2: CGPoint(x: 485.94, y: 1118.37))
            p2MPath.addCurve(to: CGPoint(x: 673.22, y: 558.22), control1: CGPoint(x: 489.86, y: 744.36), control2: CGPoint(x: 570.88, y: 585.97))
            p2MPath.addCurve(to: CGPoint(x: 1099.65, y: 645.04), control1: CGPoint(x: 853.08, y: 509.43), control2: CGPoint(x: 1099.65, y: 645.04))
            
            
            
            //// p2End Drawing
            p2EndPath.addRect(CGRect(x: 1061.5, y: 618.5, width: 119, height: 101))
            
            
            
            
            
            //// p3 Drawing
            p3Path.move(to: CGPoint(x: 843.54, y: 958.5))
            p3Path.addLine(to: CGPoint(x: 766.5, y: 881.46))
            p3Path.addLine(to: CGPoint(x: 843.54, y: 798.5))
            p3Path.addLine(to: CGPoint(x: 926.5, y: 881.46))
            p3Path.addLine(to: CGPoint(x: 843.54, y: 958.5))
            p3Path.addLine(to: CGPoint(x: 843.54, y: 958.5))
            p3MPath.move(to: CGPoint(x: 843.54, y: 798.5))
            p3EndPath = p3Path
            ////////
            parts = [p1Path,p2Path,p3Path]
            ends = [p1EndPath,p2EndPath,p3EndPath]
            paths = [p1MPath,p2MPath,p3MPath]
            
            break
        case 6 :
            //// p1 Drawing
            
            p1Path.move(to: CGPoint(x: 436.95, y: 1151.98))
            p1Path.addCurve(to: CGPoint(x: 474.41, y: 1244.41), control1: CGPoint(x: 436.95, y: 1151.98), control2: CGPoint(x: 413.9, y: 1140.78))
            p1Path.addCurve(to: CGPoint(x: 736.61, y: 1306.03), control1: CGPoint(x: 534.92, y: 1348.04), control2: CGPoint(x: 655.93, y: 1328.43))
            p1Path.addCurve(to: CGPoint(x: 1030.5, y: 1280.82), control1: CGPoint(x: 817.28, y: 1283.62), control2: CGPoint(x: 1030.5, y: 1280.82))
            p1Path.addLine(to: CGPoint(x: 952.7, y: 1137.98))
            p1Path.addLine(to: CGPoint(x: 687.63, y: 1188.39))
            p1Path.addCurve(to: CGPoint(x: 563.73, y: 1196.79), control1: CGPoint(x: 687.63, y: 1188.39), control2: CGPoint(x: 609.83, y: 1196.79))
            p1Path.addCurve(to: CGPoint(x: 436.95, y: 1151.98), control1: CGPoint(x: 517.63, y: 1196.79), control2: CGPoint(x: 436.95, y: 1151.98))
            p1Path.closeSubpath()
            
            //// p1M Drawing
            p1MPath.move(to: CGPoint(x: 491.7, y: 1210.8))
            p1MPath.addCurve(to: CGPoint(x: 710.68, y: 1250.01), control1: CGPoint(x: 491.7, y: 1210.8), control2: CGPoint(x: 583.9, y: 1297.62))
            p1MPath.addCurve(to: CGPoint(x: 964.23, y: 1210.8), control1: CGPoint(x: 837.45, y: 1202.4), control2: CGPoint(x: 964.23, y: 1210.8))
            
            
            
            //// p1End Drawing
            p1EndPath.addRect(CGRect(x: 926, y: 1139, width: 104.5, height: 146.5))
            
            
            
            //// p2 Drawing
            p2Path.move(to: CGPoint(x: 687.63, y: 1188.39))
            p2Path.addLine(to: CGPoint(x: 1030.5, y: 1280.82))
            p2Path.addLine(to: CGPoint(x: 949.82, y: 1137.98))
            p2Path.addCurve(to: CGPoint(x: 630, y: 1025.95), control1: CGPoint(x: 949.82, y: 1137.98), control2: CGPoint(x: 756.78, y: 1177.19))
            p2Path.addCurve(to: CGPoint(x: 684.74, y: 650.64), control1: CGPoint(x: 503.22, y: 874.7), control2: CGPoint(x: 601.19, y: 715.06))
            p2Path.addCurve(to: CGPoint(x: 1047.79, y: 650.64), control1: CGPoint(x: 768.3, y: 586.22), control2: CGPoint(x: 967.11, y: 611.43))
            p2Path.addCurve(to: CGPoint(x: 1168.8, y: 673.05), control1: CGPoint(x: 1128.46, y: 689.85), control2: CGPoint(x: 1212.02, y: 740.27))
            p2Path.addCurve(to: CGPoint(x: 650.17, y: 485.39), control1: CGPoint(x: 1125.58, y: 605.83), control2: CGPoint(x: 955.58, y: 434.98))
            p2Path.addCurve(to: CGPoint(x: 431.19, y: 743.07), control1: CGPoint(x: 500.72, y: 510.06), control2: CGPoint(x: 440.26, y: 654.56))
            p2Path.addCurve(to: CGPoint(x: 465.77, y: 975.53), control1: CGPoint(x: 421.73, y: 835.43), control2: CGPoint(x: 439.28, y: 909.74))
            p2Path.addCurve(to: CGPoint(x: 687.63, y: 1188.39), control1: CGPoint(x: 517.63, y: 1104.37), control2: CGPoint(x: 687.63, y: 1188.39))
            p2Path.closeSubpath()
            
            
            //// p2M Drawing
            p2MPath.move(to: CGPoint(x: 860.5, y: 1193.99))
            p2MPath.addCurve(to: CGPoint(x: 488.82, y: 843.9), control1: CGPoint(x: 860.5, y: 1193.99), control2: CGPoint(x: 485.94, y: 1118.37))
            p2MPath.addCurve(to: CGPoint(x: 673.22, y: 558.22), control1: CGPoint(x: 489.86, y: 744.36), control2: CGPoint(x: 570.88, y: 585.97))
            p2MPath.addCurve(to: CGPoint(x: 1099.65, y: 645.04), control1: CGPoint(x: 853.08, y: 509.43), control2: CGPoint(x: 1099.65, y: 645.04))
            
            
            
            //// p2End Drawing
            p2EndPath.addRect(CGRect(x: 1061.5, y: 618.5, width: 119, height: 101))
            
            
            
            
            
            ////////
            parts = [p1Path,p2Path]
            ends = [p1EndPath,p2EndPath]
            paths = [p1MPath,p2MPath]
            
            
            break
        case 7 :
            
            p1Path.move(to: CGPoint(x: 436.95, y: 1151.98))
            p1Path.addCurve(to: CGPoint(x: 474.41, y: 1244.41), control1: CGPoint(x: 436.95, y: 1151.98), control2: CGPoint(x: 413.9, y: 1140.78))
            p1Path.addCurve(to: CGPoint(x: 736.61, y: 1306.03), control1: CGPoint(x: 534.92, y: 1348.04), control2: CGPoint(x: 655.93, y: 1328.43))
            p1Path.addCurve(to: CGPoint(x: 1030.5, y: 1280.82), control1: CGPoint(x: 817.28, y: 1283.62), control2: CGPoint(x: 1030.5, y: 1280.82))
            p1Path.addLine(to: CGPoint(x: 952.7, y: 1137.98))
            p1Path.addLine(to: CGPoint(x: 687.63, y: 1188.39))
            p1Path.addCurve(to: CGPoint(x: 563.73, y: 1196.79), control1: CGPoint(x: 687.63, y: 1188.39), control2: CGPoint(x: 609.83, y: 1196.79))
            p1Path.addCurve(to: CGPoint(x: 436.95, y: 1151.98), control1: CGPoint(x: 517.63, y: 1196.79), control2: CGPoint(x: 436.95, y: 1151.98))
            p1Path.closeSubpath()
            
            //// p1M Drawing
            p1MPath.move(to: CGPoint(x: 491.7, y: 1210.8))
            p1MPath.addCurve(to: CGPoint(x: 710.68, y: 1250.01), control1: CGPoint(x: 491.7, y: 1210.8), control2: CGPoint(x: 583.9, y: 1297.62))
            p1MPath.addCurve(to: CGPoint(x: 964.23, y: 1210.8), control1: CGPoint(x: 837.45, y: 1202.4), control2: CGPoint(x: 964.23, y: 1210.8))
            
            
            
            //// p1End Drawing
            p1EndPath.addRect(CGRect(x: 926, y: 1139, width: 104.5, height: 146.5))
            
            
            
            //// p2 Drawing
            p2Path.move(to: CGPoint(x: 687.63, y: 1188.39))
            p2Path.addLine(to: CGPoint(x: 1030.5, y: 1280.82))
            p2Path.addLine(to: CGPoint(x: 949.82, y: 1137.98))
            p2Path.addCurve(to: CGPoint(x: 630, y: 1025.95), control1: CGPoint(x: 949.82, y: 1137.98), control2: CGPoint(x: 756.78, y: 1177.19))
            p2Path.addCurve(to: CGPoint(x: 684.74, y: 650.64), control1: CGPoint(x: 503.22, y: 874.7), control2: CGPoint(x: 601.19, y: 715.06))
            p2Path.addCurve(to: CGPoint(x: 1047.79, y: 650.64), control1: CGPoint(x: 768.3, y: 586.22), control2: CGPoint(x: 967.11, y: 611.43))
            p2Path.addCurve(to: CGPoint(x: 1168.8, y: 673.05), control1: CGPoint(x: 1128.46, y: 689.85), control2: CGPoint(x: 1212.02, y: 740.27))
            p2Path.addCurve(to: CGPoint(x: 650.17, y: 485.39), control1: CGPoint(x: 1125.58, y: 605.83), control2: CGPoint(x: 955.58, y: 434.98))
            p2Path.addCurve(to: CGPoint(x: 431.19, y: 743.07), control1: CGPoint(x: 500.72, y: 510.06), control2: CGPoint(x: 440.26, y: 654.56))
            p2Path.addCurve(to: CGPoint(x: 465.77, y: 975.53), control1: CGPoint(x: 421.73, y: 835.43), control2: CGPoint(x: 439.28, y: 909.74))
            p2Path.addCurve(to: CGPoint(x: 687.63, y: 1188.39), control1: CGPoint(x: 517.63, y: 1104.37), control2: CGPoint(x: 687.63, y: 1188.39))
            p2Path.closeSubpath()
            
            
            //// p2M Drawing
            p2MPath.move(to: CGPoint(x: 860.5, y: 1193.99))
            p2MPath.addCurve(to: CGPoint(x: 488.82, y: 843.9), control1: CGPoint(x: 860.5, y: 1193.99), control2: CGPoint(x: 485.94, y: 1118.37))
            p2MPath.addCurve(to: CGPoint(x: 673.22, y: 558.22), control1: CGPoint(x: 489.86, y: 744.36), control2: CGPoint(x: 570.88, y: 585.97))
            p2MPath.addCurve(to: CGPoint(x: 1099.65, y: 645.04), control1: CGPoint(x: 853.08, y: 509.43), control2: CGPoint(x: 1099.65, y: 645.04))
            
            
            
            //// p2End Drawing
            p2EndPath.addRect(CGRect(x: 1061.5, y: 618.5, width: 119, height: 101))
            
            
            
            
            //// p3 Drawing
            p3Path.move(to: CGPoint(x: 843.54, y: 1551.5))
            p3Path.addLine(to: CGPoint(x: 766.5, y: 1474.46))
            p3Path.addLine(to: CGPoint(x: 843.54, y: 1391.5))
            p3Path.addLine(to: CGPoint(x: 926.5, y: 1474.46))
            p3Path.addLine(to: CGPoint(x: 843.54, y: 1551.5))
            p3Path.addLine(to: CGPoint(x: 843.54, y: 1551.5))
            p3MPath.move(to: CGPoint(x: 843.54, y: 1391.5))
            p3Path.addLine(to: CGPoint(x: 926.5, y: 1474.46))
            p3EndPath = p3Path
            ////////
            parts = [p1Path,p2Path,p3Path]
            ends = [p1EndPath,p2EndPath,p3EndPath]
            paths = [p1MPath,p2MPath,p3MPath]
            
            
            break
        case 8 :
            
            
            
            
            //// p2End Drawing
            p2EndPath.addRect(CGRect(x: 524, y: 496, width: 57, height: 178))
            
            
            
            //// p2 Drawing
            p2Path.move(to: CGPoint(x: 896.76, y: 624.22))
            p2Path.addCurve(to: CGPoint(x: 567.76, y: 622.85), control1: CGPoint(x: 896.76, y: 624.22), control2: CGPoint(x: 605.7, y: 565.03))
            p2Path.addCurve(to: CGPoint(x: 523.5, y: 551.27), control1: CGPoint(x: 529.82, y: 680.66), control2: CGPoint(x: 523.5, y: 686.17))
            p2Path.addCurve(to: CGPoint(x: 944, y: 508.59), control1: CGPoint(x: 523.5, y: 416.36), control2: CGPoint(x: 944, y: 508.59))
            p2Path.addCurve(to: CGPoint(x: 1003.85, y: 610.46), control1: CGPoint(x: 944, y: 508.59), control2: CGPoint(x: 1003.85, y: 530.62))
            p2Path.addCurve(to: CGPoint(x: 896.76, y: 624.22), control1: CGPoint(x: 1003.85, y: 636.88), control2: CGPoint(x: 896.76, y: 624.22))
            p2Path.closeSubpath()
            
            
            //// p1 Drawing
            p1Path.move(to: CGPoint(x: 942.43, y: 507.22))
            p1Path.addCurve(to: CGPoint(x: 970.78, y: 788.04), control1: CGPoint(x: 942.43, y: 507.22), control2: CGPoint(x: 1077.87, y: 589.81))
            p1Path.addCurve(to: CGPoint(x: 756.59, y: 903.67), control1: CGPoint(x: 863.68, y: 986.26), control2: CGPoint(x: 800.69, y: 966.99))
            p1Path.addCurve(to: CGPoint(x: 762.89, y: 829.33), control1: CGPoint(x: 712.49, y: 840.35), control2: CGPoint(x: 731.39, y: 799.05))
            p1Path.addCurve(to: CGPoint(x: 888.88, y: 628.35), control1: CGPoint(x: 794.39, y: 859.62), control2: CGPoint(x: 888.88, y: 628.35))
            p1Path.addLine(to: CGPoint(x: 942.43, y: 507.22))
            p1Path.closeSubpath()
            
            
            //// p1End Drawing
            p1EndPath.move(to: CGPoint(x: 914.08, y: 628.35))
            p1EndPath.addCurve(to: CGPoint(x: 1011.73, y: 581.55), control1: CGPoint(x: 1030.63, y: 598.07), control2: CGPoint(x: 1011.73, y: 581.55))
            p1EndPath.addLine(to: CGPoint(x: 961.33, y: 509.97))
            p1EndPath.addCurve(to: CGPoint(x: 914.08, y: 628.35), control1: CGPoint(x: 961.33, y: 509.97), control2: CGPoint(x: 797.54, y: 658.64))
            p1EndPath.closeSubpath()
            
            
            //// p1M Drawing
            p1MPath.move(to: CGPoint(x: 813.29, y: 876.14))
            p1MPath.addCurve(to: CGPoint(x: 942.43, y: 570.54), control1: CGPoint(x: 813.29, y: 876.14), control2: CGPoint(x: 977.08, y: 746.74))
            
            
            
            //// p2M Drawing
            
            p2MPath.move(to: CGPoint(x: 945.58, y: 573.29))
            p2MPath.addCurve(to: CGPoint(x: 551.85, y: 573.29), control1: CGPoint(x: 945.58, y: 573.29), control2: CGPoint(x: 709.34, y: 487.94))
            
            
            
            
            ////////
            parts = [p1Path,p2Path]
            ends = [p1EndPath,p2EndPath]
            paths = [p1MPath,p2MPath]
            
            break
        case 9 :
            //// p3 Drawing
            p3Path.move(to: CGPoint(x: 810.14, y: 1195.5))
            p3Path.addLine(to: CGPoint(x: 747.14, y: 1126.77))
            p3Path.addLine(to: CGPoint(x: 810.14, y: 1051.5))
            p3Path.addLine(to: CGPoint(x: 873.13, y: 1126.77))
            p3Path.addLine(to: CGPoint(x: 810.14, y: 1195.5))
            p3Path.closeSubpath()
            p3MPath.move(to: CGPoint(x: 810.14, y: 1051.5))
            p3EndPath = p3Path
            
            
            
            
            
            //// p2End Drawing
            p2EndPath.addRect(CGRect(x: 524, y: 496, width: 57, height: 178))
            
            
            
            //// p2 Drawing
            p2Path.move(to: CGPoint(x: 896.76, y: 624.22))
            p2Path.addCurve(to: CGPoint(x: 567.76, y: 622.85), control1: CGPoint(x: 896.76, y: 624.22), control2: CGPoint(x: 605.7, y: 565.03))
            p2Path.addCurve(to: CGPoint(x: 523.5, y: 551.27), control1: CGPoint(x: 529.82, y: 680.66), control2: CGPoint(x: 523.5, y: 686.17))
            p2Path.addCurve(to: CGPoint(x: 944, y: 508.59), control1: CGPoint(x: 523.5, y: 416.36), control2: CGPoint(x: 944, y: 508.59))
            p2Path.addCurve(to: CGPoint(x: 1003.85, y: 610.46), control1: CGPoint(x: 944, y: 508.59), control2: CGPoint(x: 1003.85, y: 530.62))
            p2Path.addCurve(to: CGPoint(x: 896.76, y: 624.22), control1: CGPoint(x: 1003.85, y: 636.88), control2: CGPoint(x: 896.76, y: 624.22))
            p2Path.closeSubpath()
            
            
            //// p1 Drawing
            p1Path.move(to: CGPoint(x: 942.43, y: 507.22))
            p1Path.addCurve(to: CGPoint(x: 970.78, y: 788.04), control1: CGPoint(x: 942.43, y: 507.22), control2: CGPoint(x: 1077.87, y: 589.81))
            p1Path.addCurve(to: CGPoint(x: 756.59, y: 903.67), control1: CGPoint(x: 863.68, y: 986.26), control2: CGPoint(x: 800.69, y: 966.99))
            p1Path.addCurve(to: CGPoint(x: 762.89, y: 829.33), control1: CGPoint(x: 712.49, y: 840.35), control2: CGPoint(x: 731.39, y: 799.05))
            p1Path.addCurve(to: CGPoint(x: 888.88, y: 628.35), control1: CGPoint(x: 794.39, y: 859.62), control2: CGPoint(x: 888.88, y: 628.35))
            p1Path.addLine(to: CGPoint(x: 942.43, y: 507.22))
            p1Path.closeSubpath()
            
            
            //// p1End Drawing
            p1EndPath.move(to: CGPoint(x: 914.08, y: 628.35))
            p1EndPath.addCurve(to: CGPoint(x: 1011.73, y: 581.55), control1: CGPoint(x: 1030.63, y: 598.07), control2: CGPoint(x: 1011.73, y: 581.55))
            p1EndPath.addLine(to: CGPoint(x: 961.33, y: 509.97))
            p1EndPath.addCurve(to: CGPoint(x: 914.08, y: 628.35), control1: CGPoint(x: 961.33, y: 509.97), control2: CGPoint(x: 797.54, y: 658.64))
            p1EndPath.closeSubpath()
            
            
            //// p1M Drawing
            p1MPath.move(to: CGPoint(x: 813.29, y: 876.14))
            p1MPath.addCurve(to: CGPoint(x: 942.43, y: 570.54), control1: CGPoint(x: 813.29, y: 876.14), control2: CGPoint(x: 977.08, y: 746.74))
            
            
            
            //// p2M Drawing
            
            p2MPath.move(to: CGPoint(x: 945.58, y: 573.29))
            p2MPath.addCurve(to: CGPoint(x: 551.85, y: 573.29), control1: CGPoint(x: 945.58, y: 573.29), control2: CGPoint(x: 709.34, y: 487.94))
            
            
            ////////
            parts = [p1Path,p2Path,p3Path]
            ends = [p1EndPath,p2EndPath,p3EndPath]
            paths = [p1MPath,p2MPath,p3MPath]
            break
            
        case 10 :
            
            //// p1 Drawing
            p1Path.move(to: CGPoint(x: 753.71, y: 1028.95))
            p1Path.addLine(to: CGPoint(x: 839.73, y: 1143.79))
            p1Path.addCurve(to: CGPoint(x: 882.08, y: 633.14), control1: CGPoint(x: 839.73, y: 1143.79), control2: CGPoint(x: 1144.13, y: 900.73))
            p1Path.addCurve(to: CGPoint(x: 409.6, y: 661.02), control1: CGPoint(x: 620.03, y: 365.56), control2: CGPoint(x: 408.28, y: 604.15))
            p1Path.addCurve(to: CGPoint(x: 720.62, y: 682.2), control1: CGPoint(x: 410.92, y: 717.88), control2: CGPoint(x: 467.31, y: 555.5))
            p1Path.addCurve(to: CGPoint(x: 882.08, y: 907.79), control1: CGPoint(x: 805.32, y: 724.57), control2: CGPoint(x: 892.67, y: 871.74))
            p1Path.addCurve(to: CGPoint(x: 755.03, y: 1030.06), control1: CGPoint(x: 861.01, y: 979.54), control2: CGPoint(x: 755.03, y: 1030.06))
            
            
            
            
            //// p1M Drawing
            p1MPath.move(to: CGPoint(x: 812.4, y: 1066.01))
            p1MPath.addCurve(to: CGPoint(x: 853.61, y: 714.33), control1: CGPoint(x: 812.4, y: 1066.01), control2: CGPoint(x: 1063.44, y: 940.89))
            p1MPath.addCurve(to: CGPoint(x: 505.15, y: 599.36), control1: CGPoint(x: 643.78, y: 487.76), control2: CGPoint(x: 505.15, y: 599.36))
            
            
            
            //// p1End Drawing
            p1EndPath.move(to: CGPoint(x: 463.93, y: 565.54))
            p1EndPath.addLine(to: CGPoint(x: 546.36, y: 626.41))
            p1EndPath.addLine(to: CGPoint(x: 493.91, y: 677.13))
            p1EndPath.addLine(to: CGPoint(x: 381.5, y: 670.37))
            p1EndPath.addLine(to: CGPoint(x: 463.93, y: 565.54))
            p1EndPath.closeSubpath()
            
            
            parts = [p1Path]
            ends = [p1EndPath]
            paths = [p1MPath]
            break
        case 11 :
            
            //// Group
            //// p1 Drawing
            p1Path.move(to: CGPoint(x: 753.71, y: 1028.95))
            p1Path.addLine(to: CGPoint(x: 839.73, y: 1143.79))
            p1Path.addCurve(to: CGPoint(x: 882.08, y: 633.14), control1: CGPoint(x: 839.73, y: 1143.79), control2: CGPoint(x: 1144.13, y: 900.73))
            p1Path.addCurve(to: CGPoint(x: 409.6, y: 661.02), control1: CGPoint(x: 620.03, y: 365.56), control2: CGPoint(x: 408.28, y: 604.15))
            p1Path.addCurve(to: CGPoint(x: 720.62, y: 682.2), control1: CGPoint(x: 410.92, y: 717.88), control2: CGPoint(x: 467.31, y: 555.5))
            p1Path.addCurve(to: CGPoint(x: 882.08, y: 907.79), control1: CGPoint(x: 805.32, y: 724.57), control2: CGPoint(x: 892.67, y: 871.74))
            p1Path.addCurve(to: CGPoint(x: 755.03, y: 1030.06), control1: CGPoint(x: 861.01, y: 979.54), control2: CGPoint(x: 755.03, y: 1030.06))
            
            
            
            //// p2 Drawing
            p2Path.move(to: CGPoint(x: 810.57, y: 1380.5))
            p2Path.addLine(to: CGPoint(x: 733.71, y: 1312.87))
            p2Path.addLine(to: CGPoint(x: 810.57, y: 1245.24))
            p2Path.addLine(to: CGPoint(x: 883.59, y: 1312.87))
            p2Path.addLine(to: CGPoint(x: 810.57, y: 1380.5))
            p2Path.closeSubpath()
            
            
            p2MPath.move(to: CGPoint(x: 810.57, y: 1245.24))
            p2EndPath = p2Path
            
            //// p1M Drawing
            p1MPath.move(to: CGPoint(x: 812.4, y: 1066.01))
            p1MPath.addCurve(to: CGPoint(x: 853.61, y: 714.33), control1: CGPoint(x: 812.4, y: 1066.01), control2: CGPoint(x: 1063.44, y: 940.89))
            p1MPath.addCurve(to: CGPoint(x: 505.15, y: 599.36), control1: CGPoint(x: 643.78, y: 487.76), control2: CGPoint(x: 505.15, y: 599.36))
            
            
            
            //// p1End Drawing
            p1EndPath.move(to: CGPoint(x: 463.93, y: 565.54))
            p1EndPath.addLine(to: CGPoint(x: 546.36, y: 626.41))
            p1EndPath.addLine(to: CGPoint(x: 493.91, y: 677.13))
            p1EndPath.addLine(to: CGPoint(x: 381.5, y: 670.37))
            p1EndPath.addLine(to: CGPoint(x: 463.93, y: 565.54))
            p1EndPath.closeSubpath()
            
            
            //// p2 Drawing
            
            
            
            
            parts = [p1Path,p2Path]
            ends = [p1EndPath,p2EndPath]
            paths = [p1MPath,p2MPath]
            
            break
            
        case 12 :
            
            
            
            
            
            //// p1 Drawing
            p1Path.move(to: CGPoint(x: 1096.46, y: 996.66))
            p1Path.addLine(to: CGPoint(x: 1125.52, y: 1095.88))
            p1Path.addCurve(to: CGPoint(x: 1234.5, y: 921.38), control1: CGPoint(x: 1125.52, y: 1095.88), control2: CGPoint(x: 1234.5, y: 1065.09))
            p1Path.addCurve(to: CGPoint(x: 1027.45, y: 781.11), control1: CGPoint(x: 1234.5, y: 777.68), control2: CGPoint(x: 1114.63, y: 746.89))
            p1Path.addCurve(to: CGPoint(x: 940.27, y: 815.32), control1: CGPoint(x: 940.27, y: 815.32), control2: CGPoint(x: 940.27, y: 815.32))
            p1Path.addLine(to: CGPoint(x: 983.86, y: 894.01))
            p1Path.addCurve(to: CGPoint(x: 1125.52, y: 921.38), control1: CGPoint(x: 983.86, y: 894.01), control2: CGPoint(x: 1150.95, y: 846.11))
            p1Path.addCurve(to: CGPoint(x: 1096.46, y: 996.66), control1: CGPoint(x: 1100.1, y: 996.66), control2: CGPoint(x: 1096.46, y: 996.66))
            p1Path.closeSubpath()
            
            
            //// p2 Drawing
            p2Path.move(to: CGPoint(x: 774.99, y: 861.51))
            p2Path.addCurve(to: CGPoint(x: 887.6, y: 895.72), control1: CGPoint(x: 822.21, y: 854.67), control2: CGPoint(x: 887.6, y: 895.72))
            p2Path.addLine(to: CGPoint(x: 983.86, y: 1027.45))
            p2Path.addLine(to: CGPoint(x: 987.49, y: 894.01))
            p2Path.addLine(to: CGPoint(x: 940.27, y: 815.32))
            p2Path.addCurve(to: CGPoint(x: 776.8, y: 753.73), control1: CGPoint(x: 940.27, y: 815.32), control2: CGPoint(x: 854.9, y: 741.76))
            p2Path.addCurve(to: CGPoint(x: 774.99, y: 861.51), control1: CGPoint(x: 759.54, y: 756.38), control2: CGPoint(x: 750.07, y: 865.12))
            p2Path.closeSubpath()
            
            
            //// p3 Drawing
            p3Path.move(to: CGPoint(x: 771.36, y: 864.93))
            p3Path.addCurve(to: CGPoint(x: 704.15, y: 1037.71), control1: CGPoint(x: 771.36, y: 864.93), control2: CGPoint(x: 705.97, y: 1039.42))
            p3Path.addCurve(to: CGPoint(x: 616.97, y: 928.23), control1: CGPoint(x: 702.34, y: 1036), control2: CGPoint(x: 616.97, y: 928.23))
            p3Path.addCurve(to: CGPoint(x: 577.02, y: 613.46), control1: CGPoint(x: 616.97, y: 928.23), control2: CGPoint(x: 736.85, y: 733.21))
            p3Path.addCurve(to: CGPoint(x: 300.95, y: 842.69), control1: CGPoint(x: 417.19, y: 493.71), control2: CGPoint(x: 231.93, y: 726.36))
            p3Path.addCurve(to: CGPoint(x: 235.56, y: 842.69), control1: CGPoint(x: 369.96, y: 959.02), control2: CGPoint(x: 304.58, y: 993.23))
            p3Path.addCurve(to: CGPoint(x: 442.61, y: 466.33), control1: CGPoint(x: 166.54, y: 692.15), control2: CGPoint(x: 224.66, y: 514.23))
            p3Path.addCurve(to: CGPoint(x: 784.07, y: 753.73), control1: CGPoint(x: 660.56, y: 418.43), control2: CGPoint(x: 791.33, y: 633.98))
            p3Path.addCurve(to: CGPoint(x: 771.36, y: 864.93), control1: CGPoint(x: 776.8, y: 873.48), control2: CGPoint(x: 771.36, y: 864.93))
            p3Path.closeSubpath()
            
            
            //// p1M Drawing
            p1MPath.move(to: CGPoint(x: 1136.42, y: 1037.71))
            p1MPath.addCurve(to: CGPoint(x: 991.12, y: 842.69), control1: CGPoint(x: 1136.42, y: 1037.71), control2: CGPoint(x: 1318.05, y: 729.78))
            
            
            
            //// p2M Drawing
            p2MPath.move(to: CGPoint(x: 958.43, y: 965.86))
            p2MPath.addCurve(to: CGPoint(x: 936.63, y: 859.8), control1: CGPoint(x: 958.43, y: 965.86), control2: CGPoint(x: 970.95, y: 906.43))
            p2MPath.addCurve(to: CGPoint(x: 802.23, y: 805.06), control1: CGPoint(x: 914.59, y: 829.84), control2: CGPoint(x: 869.01, y: 805.06))
            
            
            
            //// p3M Drawing
            p3MPath.move(to: CGPoint(x: 682.36, y: 969.28))
            p3MPath.addCurve(to: CGPoint(x: 518.9, y: 514.23), control1: CGPoint(x: 682.36, y: 969.28), control2: CGPoint(x: 813.13, y: 541.61))
            p3MPath.addCurve(to: CGPoint(x: 293.68, y: 897.43), control1: CGPoint(x: 224.66, y: 486.86), control2: CGPoint(x: 242.83, y: 859.8))
            
            
            
            //// p1End Drawing
            p1EndPath.move(to: CGPoint(x: 1015.74, y: 895.72))
            p1EndPath.addLine(to: CGPoint(x: 923.92, y: 817.03))
            p1EndPath.addLine(to: CGPoint(x: 959.24, y: 803.35))
            p1EndPath.addLine(to: CGPoint(x: 1051.06, y: 885.46))
            p1EndPath.addLine(to: CGPoint(x: 1015.74, y: 895.72))
            p1EndPath.closeSubpath()
            
            
            //// p2End Drawing
            p2EndPath.move(to: CGPoint(x: 749.56, y: 861.51))
            p2EndPath.addLine(to: CGPoint(x: 781.04, y: 748.6))
            p2EndPath.addLine(to: CGPoint(x: 844.01, y: 755.45))
            p2EndPath.addLine(to: CGPoint(x: 802.03, y: 861.51))
            p2EndPath.addLine(to: CGPoint(x: 749.56, y: 861.51))
            p2EndPath.closeSubpath()
            
            
            //// p3End Drawing
            p3EndPath.move(to: CGPoint(x: 206.5, y: 893.31))
            p3EndPath.addLine(to: CGPoint(x: 357.25, y: 971))
            p3EndPath.addLine(to: CGPoint(x: 357.25, y: 844.4))
            p3EndPath.addLine(to: CGPoint(x: 206.5, y: 893.31))
            p3EndPath.closeSubpath()
            
            
            ////////
            parts = [p1Path,p2Path,p3Path]
            paths = [p1MPath,p2MPath,p3MPath]
            ends = [p1EndPath,p2EndPath,p3EndPath]
            
            break
        case 13 :
            
            //// p4 Drawing
            //// p4 Drawing
            p4Path.move(to: CGPoint(x: 992.16, y: 1338.8))
            p4Path.addLine(to: CGPoint(x: 918.47, y: 1264.49))
            p4Path.addLine(to: CGPoint(x: 988.53, y: 1195.1))
            p4Path.addLine(to: CGPoint(x: 1063.77, y: 1264.49))
            p4Path.addLine(to: CGPoint(x: 992.16, y: 1338.8))
            p4Path.closeSubpath()
            p4MPath.move(to: CGPoint(x: 988.53, y: 1195.1))
            p4EndPath = p4Path
            
            
            
            
            //// p5 Drawing
            p5Path.move(to: CGPoint(x: 832.33, y: 1335.38))
            p5Path.addLine(to: CGPoint(x: 758.64, y: 1261.06))
            p5Path.addLine(to: CGPoint(x: 828.7, y: 1191.68))
            p5Path.addLine(to: CGPoint(x: 903.94, y: 1261.06))
            p5Path.addLine(to: CGPoint(x: 832.33, y: 1335.38))
            p5Path.closeSubpath()
            p5MPath.move(to: CGPoint(x: 828.7, y: 1191.68))
            p5EndPath = p5Path
            
            //// p6 Drawing
            p6Path.move(to: CGPoint(x: 926.77, y: 1482.5))
            p6Path.addLine(to: CGPoint(x: 853.09, y: 1408.19))
            p6Path.addLine(to: CGPoint(x: 923.14, y: 1338.8))
            p6Path.addLine(to: CGPoint(x: 998.39, y: 1408.19))
            p6Path.addLine(to: CGPoint(x: 926.77, y: 1482.5))
            p6Path.closeSubpath()
            p6MPath.move(to: CGPoint(x: 923.14, y: 1338.8))
            p6EndPath = p6Path
            
            
            
            
            
            
            //// p1 Drawing
            p1Path.move(to: CGPoint(x: 1096.46, y: 996.66))
            p1Path.addLine(to: CGPoint(x: 1125.52, y: 1095.88))
            p1Path.addCurve(to: CGPoint(x: 1234.5, y: 921.38), control1: CGPoint(x: 1125.52, y: 1095.88), control2: CGPoint(x: 1234.5, y: 1065.09))
            p1Path.addCurve(to: CGPoint(x: 1027.45, y: 781.11), control1: CGPoint(x: 1234.5, y: 777.68), control2: CGPoint(x: 1114.63, y: 746.89))
            p1Path.addCurve(to: CGPoint(x: 940.27, y: 815.32), control1: CGPoint(x: 940.27, y: 815.32), control2: CGPoint(x: 940.27, y: 815.32))
            p1Path.addLine(to: CGPoint(x: 983.86, y: 894.01))
            p1Path.addCurve(to: CGPoint(x: 1125.52, y: 921.38), control1: CGPoint(x: 983.86, y: 894.01), control2: CGPoint(x: 1150.95, y: 846.11))
            p1Path.addCurve(to: CGPoint(x: 1096.46, y: 996.66), control1: CGPoint(x: 1100.1, y: 996.66), control2: CGPoint(x: 1096.46, y: 996.66))
            p1Path.closeSubpath()
            
            
            //// p2 Drawing
            p2Path.move(to: CGPoint(x: 774.99, y: 861.51))
            p2Path.addCurve(to: CGPoint(x: 887.6, y: 895.72), control1: CGPoint(x: 822.21, y: 854.67), control2: CGPoint(x: 887.6, y: 895.72))
            p2Path.addLine(to: CGPoint(x: 983.86, y: 1027.45))
            p2Path.addLine(to: CGPoint(x: 987.49, y: 894.01))
            p2Path.addLine(to: CGPoint(x: 940.27, y: 815.32))
            p2Path.addCurve(to: CGPoint(x: 776.8, y: 753.73), control1: CGPoint(x: 940.27, y: 815.32), control2: CGPoint(x: 854.9, y: 741.76))
            p2Path.addCurve(to: CGPoint(x: 774.99, y: 861.51), control1: CGPoint(x: 759.54, y: 756.38), control2: CGPoint(x: 750.07, y: 865.12))
            p2Path.closeSubpath()
            
            
            //// p3 Drawing
            p3Path.move(to: CGPoint(x: 771.36, y: 864.93))
            p3Path.addCurve(to: CGPoint(x: 704.15, y: 1037.71), control1: CGPoint(x: 771.36, y: 864.93), control2: CGPoint(x: 705.97, y: 1039.42))
            p3Path.addCurve(to: CGPoint(x: 616.97, y: 928.23), control1: CGPoint(x: 702.34, y: 1036), control2: CGPoint(x: 616.97, y: 928.23))
            p3Path.addCurve(to: CGPoint(x: 577.02, y: 613.46), control1: CGPoint(x: 616.97, y: 928.23), control2: CGPoint(x: 736.85, y: 733.21))
            p3Path.addCurve(to: CGPoint(x: 300.95, y: 842.69), control1: CGPoint(x: 417.19, y: 493.71), control2: CGPoint(x: 231.93, y: 726.36))
            p3Path.addCurve(to: CGPoint(x: 235.56, y: 842.69), control1: CGPoint(x: 369.96, y: 959.02), control2: CGPoint(x: 304.58, y: 993.23))
            p3Path.addCurve(to: CGPoint(x: 442.61, y: 466.33), control1: CGPoint(x: 166.54, y: 692.15), control2: CGPoint(x: 224.66, y: 514.23))
            p3Path.addCurve(to: CGPoint(x: 784.07, y: 753.73), control1: CGPoint(x: 660.56, y: 418.43), control2: CGPoint(x: 791.33, y: 633.98))
            p3Path.addCurve(to: CGPoint(x: 771.36, y: 864.93), control1: CGPoint(x: 776.8, y: 873.48), control2: CGPoint(x: 771.36, y: 864.93))
            p3Path.closeSubpath()
            
            
            //// p1M Drawing
            p1MPath.move(to: CGPoint(x: 1136.42, y: 1037.71))
            p1MPath.addCurve(to: CGPoint(x: 991.12, y: 842.69), control1: CGPoint(x: 1136.42, y: 1037.71), control2: CGPoint(x: 1318.05, y: 729.78))
            
            
            
            //// p2M Drawing
            p2MPath.move(to: CGPoint(x: 958.43, y: 965.86))
            p2MPath.addCurve(to: CGPoint(x: 936.63, y: 859.8), control1: CGPoint(x: 958.43, y: 965.86), control2: CGPoint(x: 970.95, y: 906.43))
            p2MPath.addCurve(to: CGPoint(x: 802.23, y: 805.06), control1: CGPoint(x: 914.59, y: 829.84), control2: CGPoint(x: 869.01, y: 805.06))
            
            
            
            //// p3M Drawing
            p3MPath.move(to: CGPoint(x: 682.36, y: 969.28))
            p3MPath.addCurve(to: CGPoint(x: 518.9, y: 514.23), control1: CGPoint(x: 682.36, y: 969.28), control2: CGPoint(x: 813.13, y: 541.61))
            p3MPath.addCurve(to: CGPoint(x: 293.68, y: 897.43), control1: CGPoint(x: 224.66, y: 486.86), control2: CGPoint(x: 242.83, y: 859.8))
            
            
            
            //// p1End Drawing
            p1EndPath.move(to: CGPoint(x: 1015.74, y: 895.72))
            p1EndPath.addLine(to: CGPoint(x: 923.92, y: 817.03))
            p1EndPath.addLine(to: CGPoint(x: 959.24, y: 803.35))
            p1EndPath.addLine(to: CGPoint(x: 1051.06, y: 885.46))
            p1EndPath.addLine(to: CGPoint(x: 1015.74, y: 895.72))
            p1EndPath.closeSubpath()
            
            
            //// p2End Drawing
            p2EndPath.move(to: CGPoint(x: 749.56, y: 861.51))
            p2EndPath.addLine(to: CGPoint(x: 781.04, y: 748.6))
            p2EndPath.addLine(to: CGPoint(x: 844.01, y: 755.45))
            p2EndPath.addLine(to: CGPoint(x: 802.03, y: 861.51))
            p2EndPath.addLine(to: CGPoint(x: 749.56, y: 861.51))
            p2EndPath.closeSubpath()
            
            
            //// p3End Drawing
            p3EndPath.move(to: CGPoint(x: 206.5, y: 893.31))
            p3EndPath.addLine(to: CGPoint(x: 357.25, y: 971))
            p3EndPath.addLine(to: CGPoint(x: 357.25, y: 844.4))
            p3EndPath.addLine(to: CGPoint(x: 206.5, y: 893.31))
            p3EndPath.closeSubpath()
            parts = [p1Path,p2Path,p3Path,p4Path,p5Path,p6Path]
            paths = [p1MPath,p2MPath,p3MPath,p4MPath,p5MPath,p6MPath]
            ends = [p1EndPath,p2EndPath,p3EndPath,p4EndPath,p5EndPath,p6EndPath]
            
            break
        case 14 : //saad
            
            
            //// p2 Drawing
            p2Path.move(to: CGPoint(x: 1183.35, y: 768.38))
            p2Path.addCurve(to: CGPoint(x: 1161.03, y: 912.72), control1: CGPoint(x: 1187.16, y: 781.44), control2: CGPoint(x: 1232.46, y: 926.69))
            p2Path.addCurve(to: CGPoint(x: 803.88, y: 922.03), control1: CGPoint(x: 1063.31, y: 893.61), control2: CGPoint(x: 812.81, y: 918.54))
            p2Path.addCurve(to: CGPoint(x: 768.17, y: 735.79), control1: CGPoint(x: 768.17, y: 936), control2: CGPoint(x: 768.17, y: 735.79))
            p2Path.addCurve(to: CGPoint(x: 1183.35, y: 768.38), control1: CGPoint(x: 768.17, y: 735.79), control2: CGPoint(x: 1167.37, y: 713.48))
            p2Path.closeSubpath()
            
            
            //// p1 Drawing
            p1Path.move(to: CGPoint(x: 876.12, y: 908.07))
            p1Path.addCurve(to: CGPoint(x: 835.94, y: 917.38), control1: CGPoint(x: 837.5, y: 914.78), control2: CGPoint(x: 835.94, y: 917.38))
            p1Path.addCurve(to: CGPoint(x: 1135.05, y: 1131.56), control1: CGPoint(x: 835.94, y: 917.38), control2: CGPoint(x: 1045.77, y: 1117.59))
            p1Path.addCurve(to: CGPoint(x: 1295.77, y: 945.32), control1: CGPoint(x: 1224.34, y: 1145.53), control2: CGPoint(x: 1362.74, y: 1140.87))
            p1Path.addCurve(to: CGPoint(x: 1135.05, y: 745.1), control1: CGPoint(x: 1228.81, y: 749.76), control2: CGPoint(x: 1161.84, y: 754.41))
            p1Path.addCurve(to: CGPoint(x: 1121.66, y: 908.07), control1: CGPoint(x: 1108.27, y: 735.79), control2: CGPoint(x: 1121.66, y: 908.07))
            p1Path.addCurve(to: CGPoint(x: 1224.34, y: 931.35), control1: CGPoint(x: 1121.66, y: 908.07), control2: CGPoint(x: 1215.41, y: 917.38))
            p1Path.addCurve(to: CGPoint(x: 1090.41, y: 1019.81), control1: CGPoint(x: 1233.27, y: 945.32), control2: CGPoint(x: 1188.63, y: 1038.44))
            p1Path.addCurve(to: CGPoint(x: 925.23, y: 912.72), control1: CGPoint(x: 992.19, y: 1001.19), control2: CGPoint(x: 974.34, y: 959.28))
            p1Path.addCurve(to: CGPoint(x: 876.12, y: 908.07), control1: CGPoint(x: 918.27, y: 906.12), control2: CGPoint(x: 893.63, y: 905.02))
            p1Path.closeSubpath()
            
            
            //// p3 Drawing
            p3Path.move(to: CGPoint(x: 800.23, y: 922.03))
            p3Path.addCurve(to: CGPoint(x: 713.17, y: 998.86), control1: CGPoint(x: 773.44, y: 931.35), control2: CGPoint(x: 713.17, y: 998.86))
            p3Path.addLine(to: CGPoint(x: 650.67, y: 891.77))
            p3Path.addCurve(to: CGPoint(x: 702.01, y: 707.85), control1: CGPoint(x: 650.67, y: 891.77), control2: CGPoint(x: 722.1, y: 752.09))
            p3Path.addCurve(to: CGPoint(x: 347.09, y: 756.74), control1: CGPoint(x: 681.92, y: 663.62), control2: CGPoint(x: 358.25, y: 586.79))
            p3Path.addCurve(to: CGPoint(x: 358.25, y: 852.19), control1: CGPoint(x: 344.46, y: 796.84), control2: CGPoint(x: 347.22, y: 829.19))
            p3Path.addCurve(to: CGPoint(x: 318.07, y: 824.26), control1: CGPoint(x: 393.97, y: 926.69), control2: CGPoint(x: 355.59, y: 913.19))
            p3Path.addCurve(to: CGPoint(x: 402.9, y: 489.01), control1: CGPoint(x: 268.97, y: 707.85), control2: CGPoint(x: 251.11, y: 526.26))
            p3Path.addCurve(to: CGPoint(x: 670.76, y: 512.29), control1: CGPoint(x: 554.69, y: 451.76), control2: CGPoint(x: 670.76, y: 512.29))
            p3Path.addCurve(to: CGPoint(x: 764.51, y: 735.79), control1: CGPoint(x: 670.76, y: 512.29), control2: CGPoint(x: 768.98, y: 530.92))
            p3Path.addCurve(to: CGPoint(x: 800.23, y: 922.03), control1: CGPoint(x: 763.66, y: 774.97), control2: CGPoint(x: 800.23, y: 922.03))
            p3Path.closeSubpath()
            
            
            //// p1M Drawing
            p1MPath.move(to: CGPoint(x: 900.42, y: 922.03))
            p1MPath.addCurve(to: CGPoint(x: 1207.56, y: 1067.26), control1: CGPoint(x: 900.42, y: 922.03), control2: CGPoint(x: 1047.34, y: 1118.39))
            p1MPath.addCurve(to: CGPoint(x: 1154.54, y: 843.97), control1: CGPoint(x: 1309.94, y: 1034.58), control2: CGPoint(x: 1266.06, y: 842.15))
            
            
            //// p2M Drawing
            p2MPath.move(to: CGPoint(x: 1174.65, y: 845.79))
            p2MPath.addLine(to: CGPoint(x: 798.03, y: 845.79))
            
            
            
            //// p3M Drawing
            p3MPath.move(to: CGPoint(x: 710.28, y: 925.66))
            p3MPath.addCurve(to: CGPoint(x: 516.48, y: 551.7), control1: CGPoint(x: 710.28, y: 925.66), control2: CGPoint(x: 819.97, y: 529.91))
            p3MPath.addCurve(to: CGPoint(x: 340.97, y: 845.79), control1: CGPoint(x: 213, y: 573.48), control2: CGPoint(x: 355.6, y: 885.72))
            
            
            
            //// p1End Drawing
            p1EndPath.move(to: CGPoint(x: 1192.93, y: 925.66))
            p1EndPath.addCurve(to: CGPoint(x: 1138.09, y: 907.51), control1: CGPoint(x: 1196.59, y: 914.77), control2: CGPoint(x: 1138.09, y: 907.51))
            p1EndPath.addCurve(to: CGPoint(x: 1149.06, y: 744.13), control1: CGPoint(x: 1138.09, y: 907.51), control2: CGPoint(x: 1160.03, y: 744.13))
            p1EndPath.addCurve(to: CGPoint(x: 1192.93, y: 769.54), control1: CGPoint(x: 1138.09, y: 744.13), control2: CGPoint(x: 1192.93, y: 769.54))
            p1EndPath.addCurve(to: CGPoint(x: 1192.93, y: 925.66), control1: CGPoint(x: 1192.93, y: 769.54), control2: CGPoint(x: 1189.28, y: 936.55))
            p1EndPath.closeSubpath()
            
            
            //// p2End Drawing
            p2EndPath.move(to: CGPoint(x: 834.56, y: 936.48))
            p2EndPath.addCurve(to: CGPoint(x: 765.13, y: 915.79), control1: CGPoint(x: 839.18, y: 924.07), control2: CGPoint(x: 765.13, y: 915.79))
            p2EndPath.addCurve(to: CGPoint(x: 779.01, y: 729.6), control1: CGPoint(x: 765.13, y: 915.79), control2: CGPoint(x: 792.9, y: 729.6))
            p2EndPath.addCurve(to: CGPoint(x: 834.56, y: 758.57), control1: CGPoint(x: 765.13, y: 729.6), control2: CGPoint(x: 834.56, y: 758.57))
            p2EndPath.addCurve(to: CGPoint(x: 834.56, y: 936.48), control1: CGPoint(x: 834.56, y: 758.57), control2: CGPoint(x: 829.93, y: 948.89))
            p2EndPath.closeSubpath()
            
            
            //// p3End Drawing
            p3EndPath.move(to: CGPoint(x: 370.23, y: 798.59))
            p3EndPath.addLine(to: CGPoint(x: 271.5, y: 827.63))
            p3EndPath.addLine(to: CGPoint(x: 370.23, y: 932.92))
            p3EndPath.addLine(to: CGPoint(x: 370.23, y: 798.59))
            p3EndPath.closeSubpath()
            
            
            
            
            
            parts = [p1Path,p2Path,p3Path]
            ends = [p1EndPath,p2EndPath,p3EndPath]
            paths = [p1MPath,p2MPath,p3MPath]
            break
        case 15:
            //dhad
            //// p1 Drawing
            
            p4Path.move(to: CGPoint(x: 1078.67, y: 1379.5))
            p4Path.addLine(to: CGPoint(x: 1013.77, y: 1308.43))
            p4Path.addLine(to: CGPoint(x: 1079.58, y: 1241.53))
            p4Path.addLine(to: CGPoint(x: 1145.4, y: 1308.43))
            p4Path.addLine(to: CGPoint(x: 1078.67, y: 1379.5))
            p4Path.addLine(to: CGPoint(x: 1078.67, y: 1379.5))
            p4Path.addLine(to: CGPoint(x: 1078.67, y: 1379.5))
            p4MPath.move( to: CGPoint(x: 1079.58, y: 1241.53))
            p4EndPath = p4Path
            
            //// p2 Drawing
            p2Path.move(to: CGPoint(x: 1183.35, y: 768.38))
            p2Path.addCurve(to: CGPoint(x: 1161.03, y: 912.72), control1: CGPoint(x: 1187.16, y: 781.44), control2: CGPoint(x: 1232.46, y: 926.69))
            p2Path.addCurve(to: CGPoint(x: 803.88, y: 922.03), control1: CGPoint(x: 1063.31, y: 893.61), control2: CGPoint(x: 812.81, y: 918.54))
            p2Path.addCurve(to: CGPoint(x: 768.17, y: 735.79), control1: CGPoint(x: 768.17, y: 936), control2: CGPoint(x: 768.17, y: 735.79))
            p2Path.addCurve(to: CGPoint(x: 1183.35, y: 768.38), control1: CGPoint(x: 768.17, y: 735.79), control2: CGPoint(x: 1167.37, y: 713.48))
            p2Path.closeSubpath()
            
            
            //// p1 Drawing
            p1Path.move(to: CGPoint(x: 876.12, y: 908.07))
            p1Path.addCurve(to: CGPoint(x: 835.94, y: 917.38), control1: CGPoint(x: 837.5, y: 914.78), control2: CGPoint(x: 835.94, y: 917.38))
            p1Path.addCurve(to: CGPoint(x: 1135.05, y: 1131.56), control1: CGPoint(x: 835.94, y: 917.38), control2: CGPoint(x: 1045.77, y: 1117.59))
            p1Path.addCurve(to: CGPoint(x: 1295.77, y: 945.32), control1: CGPoint(x: 1224.34, y: 1145.53), control2: CGPoint(x: 1362.74, y: 1140.87))
            p1Path.addCurve(to: CGPoint(x: 1135.05, y: 745.1), control1: CGPoint(x: 1228.81, y: 749.76), control2: CGPoint(x: 1161.84, y: 754.41))
            p1Path.addCurve(to: CGPoint(x: 1121.66, y: 908.07), control1: CGPoint(x: 1108.27, y: 735.79), control2: CGPoint(x: 1121.66, y: 908.07))
            p1Path.addCurve(to: CGPoint(x: 1224.34, y: 931.35), control1: CGPoint(x: 1121.66, y: 908.07), control2: CGPoint(x: 1215.41, y: 917.38))
            p1Path.addCurve(to: CGPoint(x: 1090.41, y: 1019.81), control1: CGPoint(x: 1233.27, y: 945.32), control2: CGPoint(x: 1188.63, y: 1038.44))
            p1Path.addCurve(to: CGPoint(x: 925.23, y: 912.72), control1: CGPoint(x: 992.19, y: 1001.19), control2: CGPoint(x: 974.34, y: 959.28))
            p1Path.addCurve(to: CGPoint(x: 876.12, y: 908.07), control1: CGPoint(x: 918.27, y: 906.12), control2: CGPoint(x: 893.63, y: 905.02))
            p1Path.closeSubpath()
            
            
            //// p3 Drawing
            p3Path.move(to: CGPoint(x: 800.23, y: 922.03))
            p3Path.addCurve(to: CGPoint(x: 713.17, y: 998.86), control1: CGPoint(x: 773.44, y: 931.35), control2: CGPoint(x: 713.17, y: 998.86))
            p3Path.addLine(to: CGPoint(x: 650.67, y: 891.77))
            p3Path.addCurve(to: CGPoint(x: 702.01, y: 707.85), control1: CGPoint(x: 650.67, y: 891.77), control2: CGPoint(x: 722.1, y: 752.09))
            p3Path.addCurve(to: CGPoint(x: 347.09, y: 756.74), control1: CGPoint(x: 681.92, y: 663.62), control2: CGPoint(x: 358.25, y: 586.79))
            p3Path.addCurve(to: CGPoint(x: 358.25, y: 852.19), control1: CGPoint(x: 344.46, y: 796.84), control2: CGPoint(x: 347.22, y: 829.19))
            p3Path.addCurve(to: CGPoint(x: 318.07, y: 824.26), control1: CGPoint(x: 393.97, y: 926.69), control2: CGPoint(x: 355.59, y: 913.19))
            p3Path.addCurve(to: CGPoint(x: 402.9, y: 489.01), control1: CGPoint(x: 268.97, y: 707.85), control2: CGPoint(x: 251.11, y: 526.26))
            p3Path.addCurve(to: CGPoint(x: 670.76, y: 512.29), control1: CGPoint(x: 554.69, y: 451.76), control2: CGPoint(x: 670.76, y: 512.29))
            p3Path.addCurve(to: CGPoint(x: 764.51, y: 735.79), control1: CGPoint(x: 670.76, y: 512.29), control2: CGPoint(x: 768.98, y: 530.92))
            p3Path.addCurve(to: CGPoint(x: 800.23, y: 922.03), control1: CGPoint(x: 763.66, y: 774.97), control2: CGPoint(x: 800.23, y: 922.03))
            p3Path.closeSubpath()
            
            
            //// p1M Drawing
            p1MPath.move(to: CGPoint(x: 900.42, y: 922.03))
            p1MPath.addCurve(to: CGPoint(x: 1207.56, y: 1067.26), control1: CGPoint(x: 900.42, y: 922.03), control2: CGPoint(x: 1047.34, y: 1118.39))
            p1MPath.addCurve(to: CGPoint(x: 1154.54, y: 843.97), control1: CGPoint(x: 1309.94, y: 1034.58), control2: CGPoint(x: 1266.06, y: 842.15))
            
            
            //// p2M Drawing
            p2MPath.move(to: CGPoint(x: 1174.65, y: 845.79))
            p2MPath.addLine(to: CGPoint(x: 798.03, y: 845.79))
            
            
            
            //// p3M Drawing
            p3MPath.move(to: CGPoint(x: 710.28, y: 925.66))
            p3MPath.addCurve(to: CGPoint(x: 516.48, y: 551.7), control1: CGPoint(x: 710.28, y: 925.66), control2: CGPoint(x: 819.97, y: 529.91))
            p3MPath.addCurve(to: CGPoint(x: 340.97, y: 845.79), control1: CGPoint(x: 213, y: 573.48), control2: CGPoint(x: 355.6, y: 885.72))
            
            
            
            //// p1End Drawing
            p1EndPath.move(to: CGPoint(x: 1192.93, y: 925.66))
            p1EndPath.addCurve(to: CGPoint(x: 1138.09, y: 907.51), control1: CGPoint(x: 1196.59, y: 914.77), control2: CGPoint(x: 1138.09, y: 907.51))
            p1EndPath.addCurve(to: CGPoint(x: 1149.06, y: 744.13), control1: CGPoint(x: 1138.09, y: 907.51), control2: CGPoint(x: 1160.03, y: 744.13))
            p1EndPath.addCurve(to: CGPoint(x: 1192.93, y: 769.54), control1: CGPoint(x: 1138.09, y: 744.13), control2: CGPoint(x: 1192.93, y: 769.54))
            p1EndPath.addCurve(to: CGPoint(x: 1192.93, y: 925.66), control1: CGPoint(x: 1192.93, y: 769.54), control2: CGPoint(x: 1189.28, y: 936.55))
            p1EndPath.closeSubpath()
            
            
            //// p2End Drawing
            p2EndPath.move(to: CGPoint(x: 834.56, y: 936.48))
            p2EndPath.addCurve(to: CGPoint(x: 765.13, y: 915.79), control1: CGPoint(x: 839.18, y: 924.07), control2: CGPoint(x: 765.13, y: 915.79))
            p2EndPath.addCurve(to: CGPoint(x: 779.01, y: 729.6), control1: CGPoint(x: 765.13, y: 915.79), control2: CGPoint(x: 792.9, y: 729.6))
            p2EndPath.addCurve(to: CGPoint(x: 834.56, y: 758.57), control1: CGPoint(x: 765.13, y: 729.6), control2: CGPoint(x: 834.56, y: 758.57))
            p2EndPath.addCurve(to: CGPoint(x: 834.56, y: 936.48), control1: CGPoint(x: 834.56, y: 758.57), control2: CGPoint(x: 829.93, y: 948.89))
            p2EndPath.closeSubpath()
            
            
            //// p3End Drawing
            p3EndPath.move(to: CGPoint(x: 370.23, y: 798.59))
            p3EndPath.addLine(to: CGPoint(x: 271.5, y: 827.63))
            p3EndPath.addLine(to: CGPoint(x: 370.23, y: 932.92))
            p3EndPath.addLine(to: CGPoint(x: 370.23, y: 798.59))
            p3EndPath.closeSubpath()
            
            
            
            
            
            parts = [p1Path,p2Path,p3Path,p4Path]
            ends = [p1EndPath,p2EndPath,p3EndPath,p4EndPath]
            paths = [p1MPath,p2MPath,p3MPath,p4MPath]
            
            break
            
        case 16 : //taa
            p1Path.move(to: CGPoint(x: 1129.17, y: 513.46))
            p1Path.addCurve(to: CGPoint(x: 1040.36, y: 500.87), control1: CGPoint(x: 1118.46, y: 507.9), control2: CGPoint(x: 1040.36, y: 500.87))
            p1Path.addCurve(to: CGPoint(x: 1052.47, y: 693.9), control1: CGPoint(x: 1040.36, y: 500.87), control2: CGPoint(x: 1018.33, y: 650.22))
            p1Path.addCurve(to: CGPoint(x: 1129.17, y: 731.66), control1: CGPoint(x: 1060.4, y: 704.05), control2: CGPoint(x: 1118.87, y: 707.08))
            p1Path.addCurve(to: CGPoint(x: 1024.21, y: 819.78), control1: CGPoint(x: 1136.49, y: 749.12), control2: CGPoint(x: 1111.15, y: 808.14))
            p1Path.addCurve(to: CGPoint(x: 802.17, y: 773.63), control1: CGPoint(x: 962.57, y: 828.04), control2: CGPoint(x: 878.87, y: 807.2))
            p1Path.addCurve(to: CGPoint(x: 636.65, y: 681.31), control1: CGPoint(x: 749.06, y: 750.38), control2: CGPoint(x: 647.86, y: 692.96))
            p1Path.addCurve(to: CGPoint(x: 487.28, y: 681.31), control1: CGPoint(x: 616.47, y: 660.33), control2: CGPoint(x: 487.28, y: 681.31))
            p1Path.addCurve(to: CGPoint(x: 963.65, y: 949.87), control1: CGPoint(x: 487.28, y: 681.31), control2: CGPoint(x: 753.73, y: 907.91))
            p1Path.addCurve(to: CGPoint(x: 1246.25, y: 748.45), control1: CGPoint(x: 1173.58, y: 991.83), control2: CGPoint(x: 1318.91, y: 1000.22))
            p1Path.addCurve(to: CGPoint(x: 1129.17, y: 513.46), control1: CGPoint(x: 1232.65, y: 701.34), control2: CGPoint(x: 1177.62, y: 538.64))
            p1Path.closeSubpath()
            
            
            //// p2 Drawing
            p2Path.move(to: CGPoint(x: 1116.03, y: 693.69))
            p2Path.addCurve(to: CGPoint(x: 1099.03, y: 506.39), control1: CGPoint(x: 1130.44, y: 639.9), control2: CGPoint(x: 1152.61, y: 521.04))
            p2Path.addCurve(to: CGPoint(x: 354.13, y: 506.39), control1: CGPoint(x: 1001.13, y: 479.63), control2: CGPoint(x: 354.13, y: 506.39))
            p2Path.addLine(to: CGPoint(x: 354.13, y: 698.15))
            p2Path.addLine(to: CGPoint(x: 643.56, y: 689.23))
            p2Path.addCurve(to: CGPoint(x: 881.94, y: 675.85), control1: CGPoint(x: 643.56, y: 689.23), control2: CGPoint(x: 656.35, y: 666.93))
            p2Path.addCurve(to: CGPoint(x: 1116.03, y: 693.69), control1: CGPoint(x: 1107.54, y: 684.77), control2: CGPoint(x: 1104.11, y: 738.2))
            p2Path.closeSubpath()
            
            
            //// p3 Drawing
            p3Path.move(to: CGPoint(x: 680.84, y: 943.81))
            p3Path.addCurve(to: CGPoint(x: 660.19, y: 806.23), control1: CGPoint(x: 680.84, y: 907.12), control2: CGPoint(x: 660.19, y: 806.23))
            p3Path.addLine(to: CGPoint(x: 585.85, y: 755.79))
            p3Path.addCurve(to: CGPoint(x: 577.59, y: 1008.01), control1: CGPoint(x: 585.85, y: 755.79), control2: CGPoint(x: 588.82, y: 903.23))
            p3Path.addCurve(to: CGPoint(x: 552.81, y: 1223.55), control1: CGPoint(x: 556.94, y: 1200.62), control2: CGPoint(x: 552.81, y: 1223.55))
            p3Path.addLine(to: CGPoint(x: 523.9, y: 1264.82))
            p3Path.addLine(to: CGPoint(x: 614.76, y: 1434.5))
            p3Path.addCurve(to: CGPoint(x: 664.32, y: 1319.85), control1: CGPoint(x: 614.76, y: 1434.5), control2: CGPoint(x: 614.76, y: 1388.64))
            p3Path.addCurve(to: CGPoint(x: 746.93, y: 1264.82), control1: CGPoint(x: 713.88, y: 1251.06), control2: CGPoint(x: 746.93, y: 1264.82))
            p3Path.addLine(to: CGPoint(x: 693.23, y: 1118.07))
            p3Path.addLine(to: CGPoint(x: 660.19, y: 1127.25))
            p3Path.addCurve(to: CGPoint(x: 680.84, y: 943.81), control1: CGPoint(x: 660.19, y: 1127.25), control2: CGPoint(x: 680.84, y: 1076.8))
            p3Path.closeSubpath()
            
            
            
            //// p2M Drawing
            p2MPath.move(to: CGPoint(x: 1056.5, y: 602.84))
            p2MPath.addCurve(to: CGPoint(x: 417.38, y: 602.84), control1: CGPoint(x: 407.39, y: 609.21), control2: CGPoint(x: 417.38, y: 602.84))
            
            
            
            //// p1M Drawing
            p1MPath.move(to: CGPoint(x: 630.42, y: 727.11))
            p1MPath.addCurve(to: CGPoint(x: 1156.36, y: 873.69), control1: CGPoint(x: 630.42, y: 727.11), control2: CGPoint(x: 948.71, y: 973.07))
            p1MPath.addCurve(to: CGPoint(x: 1083.13, y: 602.84), control1: CGPoint(x: 1229.6, y: 838.64), control2: CGPoint(x: 1226.27, y: 682.5))
            
            
            
            //// p1End Drawing
            p1EndPath.move(to: CGPoint(x: 1059.83, y: 714.36))
            p1EndPath.addLine(to: CGPoint(x: 1039.86, y: 500.87))
            p1EndPath.addLine(to: CGPoint(x: 1129.73, y: 513.62))
            p1EndPath.addLine(to: CGPoint(x: 1129.73, y: 714.36))
            p1EndPath.addLine(to: CGPoint(x: 1059.83, y: 714.36))
            p1EndPath.closeSubpath()
            
            
            //// p2End Drawing
            p2EndPath.move(to: CGPoint(x: 347.47, y: 707.99))
            p2EndPath.addLine(to: CGPoint(x: 327.5, y: 494.5))
            p2EndPath.addLine(to: CGPoint(x: 417.38, y: 507.25))
            p2EndPath.addLine(to: CGPoint(x: 417.38, y: 707.99))
            p2EndPath.addLine(to: CGPoint(x: 347.47, y: 707.99))
            p2EndPath.closeSubpath()
            
            
            //// p3End Drawing
            p3EndPath.move(to: CGPoint(x: 580.49, y: 813.14))
            p3EndPath.addLine(to: CGPoint(x: 667.03, y: 813.14))
            p3EndPath.addLine(to: CGPoint(x: 667.03, y: 755.79))
            p3EndPath.addLine(to: CGPoint(x: 580.49, y: 755.79))
            p3EndPath.addLine(to: CGPoint(x: 580.49, y: 813.14))
            p3EndPath.addLine(to: CGPoint(x: 580.49, y: 813.14))
            p3EndPath.addLine(to: CGPoint(x: 580.49, y: 813.14))
            
            
            
            //// p3M Drawing
            p3MPath.move(to: CGPoint(x: 633.75, y: 1284.74))
            p3MPath.addLine(to: CGPoint(x: 633.75, y: 860.94))
            
            parts = [p1Path,p2Path,p3Path]
            ends = [p1EndPath,p2EndPath,p3EndPath]
            paths = [p1MPath,p2MPath,p3MPath]
            
            break
        case 17 : //dtaa
            p1Path.move(to: CGPoint(x: 1129.17, y: 513.46))
            p1Path.addCurve(to: CGPoint(x: 1040.36, y: 500.87), control1: CGPoint(x: 1118.46, y: 507.9), control2: CGPoint(x: 1040.36, y: 500.87))
            p1Path.addCurve(to: CGPoint(x: 1052.47, y: 693.9), control1: CGPoint(x: 1040.36, y: 500.87), control2: CGPoint(x: 1018.33, y: 650.22))
            p1Path.addCurve(to: CGPoint(x: 1129.17, y: 731.66), control1: CGPoint(x: 1060.4, y: 704.05), control2: CGPoint(x: 1118.87, y: 707.08))
            p1Path.addCurve(to: CGPoint(x: 1024.21, y: 819.78), control1: CGPoint(x: 1136.49, y: 749.12), control2: CGPoint(x: 1111.15, y: 808.14))
            p1Path.addCurve(to: CGPoint(x: 802.17, y: 773.63), control1: CGPoint(x: 962.57, y: 828.04), control2: CGPoint(x: 878.87, y: 807.2))
            p1Path.addCurve(to: CGPoint(x: 636.65, y: 681.31), control1: CGPoint(x: 749.06, y: 750.38), control2: CGPoint(x: 647.86, y: 692.96))
            p1Path.addCurve(to: CGPoint(x: 487.28, y: 681.31), control1: CGPoint(x: 616.47, y: 660.33), control2: CGPoint(x: 487.28, y: 681.31))
            p1Path.addCurve(to: CGPoint(x: 963.65, y: 949.87), control1: CGPoint(x: 487.28, y: 681.31), control2: CGPoint(x: 753.73, y: 907.91))
            p1Path.addCurve(to: CGPoint(x: 1246.25, y: 748.45), control1: CGPoint(x: 1173.58, y: 991.83), control2: CGPoint(x: 1318.91, y: 1000.22))
            p1Path.addCurve(to: CGPoint(x: 1129.17, y: 513.46), control1: CGPoint(x: 1232.65, y: 701.34), control2: CGPoint(x: 1177.62, y: 538.64))
            p1Path.closeSubpath()
            
            
            //// p2 Drawing
            p2Path.move(to: CGPoint(x: 1116.03, y: 693.69))
            p2Path.addCurve(to: CGPoint(x: 1099.03, y: 506.39), control1: CGPoint(x: 1130.44, y: 639.9), control2: CGPoint(x: 1152.61, y: 521.04))
            p2Path.addCurve(to: CGPoint(x: 354.13, y: 506.39), control1: CGPoint(x: 1001.13, y: 479.63), control2: CGPoint(x: 354.13, y: 506.39))
            p2Path.addLine(to: CGPoint(x: 354.13, y: 698.15))
            p2Path.addLine(to: CGPoint(x: 643.56, y: 689.23))
            p2Path.addCurve(to: CGPoint(x: 881.94, y: 675.85), control1: CGPoint(x: 643.56, y: 689.23), control2: CGPoint(x: 656.35, y: 666.93))
            p2Path.addCurve(to: CGPoint(x: 1116.03, y: 693.69), control1: CGPoint(x: 1107.54, y: 684.77), control2: CGPoint(x: 1104.11, y: 738.2))
            p2Path.closeSubpath()
            
            
            //// p3 Drawing
            p3Path.move(to: CGPoint(x: 680.84, y: 943.81))
            p3Path.addCurve(to: CGPoint(x: 660.19, y: 806.23), control1: CGPoint(x: 680.84, y: 907.12), control2: CGPoint(x: 660.19, y: 806.23))
            p3Path.addLine(to: CGPoint(x: 585.85, y: 755.79))
            p3Path.addCurve(to: CGPoint(x: 577.59, y: 1008.01), control1: CGPoint(x: 585.85, y: 755.79), control2: CGPoint(x: 588.82, y: 903.23))
            p3Path.addCurve(to: CGPoint(x: 552.81, y: 1223.55), control1: CGPoint(x: 556.94, y: 1200.62), control2: CGPoint(x: 552.81, y: 1223.55))
            p3Path.addLine(to: CGPoint(x: 523.9, y: 1264.82))
            p3Path.addLine(to: CGPoint(x: 614.76, y: 1434.5))
            p3Path.addCurve(to: CGPoint(x: 664.32, y: 1319.85), control1: CGPoint(x: 614.76, y: 1434.5), control2: CGPoint(x: 614.76, y: 1388.64))
            p3Path.addCurve(to: CGPoint(x: 746.93, y: 1264.82), control1: CGPoint(x: 713.88, y: 1251.06), control2: CGPoint(x: 746.93, y: 1264.82))
            p3Path.addLine(to: CGPoint(x: 693.23, y: 1118.07))
            p3Path.addLine(to: CGPoint(x: 660.19, y: 1127.25))
            p3Path.addCurve(to: CGPoint(x: 680.84, y: 943.81), control1: CGPoint(x: 660.19, y: 1127.25), control2: CGPoint(x: 680.84, y: 1076.8))
            p3Path.closeSubpath()
            
            
            //// p4 Drawing
            p4Path.move(to: CGPoint(x: 989.09, y: 1209.86))
            p4Path.addLine(to: CGPoint(x: 918.36, y: 1147.76))
            p4Path.addLine(to: CGPoint(x: 989.09, y: 1082.4))
            p4Path.addLine(to: CGPoint(x: 1051.51, y: 1147.76))
            p4Path.addLine(to: CGPoint(x: 989.09, y: 1209.86))
            p4Path.addLine(to: CGPoint(x: 989.09, y: 1209.86))
            p4Path.closeSubpath()
            p4MPath.move(to:  CGPoint(x: 989.09, y: 1082.4))
            p4EndPath = p4Path
            
            
            //// p2M Drawing
            p2MPath.move(to: CGPoint(x: 1056.5, y: 602.84))
            p2MPath.addCurve(to: CGPoint(x: 417.38, y: 602.84), control1: CGPoint(x: 407.39, y: 609.21), control2: CGPoint(x: 417.38, y: 602.84))
            
            
            
            //// p1M Drawing
            p1MPath.move(to: CGPoint(x: 630.42, y: 727.11))
            p1MPath.addCurve(to: CGPoint(x: 1156.36, y: 873.69), control1: CGPoint(x: 630.42, y: 727.11), control2: CGPoint(x: 948.71, y: 973.07))
            p1MPath.addCurve(to: CGPoint(x: 1083.13, y: 602.84), control1: CGPoint(x: 1229.6, y: 838.64), control2: CGPoint(x: 1226.27, y: 682.5))
            
            
            
            //// p1End Drawing
            p1EndPath.move(to: CGPoint(x: 1059.83, y: 714.36))
            p1EndPath.addLine(to: CGPoint(x: 1039.86, y: 500.87))
            p1EndPath.addLine(to: CGPoint(x: 1129.73, y: 513.62))
            p1EndPath.addLine(to: CGPoint(x: 1129.73, y: 714.36))
            p1EndPath.addLine(to: CGPoint(x: 1059.83, y: 714.36))
            p1EndPath.closeSubpath()
            
            
            //// p2End Drawing
            p2EndPath.move(to: CGPoint(x: 347.47, y: 707.99))
            p2EndPath.addLine(to: CGPoint(x: 327.5, y: 494.5))
            p2EndPath.addLine(to: CGPoint(x: 417.38, y: 507.25))
            p2EndPath.addLine(to: CGPoint(x: 417.38, y: 707.99))
            p2EndPath.addLine(to: CGPoint(x: 347.47, y: 707.99))
            p2EndPath.closeSubpath()
            
            
            //// p3End Drawing
            p3EndPath.move(to: CGPoint(x: 580.49, y: 813.14))
            p3EndPath.addLine(to: CGPoint(x: 667.03, y: 813.14))
            p3EndPath.addLine(to: CGPoint(x: 667.03, y: 755.79))
            p3EndPath.addLine(to: CGPoint(x: 580.49, y: 755.79))
            p3EndPath.addLine(to: CGPoint(x: 580.49, y: 813.14))
            p3EndPath.addLine(to: CGPoint(x: 580.49, y: 813.14))
            p3EndPath.addLine(to: CGPoint(x: 580.49, y: 813.14))
            
            
            
            //// p3M Drawing
            p3MPath.move(to: CGPoint(x: 633.75, y: 1284.74))
            p3MPath.addLine(to: CGPoint(x: 633.75, y: 860.94))
            
            parts = [p1Path,p2Path,p3Path,p4Path]
            ends = [p1EndPath,p2EndPath,p3EndPath,p4EndPath]
            paths = [p1MPath,p2MPath,p3MPath,p4MPath]
            
            
            
            
            break
        case 18 : //aen
            p2Path.move(to: CGPoint(x: 983.43, y: 1124.62))
            p2Path.addLine(to: CGPoint(x: 854.48, y: 1071.93))
            p2Path.addLine(to: CGPoint(x: 714.77, y: 987.64))
            p2Path.addCurve(to: CGPoint(x: 736.59, y: 491.38), control1: CGPoint(x: 714.77, y: 987.64), control2: CGPoint(x: 395.53, y: 644.65))
            p2Path.addCurve(to: CGPoint(x: 1153.59, y: 658.82), control1: CGPoint(x: 1077.65, y: 338.12), control2: CGPoint(x: 1153.59, y: 658.82))
            p2Path.addCurve(to: CGPoint(x: 771.11, y: 667.83), control1: CGPoint(x: 1153.59, y: 658.82), control2: CGPoint(x: 961.66, y: 513.28))
            p2Path.addCurve(to: CGPoint(x: 972.14, y: 1023.19), control1: CGPoint(x: 580.56, y: 822.39), control2: CGPoint(x: 972.14, y: 1023.19))
            p2Path.addLine(to: CGPoint(x: 983.43, y: 1124.62))
            p2Path.closeSubpath()
            
            
            
            
            
            //// p1 Drawing
            p1Path.move(to: CGPoint(x: 738.93, y: 1216.4))
            p1Path.addCurve(to: CGPoint(x: 905.91, y: 1256.83), control1: CGPoint(x: 738.93, y: 1216.4), control2: CGPoint(x: 831.56, y: 1285.72))
            p1Path.addCurve(to: CGPoint(x: 921.75, y: 1341.17), control1: CGPoint(x: 980.26, y: 1227.95), control2: CGPoint(x: 921.75, y: 1341.17))
            p1Path.addCurve(to: CGPoint(x: 621.92, y: 1216.4), control1: CGPoint(x: 921.75, y: 1341.17), control2: CGPoint(x: 738.93, y: 1403.56))
            p1Path.addCurve(to: CGPoint(x: 709.68, y: 987.64), control1: CGPoint(x: 504.92, y: 1029.23), control2: CGPoint(x: 709.68, y: 987.64))
            p1Path.addLine(to: CGPoint(x: 970.51, y: 1022.3))
            p1Path.addLine(to: CGPoint(x: 985.13, y: 1126.28))
            p1Path.addLine(to: CGPoint(x: 855.94, y: 1073.14))
            p1Path.addCurve(to: CGPoint(x: 738.93, y: 1216.4), control1: CGPoint(x: 855.94, y: 1073.14), control2: CGPoint(x: 658.49, y: 1114.73))
            
            
            
            //// p1M Drawing
            p1MPath.move(to: CGPoint(x: 917.16, y: 1294.96))
            p1MPath.addCurve(to: CGPoint(x: 637.75, y: 1112.32), control1: CGPoint(x: 917.16, y: 1294.96), control2: CGPoint(x: 643.2, y: 1315.24))
            p1MPath.addCurve(to: CGPoint(x: 945.82, y: 1059.64), control1: CGPoint(x: 634.17, y: 978.86), control2: CGPoint(x: 935.08, y: 1049.1))
            
            
            
            //// p2M Drawin
            p2MPath.move(to: CGPoint(x: 949.4, y: 1052.62))
            p2MPath.addCurve(to: CGPoint(x: 673.58, y: 648.71), control1: CGPoint(x: 949.4, y: 1052.62), control2: CGPoint(x: 530.29, y: 877))
            p2MPath.addCurve(to: CGPoint(x: 1114.18, y: 610.08), control1: CGPoint(x: 816.86, y: 420.41), control2: CGPoint(x: 1114.18, y: 610.08))
            
            
            
            //// p1End Drawing
            p1EndPath.move(to: CGPoint(x: 988.81, y: 1122.86))
            p1EndPath.addLine(to: CGPoint(x: 913.58, y: 1101.79))
            p1EndPath.addLine(to: CGPoint(x: 913.58, y: 1017.49))
            p1EndPath.addLine(to: CGPoint(x: 965.66, y: 1021.01))
            p1EndPath.addLine(to: CGPoint(x: 988.81, y: 1122.86))
            p1EndPath.closeSubpath()
            
            
            //// p2End Drawing
            p2EndPath.move(to: CGPoint(x: 1064.03, y: 627.64))
            p2EndPath.addLine(to: CGPoint(x: 1128.51, y: 553.88))
            p2EndPath.addLine(to: CGPoint(x: 1171.5, y: 680.32))
            p2EndPath.addLine(to: CGPoint(x: 1064.03, y: 627.64))
            p2EndPath.closeSubpath()
            
            parts = [p1Path,p2Path]
            ends = [p1EndPath,p2EndPath]
            paths = [p1MPath,p2MPath]
            break
        case 19: //ghain
            p2Path.move(to: CGPoint(x: 983.43, y: 1124.62))
            p2Path.addLine(to: CGPoint(x: 854.48, y: 1071.93))
            p2Path.addLine(to: CGPoint(x: 714.77, y: 987.64))
            p2Path.addCurve(to: CGPoint(x: 736.59, y: 491.38), control1: CGPoint(x: 714.77, y: 987.64), control2: CGPoint(x: 395.53, y: 644.65))
            p2Path.addCurve(to: CGPoint(x: 1153.59, y: 658.82), control1: CGPoint(x: 1077.65, y: 338.12), control2: CGPoint(x: 1153.59, y: 658.82))
            p2Path.addCurve(to: CGPoint(x: 771.11, y: 667.83), control1: CGPoint(x: 1153.59, y: 658.82), control2: CGPoint(x: 961.66, y: 513.28))
            p2Path.addCurve(to: CGPoint(x: 972.14, y: 1023.19), control1: CGPoint(x: 580.56, y: 822.39), control2: CGPoint(x: 972.14, y: 1023.19))
            p2Path.addLine(to: CGPoint(x: 983.43, y: 1124.62))
            p2Path.closeSubpath()
            
            
            //// p3 Drawing
            p3Path.move(to: CGPoint(x: 802.22, y: 1593.5))
            p3Path.addLine(to: CGPoint(x: 874.18, y: 1527.38))
            p3Path.addLine(to: CGPoint(x: 802.22, y: 1456.52))
            p3Path.addLine(to: CGPoint(x: 734.47, y: 1527.38))
            p3Path.addLine(to: CGPoint(x: 802.22, y: 1593.5))
            p3Path.addLine(to: CGPoint(x: 802.22, y: 1593.5))
            p3MPath.move(to: CGPoint(x: 802.22, y: 1456.52))
            p3EndPath = p3Path
            
            
            //// p1 Drawing
            p1Path.move(to: CGPoint(x: 738.93, y: 1216.4))
            p1Path.addCurve(to: CGPoint(x: 905.91, y: 1256.83), control1: CGPoint(x: 738.93, y: 1216.4), control2: CGPoint(x: 831.56, y: 1285.72))
            p1Path.addCurve(to: CGPoint(x: 921.75, y: 1341.17), control1: CGPoint(x: 980.26, y: 1227.95), control2: CGPoint(x: 921.75, y: 1341.17))
            p1Path.addCurve(to: CGPoint(x: 621.92, y: 1216.4), control1: CGPoint(x: 921.75, y: 1341.17), control2: CGPoint(x: 738.93, y: 1403.56))
            p1Path.addCurve(to: CGPoint(x: 709.68, y: 987.64), control1: CGPoint(x: 504.92, y: 1029.23), control2: CGPoint(x: 709.68, y: 987.64))
            p1Path.addLine(to: CGPoint(x: 970.51, y: 1022.3))
            p1Path.addLine(to: CGPoint(x: 985.13, y: 1126.28))
            p1Path.addLine(to: CGPoint(x: 855.94, y: 1073.14))
            p1Path.addCurve(to: CGPoint(x: 738.93, y: 1216.4), control1: CGPoint(x: 855.94, y: 1073.14), control2: CGPoint(x: 658.49, y: 1114.73))
            
            
            
            //// p1M Drawing
            p1MPath.move(to: CGPoint(x: 917.16, y: 1294.96))
            p1MPath.addCurve(to: CGPoint(x: 637.75, y: 1112.32), control1: CGPoint(x: 917.16, y: 1294.96), control2: CGPoint(x: 643.2, y: 1315.24))
            p1MPath.addCurve(to: CGPoint(x: 945.82, y: 1059.64), control1: CGPoint(x: 634.17, y: 978.86), control2: CGPoint(x: 935.08, y: 1049.1))
            
            
            
            //// p2M Drawin
            p2MPath.move(to: CGPoint(x: 949.4, y: 1052.62))
            p2MPath.addCurve(to: CGPoint(x: 673.58, y: 648.71), control1: CGPoint(x: 949.4, y: 1052.62), control2: CGPoint(x: 530.29, y: 877))
            p2MPath.addCurve(to: CGPoint(x: 1114.18, y: 610.08), control1: CGPoint(x: 816.86, y: 420.41), control2: CGPoint(x: 1114.18, y: 610.08))
            
            
            
            //// p1End Drawing
            p1EndPath.move(to: CGPoint(x: 988.81, y: 1122.86))
            p1EndPath.addLine(to: CGPoint(x: 913.58, y: 1101.79))
            p1EndPath.addLine(to: CGPoint(x: 913.58, y: 1017.49))
            p1EndPath.addLine(to: CGPoint(x: 965.66, y: 1021.01))
            p1EndPath.addLine(to: CGPoint(x: 988.81, y: 1122.86))
            p1EndPath.closeSubpath()
            
            
            //// p2End Drawing
            p2EndPath.move(to: CGPoint(x: 1064.03, y: 627.64))
            p2EndPath.addLine(to: CGPoint(x: 1128.51, y: 553.88))
            p2EndPath.addLine(to: CGPoint(x: 1171.5, y: 680.32))
            p2EndPath.addLine(to: CGPoint(x: 1064.03, y: 627.64))
            p2EndPath.closeSubpath()
            
            parts = [p1Path,p2Path,p3Path]
            ends = [p1EndPath,p2EndPath,p3EndPath]
            paths = [p1MPath,p2MPath,p3MPath]
            break
        case 20 :  //fa
            //// p1 Drawing
            
            p1Path.move(to: CGPoint(x: 1059.93, y: 883.75))
            p1Path.addCurve(to: CGPoint(x: 937.76, y: 894.95), control1: CGPoint(x: 1059.93, y: 883.75), control2: CGPoint(x: 953.03, y: 855.76))
            p1Path.addCurve(to: CGPoint(x: 1033.75, y: 917.34), control1: CGPoint(x: 922.49, y: 934.13), control2: CGPoint(x: 998.85, y: 950.92))
            p1Path.addCurve(to: CGPoint(x: 1107.92, y: 797.92), control1: CGPoint(x: 1068.65, y: 883.75), control2: CGPoint(x: 1083.92, y: 825.91))
            p1Path.addCurve(to: CGPoint(x: 1105.74, y: 699.03), control1: CGPoint(x: 1131.92, y: 769.93), control2: CGPoint(x: 1129.74, y: 712.09))
            p1Path.addCurve(to: CGPoint(x: 1035.93, y: 672.91), control1: CGPoint(x: 1103.05, y: 697.57), control2: CGPoint(x: 1071.47, y: 677.58))
            p1Path.addCurve(to: CGPoint(x: 1070.84, y: 504.98), control1: CGPoint(x: 979.21, y: 665.44), control2: CGPoint(x: 965.17, y: 497.81))
            p1Path.addCurve(to: CGPoint(x: 1221.36, y: 637.46), control1: CGPoint(x: 1208.27, y: 514.31), control2: CGPoint(x: 1206.82, y: 568.64))
            p1Path.addCurve(to: CGPoint(x: 920.31, y: 1006.9), control1: CGPoint(x: 1254.08, y: 792.32), control2: CGPoint(x: 1044.66, y: 1187.89))
            p1Path.addCurve(to: CGPoint(x: 874.5, y: 777.4), control1: CGPoint(x: 864.71, y: 925.97), control2: CGPoint(x: 845.15, y: 822.9))
            p1Path.addCurve(to: CGPoint(x: 1031.57, y: 747.54), control1: CGPoint(x: 910.79, y: 721.15), control2: CGPoint(x: 1007.45, y: 733.1))
            p1Path.addCurve(to: CGPoint(x: 1105.74, y: 799.79), control1: CGPoint(x: 1057.1, y: 762.83), control2: CGPoint(x: 1103.57, y: 796.78))
            
            
            
            //// p2 Drawing
            p2Path.move(to: CGPoint(x: 1127.56, y: 516.17))
            p2Path.addLine(to: CGPoint(x: 1075.2, y: 684.1))
            p2Path.addCurve(to: CGPoint(x: 385.84, y: 695.3), control1: CGPoint(x: 1075.2, y: 684.1), control2: CGPoint(x: 564.73, y: 602))
            p2Path.addCurve(to: CGPoint(x: 333.49, y: 866.96), control1: CGPoint(x: 315.39, y: 732.04), control2: CGPoint(x: 353.63, y: 852.49))
            p2Path.addCurve(to: CGPoint(x: 237.5, y: 680.37), control1: CGPoint(x: 302.49, y: 889.23), control2: CGPoint(x: 237.5, y: 782.16))
            p2Path.addCurve(to: CGPoint(x: 595.27, y: 482.59), control1: CGPoint(x: 237.5, y: 512.44), control2: CGPoint(x: 364.03, y: 497.52))
            p2Path.addCurve(to: CGPoint(x: 1127.56, y: 516.17), control1: CGPoint(x: 826.51, y: 467.66), control2: CGPoint(x: 1127.56, y: 516.17))
            p2Path.closeSubpath()
            
            
            //// p3 Drawing
            p3Path.move(to: CGPoint(x: 911.58, y: 1242))
            p3Path.addLine(to: CGPoint(x: 826.96, y: 1166.54))
            p3Path.addLine(to: CGPoint(x: 915.94, y: 1092.73))
            p3Path.addLine(to: CGPoint(x: 1001.48, y: 1166.54))
            p3Path.addLine(to: CGPoint(x: 911.58, y: 1242))
            p3Path.closeSubpath()
            p3EndPath = p3Path
            p3MPath.move(to:CGPoint(x:915.94, y:1092.73))
            
            
            //// p1End Drawing
            p1EndPath.move(to: CGPoint(x: 1070.84, y: 676.64))
            p1EndPath.addLine(to: CGPoint(x: 1001.03, y: 676.64))
            p1EndPath.addLine(to: CGPoint(x: 1035.93, y: 504.98))
            p1EndPath.addLine(to: CGPoint(x: 1127.56, y: 516.17))
            p1EndPath.addLine(to: CGPoint(x: 1070.84, y: 676.64))
            p1EndPath.closeSubpath()
            
            
            //// p2End Drawing
            p2EndPath.move(to: CGPoint(x: 364.03, y: 759.68))
            p2EndPath.addCurve(to: CGPoint(x: 237.5, y: 792.78), control1: CGPoint(x: 364.03, y: 773.86), control2: CGPoint(x: 237.5, y: 792.78))
            p2EndPath.addLine(to: CGPoint(x: 329.96, y: 896.81))
            p2EndPath.addCurve(to: CGPoint(x: 364.03, y: 759.68), control1: CGPoint(x: 329.96, y: 896.81), control2: CGPoint(x: 364.03, y: 745.49))
            p2EndPath.closeSubpath()
            
            
            //// p1M Drawing
            p1MPath.move(to: CGPoint(x: 1062.11, y: 840.84))
            p1MPath.addCurve(to: CGPoint(x: 948.67, y: 971.45), control1: CGPoint(x: 1062.11, y: 840.84), control2: CGPoint(x: 809.06, y: 732.62))
            p1MPath.addCurve(to: CGPoint(x: 1083.92, y: 583.35), control1: CGPoint(x: 1088.29, y: 1210.28), control2: CGPoint(x: 1306.44, y: 583.35))
            
            //// p2M Drawing
            p2MPath.move(to: CGPoint(x: 1066.47, y: 587.08))
            p2MPath.addCurve(to: CGPoint(x: 302.95, y: 810.98), control1: CGPoint(x: 1066.47, y: 587.08), control2: CGPoint(x: 176.42, y: 389.29))
            
            
            
            parts = [p1Path,p2Path,p3Path]
            ends = [p1EndPath,p2EndPath,p3EndPath]
            paths = [p1MPath,p2MPath,p3MPath]
            
            break
        case 21 :  //qaf
            //// p1 Drawing
            
            p1Path.move(to: CGPoint(x: 981.21, y: 1042.69))
            p1Path.addCurve(to: CGPoint(x: 808.16, y: 1056.92), control1: CGPoint(x: 981.21, y: 1042.69), control2: CGPoint(x: 819.32, y: 1025.29))
            p1Path.addCurve(to: CGPoint(x: 929.11, y: 1090.13), control1: CGPoint(x: 797, y: 1088.55), control2: CGPoint(x: 856.54, y: 1126.5))
            p1Path.addCurve(to: CGPoint(x: 1009.12, y: 946.22), control1: CGPoint(x: 1001.67, y: 1053.76), control2: CGPoint(x: 988.65, y: 969.94))
            p1Path.addCurve(to: CGPoint(x: 1024, y: 740.63), control1: CGPoint(x: 1029.59, y: 922.49), control2: CGPoint(x: 1037.03, y: 821.28))
            p1Path.addLine(to: CGPoint(x: 1005.4, y: 731.14))
            p1Path.addLine(to: CGPoint(x: 1035.17, y: 582.48))
            p1Path.addCurve(to: CGPoint(x: 1139.37, y: 845), control1: CGPoint(x: 1117.04, y: 683.69), control2: CGPoint(x: 1136.89, y: 776.84))
            p1Path.addCurve(to: CGPoint(x: 834.21, y: 1224.55), control1: CGPoint(x: 1144.95, y: 998.4), control2: CGPoint(x: 1020.28, y: 1376.37))
            p1Path.addCurve(to: CGPoint(x: 730.01, y: 952.54), control1: CGPoint(x: 751, y: 1156.66), control2: CGPoint(x: 727, y: 1019.06))
            p1Path.addCurve(to: CGPoint(x: 852.82, y: 870.31), control1: CGPoint(x: 733.73, y: 870.31), control2: CGPoint(x: 852.82, y: 870.31))
            p1Path.addCurve(to: CGPoint(x: 1009.12, y: 946.22), control1: CGPoint(x: 907.96, y: 863.61), control2: CGPoint(x: 1007.27, y: 943.66))
            
            
            
            //// p3 Drawing
            p3Path.move(to: CGPoint(x: 961.71, y: 1461.5))
            p3Path.addLine(to: CGPoint(x: 895.96, y: 1396.69))
            p3Path.addLine(to: CGPoint(x: 971.83, y: 1340.82))
            p3Path.addLine(to: CGPoint(x: 1035.06, y: 1405.63))
            p3Path.addLine(to: CGPoint(x: 961.71, y: 1461.5))
            p3Path.closeSubpath()
            p3MPath.move(to: CGPoint(x: 971.83, y: 1340.82))
            p3EndPath = p3Path
            
            //// p2 Drawing
            p2Path.move(to: CGPoint(x: 1055.64, y: 761.18))
            p2Path.addLine(to: CGPoint(x: 1089.13, y: 669.46))
            p2Path.addCurve(to: CGPoint(x: 1016.56, y: 560.34), control1: CGPoint(x: 1089.13, y: 669.46), control2: CGPoint(x: 1038.89, y: 569.83))
            p2Path.addCurve(to: CGPoint(x: 402.52, y: 671.04), control1: CGPoint(x: 994.23, y: 550.85), control2: CGPoint(x: 495.56, y: 316.79))
            p2Path.addCurve(to: CGPoint(x: 529.05, y: 971.52), control1: CGPoint(x: 371.77, y: 788.15), control2: CGPoint(x: 477.71, y: 974.49))
            p2Path.addCurve(to: CGPoint(x: 529.05, y: 762.77), control1: CGPoint(x: 555.73, y: 969.98), control2: CGPoint(x: 509.78, y: 804.26))
            p2Path.addCurve(to: CGPoint(x: 886.31, y: 690.02), control1: CGPoint(x: 584.87, y: 642.58), control2: CGPoint(x: 808.16, y: 664.72))
            p2Path.addCurve(to: CGPoint(x: 1055.64, y: 761.18), control1: CGPoint(x: 1043.36, y: 740.87), control2: CGPoint(x: 1055.64, y: 761.18))
            p2Path.closeSubpath()
            
            //// p1End Drawing
            p1EndPath.move(to: CGPoint(x: 1035.06, y: 767.62))
            p1EndPath.addCurve(to: CGPoint(x: 1005.5, y: 729.9), control1: CGPoint(x: 1035.06, y: 767.62), control2: CGPoint(x: 1005.5, y: 744.99))
            p1EndPath.addCurve(to: CGPoint(x: 1035.06, y: 583.59), control1: CGPoint(x: 1005.5, y: 714.82), control2: CGPoint(x: 1035.06, y: 583.59))
            p1EndPath.addLine(to: CGPoint(x: 1090.7, y: 668.06))
            p1EndPath.addLine(to: CGPoint(x: 1035.06, y: 767.62))
            p1EndPath.closeSubpath()
            
            
            //// p2End Drawing
            p2EndPath.move(to: CGPoint(x: 555.17, y: 897.34))
            p2EndPath.addLine(to: CGPoint(x: 443.89, y: 897.34))
            p2EndPath.addLine(to: CGPoint(x: 523.87, y: 1030.09))
            p2EndPath.addLine(to: CGPoint(x: 555.17, y: 897.34))
            p2EndPath.closeSubpath()
            
            
            //// p1M Drawing
            p1MPath.move(to: CGPoint(x: 972.46, y: 978.8))
            p1MPath.addCurve(to: CGPoint(x: 843.8, y: 1159.81), control1: CGPoint(x: 972.46, y: 978.8), control2: CGPoint(x: 600.38, y: 882.26))
            p1MPath.addCurve(to: CGPoint(x: 1045.49, y: 677.11), control1: CGPoint(x: 1087.22, y: 1437.36), control2: CGPoint(x: 1045.49, y: 677.11))
            
            
            
            //// p4 Drawing
            p4Path.move(to: CGPoint(x: 812.18, y: 1452.45))
            p4Path.addLine(to: CGPoint(x: 746.43, y: 1387.64))
            p4Path.addLine(to: CGPoint(x: 822.3, y: 1331.77))
            p4Path.addLine(to: CGPoint(x: 885.53, y: 1396.58))
            p4Path.addLine(to: CGPoint(x: 812.18, y: 1452.45))
            p4Path.closeSubpath()
            p4MPath.move(to: CGPoint(x: 822.3, y: 1331.77))
            p4EndPath = p4Path
            
            
            //// p2M Drawing
            p2MPath.move(to: CGPoint(x: 1047.23, y: 675.6))
            p2MPath.addCurve(to: CGPoint(x: 506.49, y: 924.49), control1: CGPoint(x: 1047.23, y: 675.6), control2: CGPoint(x: 336.09, y: 345.25))
            
            
            
            
            parts = [p1Path,p2Path,p3Path,p4Path]
            ends = [p1EndPath,p2EndPath,p3EndPath,p4EndPath]
            paths = [p1MPath,p2MPath,p3MPath,p4MPath]
            break
        case 22 :  //kaf
            
            p2Path.move(to: CGPoint(x: 1186.85, y: 753.25))
            p2Path.addCurve(to: CGPoint(x: 685.47, y: 489.19), control1: CGPoint(x: 1158.55, y: 637.96), control2: CGPoint(x: 1182.81, y: 504.07))
            p2Path.addCurve(to: CGPoint(x: 398.4, y: 515.23), control1: CGPoint(x: 554.84, y: 485.29), control2: CGPoint(x: 434.41, y: 483.43))
            p2Path.addCurve(to: CGPoint(x: 353.92, y: 794.16), control1: CGPoint(x: 350.05, y: 557.91), control2: CGPoint(x: 302.03, y: 848.7))
            p2Path.addCurve(to: CGPoint(x: 1077.68, y: 797.88), control1: CGPoint(x: 410.53, y: 734.66), control2: CGPoint(x: 763.34, y: 729.96))
            p2Path.addLine(to: CGPoint(x: 1186.85, y: 753.25))
            p2Path.closeSubpath()
            
            
            //// p1M Drawing
            p1MPath.move(to: CGPoint(x: 1110.29, y: 1345.17))
            p1MPath.addLine(to: CGPoint(x: 1143.66, y: 712.31))
            
            
            
            //// p3 Drawing
            p3Path.move(to: CGPoint(x: 704.14, y: 1136.68))
            p3Path.addCurve(to: CGPoint(x: 808.31, y: 1167.68), control1: CGPoint(x: 719.83, y: 1189.79), control2: CGPoint(x: 808.31, y: 1167.68))
            p3Path.addLine(to: CGPoint(x: 840.36, y: 1249.06))
            p3Path.addCurve(to: CGPoint(x: 676.1, y: 1183.18), control1: CGPoint(x: 840.36, y: 1249.06), control2: CGPoint(x: 756.23, y: 1318.81))
            p3Path.addCurve(to: CGPoint(x: 704.14, y: 1016.56), control1: CGPoint(x: 595.97, y: 1047.56), control2: CGPoint(x: 636.03, y: 1032.06))
            p3Path.addCurve(to: CGPoint(x: 712.15, y: 954.56), control1: CGPoint(x: 772.25, y: 1001.06), control2: CGPoint(x: 816.32, y: 1001.06))
            p3Path.addCurve(to: CGPoint(x: 628.02, y: 904.19), control1: CGPoint(x: 607.99, y: 908.06), control2: CGPoint(x: 523.85, y: 950.69))
            p3Path.addCurve(to: CGPoint(x: 812.32, y: 954.56), control1: CGPoint(x: 732.19, y: 857.69), control2: CGPoint(x: 812.32, y: 954.56))
            p3Path.addCurve(to: CGPoint(x: 804.31, y: 1090.18), control1: CGPoint(x: 812.32, y: 954.56), control2: CGPoint(x: 920.49, y: 1074.68))
            p3Path.addCurve(to: CGPoint(x: 704.14, y: 1136.68), control1: CGPoint(x: 765.02, y: 1095.42), control2: CGPoint(x: 696.13, y: 1109.56))
            p3Path.closeSubpath()
            
            
            //// p2End Drawing
            p2EndPath.addRect( CGRect(x: 335.5, y: 485.5, width: 100, height: 307))
            
            
            //// p3End Drawing
            p3EndPath.move(to: CGPoint(x: 661.56, y: 968.38))
            p3EndPath.addLine(to: CGPoint(x: 661.56, y: 869.61))
            p3EndPath.addLine(to: CGPoint(x: 557.72, y: 926.48))
            p3EndPath.addLine(to: CGPoint(x: 661.56, y: 968.38))
            p3EndPath.closeSubpath()
            
            
            //// p3M Drawing
            p3MPath.move(to: CGPoint(x: 791.35, y: 1228.11))
            p3MPath.addCurve(to: CGPoint(x: 735.73, y: 1056.18), control1: CGPoint(x: 791.35, y: 1228.11), control2: CGPoint(x: 565.14, y: 1151.29))
            p3MPath.addCurve(to: CGPoint(x: 646.72, y: 917.17), control1: CGPoint(x: 906.32, y: 961.06), control2: CGPoint(x: 757.98, y: 931.8))
            
            
            
            //// p1 Drawing
            p1Path.move(to: CGPoint(x: 1023.09, y: 1316.7))
            p1Path.addLine(to: CGPoint(x: 990.75, y: 1342.73))
            p1Path.addLine(to: CGPoint(x: 1087.79, y: 1491.5))
            p1Path.addCurve(to: CGPoint(x: 1247.5, y: 1344.59), control1: CGPoint(x: 1087.79, y: 1491.5), control2: CGPoint(x: 1142.37, y: 1366.91))
            p1Path.addLine(to: CGPoint(x: 1182.81, y: 1210.71))
            p1Path.addLine(to: CGPoint(x: 1146.42, y: 1221.86))
            p1Path.addLine(to: CGPoint(x: 1186.85, y: 753.25))
            p1Path.addCurve(to: CGPoint(x: 1062.07, y: 558.66), control1: CGPoint(x: 1176.47, y: 710.96), control2: CGPoint(x: 1162.2, y: 584.27))
            p1Path.addCurve(to: CGPoint(x: 1077.68, y: 797.88), control1: CGPoint(x: 1062.07, y: 558.66), control2: CGPoint(x: 880.36, y: 774.5))
            p1Path.addLine(to: CGPoint(x: 1023.09, y: 1316.7))
            p1Path.closeSubpath()
            
            
            //// p1End Drawing
            p1EndPath.addRect(CGRect(x: 1023, y: 608, width: 185, height: 183))
            
            
            
            //// p2M Drawing
            p2MPath.move(to: CGPoint(x: 1128.83, y: 715.97))
            p2MPath.addCurve(to: CGPoint(x: 390.84, y: 664.75), control1: CGPoint(x: 1128.83, y: 715.97), control2: CGPoint(x: 661.56, y: 576.95))
            
            
            
            parts = [p1Path,p2Path,p3Path]
            ends = [p1EndPath,p2EndPath,p3EndPath]
            paths = [p1MPath,p2MPath,p3MPath]
            break
        case 23 :
            //// p1 Drawing
            p1Path.move(to: CGPoint(x: 922.68, y: 1343.96))
            p1Path.addLine(to: CGPoint(x: 901.49, y: 1373.33))
            p1Path.addLine(to: CGPoint(x: 974.32, y: 1505.5))
            p1Path.addCurve(to: CGPoint(x: 1093.5, y: 1374.67), control1: CGPoint(x: 974.32, y: 1505.5), control2: CGPoint(x: 1003.45, y: 1393.36))
            p1Path.addLine(to: CGPoint(x: 1040.53, y: 1257.19))
            p1Path.addLine(to: CGPoint(x: 1019.34, y: 1267.87))
            p1Path.addLine(to: CGPoint(x: 1056.42, y: 862.02))
            p1Path.addCurve(to: CGPoint(x: 950.48, y: 581.66), control1: CGPoint(x: 1056.42, y: 862.02), control2: CGPoint(x: 1023.6, y: 667.66))
            p1Path.addCurve(to: CGPoint(x: 696.23, y: 506.9), control1: CGPoint(x: 918.7, y: 544.28), control2: CGPoint(x: 767.65, y: 500.43))
            p1Path.addCurve(to: CGPoint(x: 516.14, y: 843.33), control1: CGPoint(x: 460.52, y: 528.26), control2: CGPoint(x: 476.41, y: 741.87))
            p1Path.addCurve(to: CGPoint(x: 595.74, y: 843.32), control1: CGPoint(x: 555.87, y: 944.79), control2: CGPoint(x: 664.6, y: 1040.9))
            p1Path.addCurve(to: CGPoint(x: 946.51, y: 791.85), control1: CGPoint(x: 526.88, y: 645.74), control2: CGPoint(x: 849.63, y: 586))
            p1Path.addLine(to: CGPoint(x: 922.68, y: 1343.96))
            p1Path.closeSubpath()
            
            
            //// p1M Drawing
            p1MPath.move(to: CGPoint(x: 969.9, y: 1361.4))
            p1MPath.addLine(to: CGPoint(x: 1003.3, y: 802.15))
            p1MPath.addCurve(to: CGPoint(x: 602.42, y: 599.72), control1: CGPoint(x: 970, y: 644.45), control2: CGPoint(x: 698.65, y: 497.79))
            p1MPath.addCurve(to: CGPoint(x: 565.68, y: 881.06), control1: CGPoint(x: 524.88, y: 681.86), control2: CGPoint(x: 565.68, y: 881.06))
            
            
            
            //// p1End Drawing
            p1EndPath.move(to: CGPoint(x: 602.42, y: 819.3))
            p1EndPath.addLine(to: CGPoint(x: 485.5, y: 891.35))
            p1EndPath.addLine(to: CGPoint(x: 639.17, y: 1008.01))
            p1EndPath.addLine(to: CGPoint(x: 602.42, y: 819.3))
            p1EndPath.closeSubpath()
            
            
            parts = [p1Path]
            ends = [p1EndPath]
            paths = [p1MPath]
            break
            
        case 24 :
            //// p1 Drawing
            
            p1Path.move(to: CGPoint(x: 576.2, y: 1312.81))
            p1Path.addCurve(to: CGPoint(x: 588.57, y: 1413), control1: CGPoint(x: 479.26, y: 1225.29), control2: CGPoint(x: 588.57, y: 1413))
            p1Path.addCurve(to: CGPoint(x: 820.04, y: 1462.25), control1: CGPoint(x: 588.57, y: 1413), control2: CGPoint(x: 671.61, y: 1543.76))
            p1Path.addCurve(to: CGPoint(x: 1025, y: 1278.85), control1: CGPoint(x: 968.46, y: 1380.74), control2: CGPoint(x: 1025, y: 1278.85))
            p1Path.addCurve(to: CGPoint(x: 941.95, y: 1032.61), control1: CGPoint(x: 1025, y: 1278.85), control2: CGPoint(x: 968.46, y: 1037.71))
            p1Path.addCurve(to: CGPoint(x: 643.34, y: 932.42), control1: CGPoint(x: 915.45, y: 1027.52), control2: CGPoint(x: 556.76, y: 1290.73))
            p1Path.addCurve(to: CGPoint(x: 609.77, y: 536.75), control1: CGPoint(x: 643.34, y: 932.42), control2: CGPoint(x: 722.85, y: 614.86))
            p1Path.addCurve(to: CGPoint(x: 599.17, y: 730.34), control1: CGPoint(x: 571.89, y: 510.58), control2: CGPoint(x: 630.19, y: 614.79))
            p1Path.addCurve(to: CGPoint(x: 540.86, y: 932.42), control1: CGPoint(x: 570.9, y: 835.63), control2: CGPoint(x: 540.86, y: 932.42))
            p1Path.addCurve(to: CGPoint(x: 782.93, y: 1253.37), control1: CGPoint(x: 471.95, y: 1158.28), control2: CGPoint(x: 510.82, y: 1334.89))
            p1Path.addCurve(to: CGPoint(x: 576.2, y: 1312.81), control1: CGPoint(x: 782.93, y: 1253.37), control2: CGPoint(x: 692.82, y: 1418.1))
            p1Path.closeSubpath()
            
            //// p1M Drawing
            p1MPath.move(to: CGPoint(x: 564.02, y: 1331.04))
            p1MPath.addCurve(to: CGPoint(x: 916.13, y: 1276.44), control1: CGPoint(x: 564.02, y: 1331.04), control2: CGPoint(x: 744.71, y: 1631.36))
            p1MPath.addCurve(to: CGPoint(x: 573.29, y: 1065.83), control1: CGPoint(x: 1087.54, y: 921.52), control2: CGPoint(x: 466.73, y: 1428.55))
            p1MPath.addCurve(to: CGPoint(x: 624.25, y: 605.61), control1: CGPoint(x: 679.85, y: 703.11), control2: CGPoint(x: 624.25, y: 605.61))
            
            
            
            //// p1End Drawing
            p1EndPath.move(to: CGPoint(x: 689.11, y: 636.81))
            p1EndPath.addLine(to: CGPoint(x: 554.76, y: 636.81))
            p1EndPath.addLine(to: CGPoint(x: 591.82, y: 492.5))
            p1EndPath.addLine(to: CGPoint(x: 689.11, y: 636.81))
            p1EndPath.closeSubpath()
            
            
            
            
            
            parts = [p1Path]
            ends = [p1EndPath]
            paths = [p1MPath]
            
            break
        case 25 :
            //// p1 Drawing
            p1Path.move(to: CGPoint(x: 1005.05, y: 773.47))
            p1Path.addCurve(to: CGPoint(x: 912.64, y: 1059.49), control1: CGPoint(x: 1025.21, y: 819.36), control2: CGPoint(x: 912.64, y: 1059.49))
            p1Path.addLine(to: CGPoint(x: 1003.37, y: 1209.38))
            p1Path.addCurve(to: CGPoint(x: 1025.21, y: 562.41), control1: CGPoint(x: 1003.37, y: 1209.38), control2: CGPoint(x: 1220.09, y: 972.31))
            p1Path.addCurve(to: CGPoint(x: 480.87, y: 562.41), control1: CGPoint(x: 1025.21, y: 562.41), control2: CGPoint(x: 648.88, y: 378.87))
            p1Path.addCurve(to: CGPoint(x: 514.47, y: 880.54), control1: CGPoint(x: 312.87, y: 745.94), control2: CGPoint(x: 638.8, y: 1226.2))
            p1Path.addCurve(to: CGPoint(x: 1005.05, y: 773.47), control1: CGPoint(x: 437.23, y: 665.78), control2: CGPoint(x: 971.97, y: 698.2))
            p1Path.closeSubpath()
            
            
            //// p2 Drawing
            p2Path.move(to: CGPoint(x: 745.39, y: 1377.5))
            p2Path.addLine(to: CGPoint(x: 663.49, y: 1296.71))
            p2Path.addLine(to: CGPoint(x: 745.39, y: 1209.38))
            p2Path.addLine(to: CGPoint(x: 824.29, y: 1292.5))
            p2Path.addLine(to: CGPoint(x: 745.39, y: 1377.5))
            p2Path.closeSubpath()
            p2MPath.move(to: CGPoint(x: 745.39, y: 1209.38))
            p2EndPath = p2Path
            
            
            //// p1M Drawing
            p1MPath.move(to: CGPoint(x: 981.8, y: 1082.49))
            p1MPath.addCurve(to: CGPoint(x: 801.32, y: 555.91), control1: CGPoint(x: 978.52, y: 1079.32), control2: CGPoint(x: 1257.45, y: 666.93))
            p1MPath.addCurve(to: CGPoint(x: 499.41, y: 936.57), control1: CGPoint(x: 345.18, y: 444.88), control2: CGPoint(x: 499.41, y: 936.57))
            
            
            
            //// p1End Drawing
            p1EndPath.move(to: CGPoint(x: 555.2, y: 888.99))
            p1EndPath.addLine(to: CGPoint(x: 430.5, y: 930.22))
            p1EndPath.addLine(to: CGPoint(x: 555.2, y: 1041.25))
            p1EndPath.addLine(to: CGPoint(x: 555.2, y: 888.99))
            p1EndPath.closeSubpath()
            
            
            
            
            parts = [p1Path,p2Path]
            ends = [p1EndPath,p2EndPath]
            paths = [p1MPath,p2MPath]
            break
        case 26 :
            //// p1 Drawing
            p1Path.move(to: CGPoint(x: 713.34, y: 935.97))
            p1Path.addCurve(to: CGPoint(x: 891.09, y: 806.04), control1: CGPoint(x: 713.34, y: 935.97), control2: CGPoint(x: 876.28, y: 860.11))
            p1Path.addCurve(to: CGPoint(x: 757.7, y: 732.35), control1: CGPoint(x: 897.32, y: 783.26), control2: CGPoint(x: 789.56, y: 736.22))
            p1Path.addCurve(to: CGPoint(x: 716.46, y: 934.77), control1: CGPoint(x: 630.29, y: 716.83), control2: CGPoint(x: 678.51, y: 885.48))
            p1Path.addCurve(to: CGPoint(x: 644.86, y: 966.5), control1: CGPoint(x: 718.29, y: 937.15), control2: CGPoint(x: 644.86, y: 966.5))
            p1Path.addCurve(to: CGPoint(x: 715.9, y: 606.29), control1: CGPoint(x: 578.17, y: 854.99), control2: CGPoint(x: 493.77, y: 591.06))
            p1Path.addCurve(to: CGPoint(x: 937.87, y: 936.94), control1: CGPoint(x: 998.59, y: 625.69), control2: CGPoint(x: 985.65, y: 851.61))
            p1Path.addCurve(to: CGPoint(x: 682.05, y: 1110.5), control1: CGPoint(x: 890.09, y: 1022.26), control2: CGPoint(x: 682.05, y: 1110.5))
            p1Path.addLine(to: CGPoint(x: 628.3, y: 968.93))
            p1Path.addLine(to: CGPoint(x: 644.23, y: 965.06))
            
            
            
            //// p1M Drawing
            p1MPath.move(to: CGPoint(x: 698.56, y: 993.34))
            p1MPath.addCurve(to: CGPoint(x: 811.07, y: 688.25), control1: CGPoint(x: 698.56, y: 993.34), control2: CGPoint(x: 1146.06, y: 863.99))
            p1MPath.addCurve(to: CGPoint(x: 665.32, y: 944.53), control1: CGPoint(x: 476.09, y: 512.52), control2: CGPoint(x: 665.32, y: 944.53))
            
            //// p1End Drawing
            p1EndPath.move(to: CGPoint(x: 615.5, y: 991.5))
            p1EndPath.addLine(to: CGPoint(x: 733.5, y: 926.53))
            p1EndPath.addLine(to: CGPoint(x: 668.29, y: 857.5))
            p1EndPath.addLine(to: CGPoint(x: 615.5, y: 926.53))
            p1EndPath.addLine(to: CGPoint(x: 615.5, y: 991.5))
            p1EndPath.closeSubpath()
            
            
            parts = [p1Path]
            ends = [p1EndPath]
            paths = [p1MPath]
            
            break
        case 27 :
            
            //// p1 Drawing
            p1Path.move(to: CGPoint(x: 991.78, y: 1010.18))
            p1Path.addCurve(to: CGPoint(x: 1043.19, y: 1228.62), control1: CGPoint(x: 1068.89, y: 1082.24), control2: CGPoint(x: 1110.96, y: 1070.98))
            p1Path.addCurve(to: CGPoint(x: 804.83, y: 1302.93), control1: CGPoint(x: 975.42, y: 1386.25), control2: CGPoint(x: 886.62, y: 1433.55))
            p1Path.addCurve(to: CGPoint(x: 821.76, y: 955.94), control1: CGPoint(x: 723.04, y: 1172.32), control2: CGPoint(x: 651.17, y: 1000.98))
            p1Path.addCurve(to: CGPoint(x: 899.47, y: 955.48), control1: CGPoint(x: 821.76, y: 955.94), control2: CGPoint(x: 871.87, y: 946.55))
            p1Path.addCurve(to: CGPoint(x: 991.78, y: 1010.18), control1: CGPoint(x: 927.27, y: 964.46), control2: CGPoint(x: 962.46, y: 980.8))
            p1Path.addCurve(to: CGPoint(x: 949.71, y: 1138.54), control1: CGPoint(x: 991.78, y: 1010.18), control2: CGPoint(x: 964.83, y: 1141.07))
            p1Path.addCurve(to: CGPoint(x: 821.19, y: 1165.56), control1: CGPoint(x: 895.97, y: 1129.53), control2: CGPoint(x: 825.86, y: 1136.29))
            p1Path.addCurve(to: CGPoint(x: 877.27, y: 1217.36), control1: CGPoint(x: 821.19, y: 1165.56), control2: CGPoint(x: 830.54, y: 1217.36))
            p1Path.addCurve(to: CGPoint(x: 952.05, y: 1136.29), control1: CGPoint(x: 924.01, y: 1217.36), control2: CGPoint(x: 952.05, y: 1136.29))
            
            
            
            //// p2 Drawing
            p2Path.move(to: CGPoint(x: 1077.35, y: 1120.3))
            p2Path.addLine(to: CGPoint(x: 1005.46, y: 1024.98))
            p2Path.addCurve(to: CGPoint(x: 998.65, y: 911.37), control1: CGPoint(x: 1005.46, y: 1024.98), control2: CGPoint(x: 1018.01, y: 960.17))
            p2Path.addCurve(to: CGPoint(x: 625.65, y: 668.15), control1: CGPoint(x: 953.42, y: 797.35), control2: CGPoint(x: 826.95, y: 640.5))
            p2Path.addCurve(to: CGPoint(x: 567.98, y: 574.81), control1: CGPoint(x: 463.92, y: 690.37), control2: CGPoint(x: 393.97, y: 774.22))
            p2Path.addCurve(to: CGPoint(x: 979.44, y: 644.76), control1: CGPoint(x: 703.25, y: 419.8), control2: CGPoint(x: 923.12, y: 545.61))
            p2Path.addCurve(to: CGPoint(x: 1077.35, y: 1120.3), control1: CGPoint(x: 1108.21, y: 871.43), control2: CGPoint(x: 1077.35, y: 1120.3))
            p2Path.closeSubpath()
            
            
            
            
            //// p1M Drawing
            p1MPath.move(to: CGPoint(x: 950.73, y: 1071.11))
            p1MPath.addCurve(to: CGPoint(x: 821.68, y: 1216.87), control1: CGPoint(x: 950.73, y: 1071.11), control2: CGPoint(x: 660.36, y: 1007.73))
            p1MPath.addCurve(to: CGPoint(x: 1020.63, y: 1052.1), control1: CGPoint(x: 982.99, y: 1426.01), control2: CGPoint(x: 1020.63, y: 1052.1))
            
            
            //// p2M Drawing
            p2MPath.move(to: CGPoint(x: 1050.48, y: 983.89))
            p2MPath.addCurve(to: CGPoint(x: 531.11, y: 669.55), control1: CGPoint(x: 1050.48, y: 983.89), control2: CGPoint(x: 948.99, y: 473.82))
            
            
            
            //// p2End Drawing
            p2EndPath.move(to: CGPoint(x: 565.44, y: 700.68))
            p2EndPath.addLine(to: CGPoint(x: 520.67, y: 617.65))
            p2EndPath.addLine(to: CGPoint(x: 455, y: 700.68))
            p2EndPath.addLine(to: CGPoint(x: 565.44, y: 700.68))
            p2EndPath.closeSubpath()
            
            //// p1End Drawing
            p1EndPath.move(to: CGPoint(x: 1077.34, y: 1138.09))
            p1EndPath.addLine(to: CGPoint(x: 969.89, y: 1096.58))
            p1EndPath.addLine(to: CGPoint(x: 990.78, y: 1010.58))
            p1EndPath.addLine(to: CGPoint(x: 1077.34, y: 1096.58))
            p1EndPath.addLine(to: CGPoint(x: 1077.34, y: 1138.09))
            p1EndPath.closeSubpath()
            
            
            
            
            
            parts = [p1Path,p2Path]
            ends = [p1EndPath,p2EndPath]
            paths = [p1MPath,p2MPath]
            
            break
        case 28 :
            
            //// p1 Drawing
            p1Path.move(to: CGPoint(x: 862.62, y: 1136.99))
            p1Path.addCurve(to: CGPoint(x: 1102.21, y: 1290.21), control1: CGPoint(x: 862.62, y: 1136.99), control2: CGPoint(x: 929.57, y: 1407.57))
            p1Path.addCurve(to: CGPoint(x: 1119.83, y: 1443.43), control1: CGPoint(x: 1102.21, y: 1290.21), control2: CGPoint(x: 1176.2, y: 1404.31))
            p1Path.addCurve(to: CGPoint(x: 862.62, y: 1332.59), control1: CGPoint(x: 1119.83, y: 1443.43), control2: CGPoint(x: 1014.94, y: 1543.99))
            p1Path.addCurve(to: CGPoint(x: 767.49, y: 1039.19), control1: CGPoint(x: 753.19, y: 1180.71), control2: CGPoint(x: 709.71, y: 1097.45))
            p1Path.addCurve(to: CGPoint(x: 1081.07, y: 934.87), control1: CGPoint(x: 851.09, y: 954.9), control2: CGPoint(x: 1081.07, y: 934.87))
            p1Path.addCurve(to: CGPoint(x: 1000.03, y: 1101.13), control1: CGPoint(x: 1081.07, y: 934.87), control2: CGPoint(x: 1137.45, y: 1078.31))
            p1Path.addCurve(to: CGPoint(x: 862.62, y: 1136.99), control1: CGPoint(x: 862.62, y: 1123.95), control2: CGPoint(x: 862.62, y: 1136.99))
            p1Path.closeSubpath()
            
            
            //// p2 Drawing
            p2Path.move(to: CGPoint(x: 1035.27, y: 993.55))
            p2Path.addCurve(to: CGPoint(x: 1084.6, y: 944.65), control1: CGPoint(x: 1088.12, y: 990.29), control2: CGPoint(x: 1084.6, y: 943.35))
            p2Path.addCurve(to: CGPoint(x: 658.27, y: 674.08), control1: CGPoint(x: 1084.6, y: 947.91), control2: CGPoint(x: 978.89, y: 674.08))
            p2Path.addCurve(to: CGPoint(x: 425.72, y: 1029.41), control1: CGPoint(x: 337.64, y: 674.08), control2: CGPoint(x: 372.87, y: 921.84))
            p2Path.addCurve(to: CGPoint(x: 499.71, y: 1117.43), control1: CGPoint(x: 425.72, y: 1029.41), control2: CGPoint(x: 542, y: 1273.91))
            p2Path.addCurve(to: CGPoint(x: 633.6, y: 869.68), control1: CGPoint(x: 457.43, y: 960.95), control2: CGPoint(x: 506.76, y: 869.68))
            p2Path.addCurve(to: CGPoint(x: 961.28, y: 957.69), control1: CGPoint(x: 760.44, y: 869.68), control2: CGPoint(x: 1038.79, y: 925.1))
            p2Path.addCurve(to: CGPoint(x: 1035.27, y: 993.55), control1: CGPoint(x: 914.87, y: 977.21), control2: CGPoint(x: 956.4, y: 998.42))
            p2Path.closeSubpath()
            
            
            //// p1M Drawing
            p1MPath.move(to: CGPoint(x: 1084.6, y: 1339.11))
            p1MPath.addCurve(to: CGPoint(x: 853.81, y: 1252.72), control1: CGPoint(x: 1091.64, y: 1339.11), control2: CGPoint(x: 1072.26, y: 1523.3))
            p1MPath.addCurve(to: CGPoint(x: 804.49, y: 1099.5), control1: CGPoint(x: 809.11, y: 1197.35), control2: CGPoint(x: 804.49, y: 1099.5))
            p1MPath.addCurve(to: CGPoint(x: 1026.46, y: 972.36), control1: CGPoint(x: 1111.02, y: 1073.42), control2: CGPoint(x: 1026.46, y: 972.36))
            
            
            
            //// p2M Drawing
            p2MPath.move(to: CGPoint(x: 1029.98, y: 936.5))
            p2MPath.addCurve(to: CGPoint(x: 469.77, y: 1066.9), control1: CGPoint(x: 1029.98, y: 936.5), control2: CGPoint(x: 307.69, y: 496.41))
            
            
            
            //// p1End Drawing
            p1EndPath.addRect(CGRect(x: 921.5, y: 935.5, width: 192, height: 54))
            
            
            
            //// p2End Drawing
            p2EndPath.move(to: CGPoint(x: 519.09, y: 1106.02))
            p2EndPath.addLine(to: CGPoint(x: 431.01, y: 1122.32))
            p2EndPath.addLine(to: CGPoint(x: 519.09, y: 1190.78))
            p2EndPath.addLine(to: CGPoint(x: 519.09, y: 1106.02))
            p2EndPath.closeSubpath()
            
            //// p3 Drawing
            p3Path.move(to: CGPoint(x: 880.24, y: 618.66))
            p3Path.addLine(to: CGPoint(x: 813.3, y: 546.94))
            p3Path.addLine(to: CGPoint(x: 880.24, y: 485))
            p3Path.addLine(to: CGPoint(x: 947.18, y: 550.2))
            p3Path.addLine(to: CGPoint(x: 880.24, y: 618.66))
            p3Path.addLine(to: CGPoint(x: 880.24, y: 618.66))
            p3Path.closeSubpath()
            p3MPath.move(to: CGPoint(x: 880.24, y: 485))
            p3EndPath = p3Path
            
            //// p4 Drawing
            p4Path.move(to: CGPoint(x: 746.35, y: 618.66))
            p4Path.addLine(to: CGPoint(x: 679.41, y: 546.94))
            p4Path.addLine(to: CGPoint(x: 746.35, y: 485))
            p4Path.addLine(to: CGPoint(x: 813.3, y: 550.2))
            p4Path.addLine(to: CGPoint(x: 746.35, y: 618.66))
            p4Path.addLine(to: CGPoint(x: 746.35, y: 618.66))
            p4Path.closeSubpath()
            p4MPath.move(to: CGPoint(x: 746.35, y: 485))
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

