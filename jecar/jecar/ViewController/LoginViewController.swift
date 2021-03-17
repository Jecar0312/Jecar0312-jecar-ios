//
//  LoginViewController.swift
//  jecar
//
//  Created by Kim on 2021/03/12.
//  Copyright © 2021 Kim SuJin. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var idTxtView: UITextField!
    @IBOutlet weak var pwdTxtView: UITextField!
    
    @IBOutlet weak var loginBtn: UIButton!
    @IBOutlet weak var signupBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    @IBAction func clickedLoginBtn(_ sender: Any) {
        setMainViews()
    }
    
    func setMainViews() {
        
        let tabBarController = TabBarController()
        let mainVC = MainViewController()
        let myPageVC = MyPageViewController()
        
        let mainVCItem = UITabBarItem()
        mainVCItem.title = "글 목록"
        mainVCItem.image = UIImage(systemName: "house")
                        
        let myPageVCItem = UITabBarItem()
        myPageVCItem.title = "마이 페이지"
        myPageVCItem.image = UIImage(systemName: "person")
        
        mainVC.tabBarItem = mainVCItem
        myPageVC.tabBarItem = myPageVCItem
        
        tabBarController.viewControllers = [mainVC, myPageVC]
        
        let navigationVC = NavigationViewController(rootViewController: tabBarController)
        navigationVC.modalPresentationStyle = .fullScreen
        self.present(navigationVC, animated: true, completion: nil)
        
    }
    
}
