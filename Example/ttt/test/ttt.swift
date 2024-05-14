//
//  ttt.swift
//  ttt
//
//  Created by lzc on 2024/5/13.
//  Copyright © 2024 CocoaPods. All rights reserved.
//

import Foundation
import WXLibSwift
public class ttt: NSObject {
    public override init() {
        super.init()
       let ok = WXApi.registerApp("", universalLink: "")
        print(">>\(ok)")
    }
}
