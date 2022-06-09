import UIKit

class FiveObjective : UIViewController {
    
    //imageview
    var main1ImageView: UIImageView = {
        let mainView = UIImageView()
        mainView.image = UIImage(named: "Fiveobj")
        mainView.contentMode = .scaleAspectFit
        mainView.translatesAutoresizingMaskIntoConstraints = false
        return mainView
        
    }()
    
    //buttonnext
    var buttonNext: UIButton = {
        let button = UIButton()
        button.backgroundColor = .systemBlue
        button.setTitle("Next", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 40)
        button.setTitleColor(UIColor.white, for: .normal)
        button.contentMode = .scaleAspectFit
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.cornerRadius = 10
        return button
        
    }()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //background color
        view.backgroundColor = .black
        view.addSubview(main1ImageView)

        //buttonNext
        view.addSubview(buttonNext)
        buttonNext.addTarget(self, action: #selector(actionNextPage2(_:)), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            
            main1ImageView.topAnchor.constraint(equalTo: view.topAnchor,constant: 50),
            main1ImageView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0),
            main1ImageView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -0),
            main1ImageView.heightAnchor.constraint(equalToConstant: 800),
            
            buttonNext.topAnchor.constraint(equalTo: main1ImageView.bottomAnchor,constant: 70),
            buttonNext.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 280),
            buttonNext.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -280),
            buttonNext.heightAnchor.constraint(equalToConstant: 80),
            
        
        ])
    }
    
    //function button play
    @objc func actionNextPage2(_ sender: UIButton){
        navigationController?.pushViewController(IntroductionEnd(), animated: false)
        print("Clicked!")
    }
}
