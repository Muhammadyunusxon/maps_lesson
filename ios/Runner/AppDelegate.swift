import UIKit
import Flutter
import GoogleMaps
import YandexMapsMobile

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    MSServices.provideAPIKey("IzaSyCmBUzrrxRgAqJaaacxXjpoKeqcD113Jis")
    YMKMapKit.setApiKey("7d50db16-5ffc-465d-b673-1b31dd63ff68")
    GeneratedPluginRegistrant.register(with: self)
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
