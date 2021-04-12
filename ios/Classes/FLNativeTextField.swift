//
//  FLNativeTextField.swift
//  native_textfield_sample
//
//  Created by 下宮一真 on 2021/04/12.
//

import Flutter
import UIKit


class FLNativeTextField: NSObject, FlutterPlatformView {
    private var _view: UIView
    
    init(frame: CGRect, viewIdentifier viewId: Int64, arguments args: Any?, binaryMessenger messenger: FlutterBinaryMessenger?) {
        _view = UIView()
        super.init()
        
        createNativeView(view: _view)
    }
    
    func view() -> UIView {
        return _view
    }

    func createNativeView(view _view: UIView) {        
        let uiTextView = UITextView()
        uiTextView.frame = CGRect(x: 0, y: 0, width: 180, height: 48.0)
        _view.addSubview(uiTextView)
    }
}
