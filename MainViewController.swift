import UIKit

// View Controller class
class MainViewController: UIViewController {
    
    //men
    var menImageView: UIImageView = {
        let menView = UIImageView()
        menView.image = UIImage(named: "FirstView")
        menView.contentMode = .scaleAspectFit
        menView.backgroundColor = .none
        menView.translatesAutoresizingMaskIntoConstraints = false
        return menView
        
    }()
    
    //buttonplay
    var buttonPlay: UIButton = {
        let button = UIButton()
        button.backgroundColor = .systemBlue
        button.setTitle("Get Started", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 40)
        button.setTitleColor(UIColor.white, for: .normal)
        button.contentMode = .scaleAspectFit
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.cornerRadius = 20
        return button
        
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        view.backgroundColor = .black
        view.addSubview(menImageView)
        
        //buttonplay
        buttonPlay.center = view.center
        view.addSubview(buttonPlay)
        buttonPlay.addTarget(self, action: #selector(actionNextPage(_:)), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            menImageView.topAnchor.constraint(equalTo: view.topAnchor,constant: 100),
            menImageView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 100),
            menImageView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -100),
            menImageView.heightAnchor.constraint(equalToConstant: 500),
            
            buttonPlay.topAnchor.constraint(equalTo: menImageView.bottomAnchor,constant: 100),
            buttonPlay.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 280),
            buttonPlay.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -280),
            buttonPlay.heightAnchor.constraint(equalToConstant: 80),
            
        
        ])
    }
    
    //function button play
    @objc func actionNextPage(_ sender: UIButton){
        navigationController?.pushViewController(Introduction(), animated: false)
        print("Clicked!")
    }
}
