//
//  Swift自定义NSLog.swift
//  自定义NSLog
//
//  Created by line on 16/2/26.
//  Copyright © 2016年 line. All rights reserved.
//

import UIKit

class Swift___NSLog: NSObject {

}


func NewLog<T>(message : T, file : String = __FILE__, funcName : String = __FUNCTION__, lineNum : Int = __LINE__){
    
    //注意,需要在工程文件的Build Setting中的 Other Swift Flags的Debug中添加 -D DEBUG (Release不要添加)
    //然后在Edit中设置成Debug或Release
    
    #if DEBUG
        
        let fileName = (file as NSString).lastPathComponent
        
        print("[\(fileName)][\(funcName)][\(lineNum)] :\(message)")
        
    #endif
    
}