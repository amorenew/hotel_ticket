import UIKit
import SwiftUI
import Flutter
import FittedSheets

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
        let vc = UIHostingController(rootView: TicketDetailView(ticketInfo: ticketData))
        let sheetController = SheetViewController(controller: vc)
        let options = SheetOptions(shrinkPresentingViewController: false)
        viewControllerHolder.present(sheetController, animated: true, completion: nil)

        self.viewControllerHolder.present(style: .overFullScreen) {
            TicketDetailView(ticketInfo: ticketData)
        }

    }
    
    
}
