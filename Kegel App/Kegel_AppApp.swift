//
//  Kegel_AppApp.swift
//  Kegel App
//
//  Created by Mac on 08.03.2024.
//

import SwiftUI
import FirebaseCore

class AppDelegate: NSObject, UIApplicationDelegate {
  func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
    FirebaseApp.configure()
    return true
  }
}

@main
struct Kegel_AppApp: App {
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    
    var body: some Scene {
        WindowGroup {
            NavigationView{
                TabView{
                    Group{
                        PlanTabView()
                            .tabItem {
                                Label("Plan", systemImage: "")
                            }
                        
                        SexologyTabView()
                            .tabItem {
                                Label("Sexology", systemImage: "")
                            }
                        
                        ProfileTabView()
                            .tabItem {
                                Label("Profile", systemImage: "person.crop.circle")
                            }
                    }
                    .toolbarBackground(.visible, for: .tabBar)
                    .toolbarBackground(.gray, for: .tabBar)
                    .toolbarColorScheme(.dark, for: .tabBar)
                }
                
            }
        }
    }
}
