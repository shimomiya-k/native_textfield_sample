#import "NativeTextfieldSamplePlugin.h"
#if __has_include(<native_textfield_sample/native_textfield_sample-Swift.h>)
#import <native_textfield_sample/native_textfield_sample-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "native_textfield_sample-Swift.h"
#endif

@implementation NativeTextfieldSamplePlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftNativeTextfieldSamplePlugin registerWithRegistrar:registrar];
}
@end
