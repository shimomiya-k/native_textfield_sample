//
//  FLNativeTextFieldFactory.swift
//  native_textfield_sample
//
//  Created by 下宮一真 on 2021/04/12.
//

import Flutter
import UIKit

class FLNativeTextFieldFactory: NSObject, FlutterPlatformViewFactory {
    private var messenger: FlutterBinaryMessenger

    init(messenger: FlutterBinaryMessenger) {
        self.messenger = messenger
        super.init()
    }
    
    func create(withFrame frame: CGRect, viewIdentifier viewId: Int64, arguments args: Any?) -> FlutterPlatformView {
        return FLNativeTextField(frame: frame, viewIdentifier: viewId, arguments: args, binaryMessenger: messenger)
    }
}
