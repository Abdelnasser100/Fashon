//
//  ChatListViewController.swift
//  Fashon
//
//  Created by SA on 12/20/24.
//

import UIKit

class ChatListViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        registerTableView()
    }
    

    func  registerTableView(){
        tableView.register(UINib(nibName: "", bundle: nil), forCellReuseIdentifier: "")
        
        tableView.delegate = self
        tableView.dataSource = self
    }
   

}


extension ChatListViewController : tableView_Delegate_DataSource_FlowLayout{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        <#code#>
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }
    
    
    
}



