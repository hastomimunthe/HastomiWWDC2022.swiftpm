import UIKit

class Introduction : UIViewController {
    
    //buttonNext
    var buttonNext: UIButton = {
        let button = UIButton()
        button.backgroundColor = .systemBlue
        button.setTitle("Forget", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 40)
        button.setTitleColor(UIColor.white, for: .normal)
        button.contentMode = .scaleAspectFit
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.cornerRadius = 20
        return button
        
    }()
    
    //buttonNext
    var buttonNext2: UIButton = {
        let button = UIButton()
        button.backgroundColor = .systemBlue
        button.setTitle("Still Remember", for: .normal)
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
        mainView.image = UIImage(named: "pertama")
        mainView.contentMode = .scaleAspectFit
        mainView.translatesAutoresizingMaskIntoConstraints = false
        
        return mainView
        
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.navigationBar.isHidden = true
        view.backgroundColor = .black
        view.addSubview(main2ImageView)

        
        //buttonnext
        view.addSubview(buttonNext)
        buttonNext.addTarget(self, action: #selector(actionNextPage(_:)), for: .touchUpInside)
        
        //buttonnext
        view.addSubview(buttonNext2)
        buttonNext2.addTarget(self, action: #selector(actionNextPage2(_:)), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            
            main2ImageView.topAnchor.constraint(equalTo: view.topAnchor,constant: 150),
            main2ImageView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -100),
            main2ImageView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 100),
            
            buttonNext.topAnchor.constraint(equalTo: main2ImageView.bottomAnchor,constant: 150),
            buttonNext.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 80),
            buttonNext.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -450),
            buttonNext.heightAnchor.constraint(equalToConstant: 80),
            
            buttonNext2.topAnchor.constraint(equalTo: main2ImageView.bottomAnchor,constant: 150),
            buttonNext2.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 450),
            buttonNext2.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -80),
            buttonNext2.heightAnchor.constraint(equalToConstant: 80),
            
        
        ])
        }
    
    //function buttonNext
    @objc func actionNextPage(_ sender: UIButton){
        navigationController?.pushViewController(Introduction1Gi(), animated: false)
        print("Clicked!")
    }
    
    //function buttonNext2
    @objc func actionNextPage2(_ sender: UIButton){
        navigationController?.pushViewController(Introduction1Go(), animated: false)
        print("Clicked!")
    }
}
