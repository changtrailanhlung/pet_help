import UIKit
import Flutter

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    GeneratedPluginRegistrant.register(with: self)
    GMSServices.provideAPIKey("AIzaSyDESO3vjzSzNRbzG7P0UmNJtXx1g4NQ8yQ")
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
