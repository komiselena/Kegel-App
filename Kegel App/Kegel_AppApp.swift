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

enum Tab {
    case plan
    case courses
    case profile
}

@main
struct Kegel_AppApp: App {
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    let gradient = LinearGradient(colors: [Color("TopColorPlan"), Color("BottomColorPlan")], startPoint: .top, endPoint: .bottom)
    
    var body: some Scene {
        WindowGroup {
            NavigationStack{
                TabView{
                    Group{
                        PlanTabView()
                            .tabItem {
                                Label("Plan", systemImage: "")
                            }
                        
                        CoursesTabView()
                            .tabItem {
                                Label("Courses", systemImage: "")
                            }
                        
                        ProfileTabView()
                            .tabItem {
                                Label("Profile", systemImage: "person.crop.circle")
                            }
                        
                    }
                    .toolbarBackground(.visible, for: .tabBar)
                    .toolbarBackground(gradient, for: .tabBar)
                    .toolbarColorScheme(.dark, for: .tabBar)
                }
                
            }
        }
    }
}
