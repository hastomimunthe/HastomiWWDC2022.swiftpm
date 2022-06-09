import UIKit
class StageEnd: UIViewController {

    //buttonNext
    var buttonNext: UIButton = {
        let button = UIButton()
        button.backgroundColor = .systemBlue
        button.setTitle("Play Again", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 40)
        button.setTitleColor(UIColor.white, for: .normal)
        button.contentMode = .scaleAspectFit
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.cornerRadius = 10
        return button
        
    }()
    
    //imageview
    var main1ImageView: UIImageView = {
        let mainView1 = UIImageView()
        mainView1.image = UIImage(named: "atcEnd")
        mainView1.contentMode = .scaleAspectFit
        mainView1.translatesAutoresizingMaskIntoConstraints = false
        
        return mainView1
        
    }()
    
    //tittle
    var tittlePage: UILabel = {
       let title = UILabel()
        title.textColor = .white
        title.text = "Congratulation 🎉🎉 "
        title.font = UIFont.boldSystemFont(ofSize: 36)
        title.contentMode = .scaleAspectFit
        title.textAlignment = .center
        title.translatesAutoresizingMaskIntoConstraints = false
        return title
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .black
        
        view.addSubview(tittlePage)
        
        //imageview
        view.addSubview(main1ImageView)
        
        //buttonnext
        view.addSubview(buttonNext)
        buttonNext.addTarget(self, action: #selector(actionNextPage4(_:)), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            
            main1ImageView.topAnchor.constraint(equalTo: view.topAnchor,constant: 300),
            main1ImageView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 200),
            main1ImageView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -200),
            main1ImageView.heightAnchor.constraint(equalToConstant: 300),
            
            tittlePage.topAnchor.constraint(equalTo: main1ImageView.bottomAnchor,constant: 50),
            tittlePage.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 200),
            tittlePage.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -200),
            
            buttonNext.topAnchor.constraint(equalTo: tittlePage.bottomAnchor,constant: 50),
            buttonNext.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 280),
            buttonNext.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -280),
            buttonNext.heightAnchor.constraint(equalToConstant: 80),
            
        
        ])
    }
    
    //function button play
    @objc func actionNextPage4(_ sender: UIButton){
        navigationController?.pushViewController(Introduction(), animated: true)
       print("Clicked!")
    }
}
