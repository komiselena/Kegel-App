//
//  QAViewModel.swift
//  Kegel App
//
//  Created by Mac on 28.03.2024.
//

import Foundation

final class QAViewModel: ObservableObject{
    @Published var qas: [QA] = [
        QA(question: "What are the benefits of the application?", answer: """
- Reduces the risk of male diseases
- Improves erection
- Increases sexual stamina
- Enhances pleasure from orgasm
- Prevents hemorrhoids and prostatitis
- Provides precise instructions and reminders for exercises
- Tracks progress and achievements
"""),
        QA(question: "How to find pelvic floor muscles?", answer: """
1. Stop the flow of urine: Try to stop the flow of urine during urination. The muscles you use for this are the pelvic floor muscles.

2. Contract the muscles during urination: If you find it difficult to identify which muscles are being used, try contracting the muscles around the anus as if you were trying to hold back gas or stool. These are also the pelvic floor muscles.

3. Imagine stopping gas or stool: This will also help you better feel the pelvic floor muscles.

Once you learn to correctly feel these muscles, you can perform exercises to strengthen them, such as Kegel exercises.
"""),
        QA(question: "How does it work?", answer: """
The KEGEL APP is based on the Kegel method, which aims to strengthen the pelvic floor muscles (PF). These muscles control and support the bladder, intestines, and other organs. As they weaken with age, it can lead to intimate health issues. However, regular pelvic floor muscle exercises can address this problem. The app will help you locate and effectively train these muscles.

"""),
        QA(question: "What are the benefits of using the application?", answer: """
The secret lies in consistency, variety of movements, and gradually increasing the load. However, it's difficult to monitor progress independently. With the KEGEL APP, everything becomes easier. Simply start your training in the "Kegel Training" section and follow the instructions. The unique vibrations of your phone will guide you in the correct rhythm and intensity of pelvic floor muscle contractions. This way, you can be confident in the effectiveness of your exercises.
"""),
        QA(question: "In what position should Kegel exercises be performed?", answer: "Kegel exercises can be performed in any comfortable position: sitting, standing, or lying down."),
        
        QA(question: "What should be considered when performing Kegel exercises?", answer: """
It's important to ensure that during Kegel exercises, your buttock, leg, and abdominal muscles remain relaxed, while you only engage the pelvic floor muscles. This will help avoid overexertion and spasms. Additionally, try not to hold your breath, but breathe freely during exercises to avoid straining other parts of the body. This will help you derive maximum benefit from the exercises.
"""),
        QA(question: "Will anyone see me doing Kegel exercises?", answer: "No, it's not noticeable."),
        QA(question: "How often should I train?", answer: """
It is recommended to perform at least two sessions of Kegel Training per day, with a few hours interval between them to prevent overexertion and maintain maximum effectiveness. If you want to achieve your goals faster, you can increase the number of sessions to three per day.
"""),
        QA(question: "When can I expect improvements?", answer: """
The time for improvements to appear depends on individual body characteristics, but in general, you will usually notice initial results within a few weeks of regular training.
"""),
        QA(question: "How much time should be devoted to Kegel exercises?", answer: """
Pelvic floor muscle exercises remain beneficial throughout life. To maintain optimal intimate health, it is recommended to include Kegel exercises in your daily routine, similar to brushing your teeth.
"""),
        QA(question: "Even if I'm fine now, should I continue doing Kegel exercises?", answer: """
Even with good pelvic floor muscle tone, Kegel exercises can improve sexual stamina, strengthen erections, and enhance orgasmic sensations. Considering that these muscles lose tone with age, starting to strengthen them as early as possible is recommended. This way, you can prevent intimate health issues and maintain a high quality of life for years to come.

"""),
        QA(question: "Is age a barrier to Kegel exercises?", answer: """
No matter how old you are, Kegel exercises can benefit everyone. They are recommended for daily practice for men of almost any age.

"""),
        QA(question: "What if I feel discomfort while doing pelvic floor muscle exercises?", answer: """
While most people find Kegel exercises relaxing, if you feel discomfort while working with pelvic floor muscles, you may be doing the exercises incorrectly or the Kegel exercises may not be suitable for you. In this case, it's important to consult a doctor to discuss your feelings and get appropriate recommendations.
"""),
        QA(question: "If the exercises seem too easy or difficult, how can I adjust the workout intensity?", answer: """
Adjust the level of difficulty of the Kegel Training program in the "Profile" section. Simply select the appropriate difficulty level, and the workout program will be adapted to your needs.

"""),
        QA(question: "How to set reminders for workouts to not miss them?", answer: """
To avoid missing a workout, go to the "Profile" section and set reminders for workouts. You can choose a ready-made time or set your own.
""")

    ]
    
}




