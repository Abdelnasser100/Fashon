//
//  HomeViewController.swift
//  Fashon
//
//  Created by SA on 12/12/24.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    
    let images:[UIImage] = [UIImage(named: "lunchScreen")!, UIImage(named: "category1")!, UIImage(named: "category2")!]
    let names: [String]  = ["New Collection", "Summer Sale", "Man's Hoodies"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        registerCollectionView()
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: false)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.setNavigationBarHidden(false, animated: false)
    }
    
    func registerCollectionView(){
        collectionView.register(UINib(nibName: "CategoriesCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "CategoriesCollectionViewCell")
        
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.reloadData()
        
    }

}


extension HomeViewController : collectionView_Delegate_DataSource_FlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell =  collectionView.dequeueReusableCell(withReuseIdentifier: "CategoriesCollectionViewCell", for: indexPath) as! CategoriesCollectionViewCell
        cell.categoryImage.image = images[indexPath.row]
        cell.categoryNameLable.text =  names[indexPath.row]
        return cell
    }
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if indexPath.row == 0{
            let storyBoard = UIStoryboard(name: "Main", bundle: nil)
            let viewCOntroller = storyBoard.instantiateViewController(withIdentifier: "NewCollectionViewController")
            navigationController?.pushViewController(viewCOntroller, animated: true)
        }
    }
}


extension HomeViewController {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = collectionView.frame.width
        let hight = (collectionView.frame.height / 2) - 24
        
        switch indexPath.row{
        case  0:
            return CGSize(width: width, height: hight)
        default:
            return CGSize(width: width / 2 , height: hight)
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets.zero
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
}
