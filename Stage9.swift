import UIKit
class Stage9: UIViewController {

    //tittle
    var tittlePage: UILabel = {
       let title = UILabel()
        title.textColor = .white
        title.text = "Stage 9"
        title.font = UIFont.boldSystemFont(ofSize: 36)
        title.contentMode = .scaleAspectFit
        title.textAlignment = .center
        title.translatesAutoresizingMaskIntoConstraints = false
        return title
    }()
    
    //buttonA
    var buttonA: UIButton = {
        let button = UIButton()
        button.backgroundColor = .white
        button.setTitle("A. Runway 36 cleared to land", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 25)
        button.setTitleColor(UIColor.black, for: .normal)
        button.contentMode = .scaleAspectFill
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.cornerRadius = 20
        return button
        
    }()
    
    //buttonB
    var buttonB: UIButton = {
        let button = UIButton()
        button.backgroundColor = .white
        button.setTitle("B. Sequence number 2 after departing aircraft ", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 25)
        button.setTitleColor(UIColor.black, for: .normal)
        button.contentMode = .scaleAspectFit
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.cornerRadius = 20
        return button
        
    }()
    
    //buttonC
    var buttonC: UIButton = {
        let button = UIButton()
        button.backgroundColor = .white
        button.setTitle("C. Make orbit to right traffic departure", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 25)
        button.setTitleColor(UIColor.black, for: .normal)
        button.contentMode = .scaleAspectFit
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.cornerRadius = 20
        return button
        
    }()
    
    //imageview
    var main2ImageView: UIImageView = {
        let mainView = UIImageView()
        mainView.image = UIImage(named: "Situation9")
        mainView.contentMode = .scaleAspectFit
        mainView.translatesAutoresizingMaskIntoConstraints = false
        
        return mainView
        
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //background
        view.backgroundColor = .black
        
        //buttonA
        view.addSubview(buttonA)
        buttonA.addTarget(self, action: #selector(actionWrong(_:)), for: .touchUpInside)
        
        //buttonB
        view.addSubview(buttonB)
        buttonB.addTarget(self, action: #selector(actionRight(_:)), for: .touchUpInside)
        
        //buttonC
        view.addSubview(buttonC)
        buttonC.addTarget(self, action: #selector(actionWrong(_:)), for: .touchUpInside)
        
        view.addSubview(tittlePage)
        //imageview
        view.addSubview(main2ImageView)
        
        NSLayoutConstraint.activate([
            
            tittlePage.topAnchor.constraint(equalTo: view.topAnchor,constant: 50),
            tittlePage.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 50),
            tittlePage.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -50),
            
            main2ImageView.topAnchor.constraint(equalTo: tittlePage.topAnchor,constant: 100),
            main2ImageView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 2),
            main2ImageView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -2),
            
            buttonA.topAnchor.constraint(equalTo: main2ImageView.bottomAnchor,constant: 50),
            buttonA.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 100),
            buttonA.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -100),
            buttonA.heightAnchor.constraint(equalToConstant: 50),

            buttonB.topAnchor.constraint(equalTo: buttonA.bottomAnchor,constant: 20),
            buttonB.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -100),
            buttonB.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 100),
            buttonB.heightAnchor.constraint(equalToConstant: 50),
            
            buttonC.topAnchor.constraint(equalTo: buttonB.bottomAnchor,constant: 20),
            buttonC.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -100),
            buttonC.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 100),
            buttonC.heightAnchor.constraint(equalToConstant: 50),
        
        ])
        }
    
    //function buttonA
    @objc func actionWrong(_ sender: UIButton){
        let alert = UIAlertController(title: " Incorrect ❌ ", message:  " Your answer is Incorrect!", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Try Again", style: .default, handler: nil) )
        present(alert, animated: true, completion: {
        })
        print("Clicked")
    }
    
    //function buttonB
    @objc func actionRight(_ sender: UIButton){
        let alert = UIAlertController(title: " Correct ✅ Good Job!! ", message:  """
                                      
        Related to Five Objectives number:
        
        4.Provide advice and information useful for the safe
        and efficient conduct of flights .

        """, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Next Question", style: .default, handler: {(action) in
            self.navigationController?.pushViewController(Stage10(), animated: true)
        }) )
        
        present(alert, animated: true, completion: {
        })
        print("Clicked!")
    }
}
