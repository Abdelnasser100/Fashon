//
//  MessagesViewController.swift
//  Fashon
//
//  Created by SA on 12/16/24.
//

import UIKit

class MessagesViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Messages"
        navigationController?.navigationBar.topItem?.title = "Messages"
        navigationController?.navigationBar.prefersLargeTitles = true
        registrationTableView()
    }
    
    
  func registrationTableView (){
      tableView.register(UINib(nibName: "MessagesTableViewCell", bundle: nil), forCellReuseIdentifier: "MessagesTableViewCell")
      
      tableView.delegate = self
      tableView.dataSource = self
      tableView.reloadData()
    }

}


extension MessagesViewController :tableView_Delegate_DataSource_FlowLayout{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 6
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MessagesTableViewCell", for: indexPath)as! MessagesTableViewCell
        
        return cell
    }
    
    
}
