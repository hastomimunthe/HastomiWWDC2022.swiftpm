import UIKit
class Introduction1GGi : UIViewController {
    
    //buttonNext
    var buttonNext: UIButton = {
        let button = UIButton()
        button.backgroundColor = .systemBlue
        button.setTitle("Okay", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 40)
        button.setTitleColor(UIColor.white, for: .normal)
        button.contentMode = .scaleAspectFit
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.cornerRadius = 20
        return button
        
    }()
    
    //imageview
    var main2ImageView: UIImageView = {
        let mainView = UIImageView()
        mainView.image = UIImage(named: "KetigaBenar")
        mainView.contentMode = .scaleAspectFit
        mainView.translatesAutoresizingMaskIntoConstraints = false
        
        return mainView
        
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        view.addSubview(main2ImageView)

        
        //buttonnext
        view.addSubview(buttonNext)
        buttonNext.addTarget(self, action: #selector(actionNextPage2(_:)), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            
            main2ImageView.topAnchor.constraint(equalTo: view.topAnchor,constant: 150),
            main2ImageView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -100),
            main2ImageView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 100),
            
            buttonNext.topAnchor.constraint(equalTo: main2ImageView.bottomAnchor,constant: 150),
            buttonNext.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 280),
            buttonNext.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -280),
            buttonNext.heightAnchor.constraint(equalToConstant: 80),
        
        ])
        }
    
    //function button play
    @objc func actionNextPage2(_ sender: UIButton){
        navigationController?.pushViewController(FiveObjective(), animated: false)
        print("Clicked!")
    }
}

