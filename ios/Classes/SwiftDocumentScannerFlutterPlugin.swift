import Flutter
import UIKit

public class SwiftDocumentScannerFlutterPlugin: NSObject, FlutterPlugin {
    
    var rootViewController: UIViewController?
    var result: FlutterResult?
    
    
    public override init() {
        super.init()
        rootViewController =
            (UIApplication.shared.delegate?.window??.rootViewController)!;
    }
    
    public static func register(with registrar: FlutterPluginRegistrar) {
        let channel = FlutterMethodChannel(name: Utils.channelName, binaryMessenger: registrar.messenger())
        let instance = SwiftDocumentScannerFlutterPlugin()
        registrar.addMethodCallDelegate(instance, channel: channel)
    }
    
    public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
        result(FlutterMethodNotImplemented)
    }
    
    private func camera() {}
    
    func gallery() {}
}
