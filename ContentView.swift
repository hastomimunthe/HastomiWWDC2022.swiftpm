//READ ME//

/*
 
    Hello!
 
    My name is Hastomi Riduan Munthe, i am 23 years old.
 
    I've graduated from Civil Aviation and Safety Engineering of Medan (CASEA of Medan) major in Air Traffic Controller (ATC) in 2019. I got my license (Air Traffic Control Tower rating, Approach Control Procedural rating, and Area Control Procedural). 2019 was the bad year for me, also for all people in this world because of the pandemic COVID-19. Exactly the situation make me to think twice for making the other plan for my own future. Then in 2020, i continued my journey to a University in Indonesia major in Business Administration and also take my Approach Control Surveillance radar. On april 2020, there was a reqruitment for ATC from one and only navigation company in Indonesia. But suddenly in May 2020, Indonesia make a rule called (Lockdown), off course for all the airport have to be closed. So do the reqruitment for ATC that i apply was postponed until further instruction.
    
    In 2021, i attempted to learn about anything for survived. I learn to code with HTML/CSS, basic AWS from internet and join a shortcourse. I make a lot of application letter to many company but always rejected. And finally, here i am as a learner at Apple Developer Academy Infinite Learning Batam. Proud to be part of here.
    
    Been 3 years all my friends (around 500 people) and i graduated from major Air Traffic Control. We must already forget about Air Traffic Control lesson or too lazy to read all the books again because we already have the other job for survived. So, in this time i try to help my friends and i to remind again about Air Traffic Control knowledges. There is a main rule of Air Traffic Control called 5 Objectives of Air Traffic Services. This 5 rules is the main  guidelines for Air Traffic Control when they work. I will show what is 5 objectives and make 10 quiz that describe that 5 rules with the situation in an airport that i've made by myself. I dedicated this for ATC license holder.
    
    Hope you can Enjoy This!
 
 this application can run well on iPad Pro (11-inch) (3rd generation) simulator
 
*/

import SwiftUI

struct ContentView: View {
    var body: some View {
            // UI kit MainVC View
            MainVCView()
        }
    }
// Bridge betwwen SwiftUI & UIkit
struct MainVCView: UIViewControllerRepresentable {
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
        
    }
    func makeUIViewController(context: Context) -> some UIViewController {
        // View Controller Object
        
        return UINavigationController(rootViewController: MainViewController())
    }
    
}
