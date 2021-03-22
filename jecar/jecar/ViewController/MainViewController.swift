//
//  MainViewController.swift
//  jecar
//
//  Created by Kim on 2021/03/16.
//  Copyright © 2021 Kim SuJin. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

//    @IBOutlet weak var postListCollectionView: UICollectionView!
    @IBOutlet weak var postListTableView: UITableView!
    
    override func viewDidLoad() {
        
        postListTableView.delegate = self
        postListTableView.dataSource = self
        registPostListCell()
        
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
    
    func registPostListCell() {
        let nibName = UINib(nibName: "PostListTableViewCell", bundle: nil)
        postListTableView.register(nibName, forCellReuseIdentifier: "PostListCell")
    }

}

extension MainViewController : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = postListTableView.dequeueReusableCell(withIdentifier: "PostListCell", for: indexPath) as! PostListTableViewCell
        
        return cell
    }
    
    
}
