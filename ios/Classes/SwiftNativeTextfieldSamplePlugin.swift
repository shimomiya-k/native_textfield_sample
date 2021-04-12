import Flutter
import UIKit

public class SwiftNativeTextfieldSamplePlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "native_textfield_sample", binaryMessenger: registrar.messenger())
    let instance = SwiftNativeTextfieldSamplePlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
    
    let factory = FLNativeTextFieldFactory(messenger: registrar.messenger())
    registrar.register(factory, withId: "UITextView")
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    result("iOS " + UIDevice.current.systemVersion)
  }
}
