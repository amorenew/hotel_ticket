import UIKit
import SwiftUI
import Flutter

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    GeneratedPluginRegistrant.register(with: self)
    
    let controller = window.rootViewController as! FlutterViewController

      // setting-up the host-Api
    let ticketController = TicketController(viewControllerHolder: controller)
    TicketHostApiSetup.setUp(binaryMessenger: controller.binaryMessenger, api: ticketController)

    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}

class TicketController: TicketHostApi {
    
    let viewControllerHolder: FlutterViewController

    init(viewControllerHolder: FlutterViewController) {
        self.viewControllerHolder = viewControllerHolder
    }

    func sendTicketData(ticketData: TicketData, completion: @escaping (Result<Bool, Error>) -> Void) {
        
        self.viewControllerHolder.present(style: .pageSheet) {
            TicketDetailView(ticketInfo: TicketData(name:"Amr", imageUrl:"https://www.google.com", ticketNumber:"Number", type: "Type", seat: "Seat"))        }

    }
    
    
}
