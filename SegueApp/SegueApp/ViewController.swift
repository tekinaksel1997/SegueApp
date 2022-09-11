//
//  ViewController.swift
//  SegueApp
//
//  Created by Tekin Aksel Demir on 28.08.2022.
//

import UIKit

class ViewController: UIViewController {

    var userName = ""
    
    @IBOutlet weak var nameText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // product build yapmak gerekiyor ikincideki kodlarda tanımlansın diye command + b ye basıladabilir böylece tüm dosyalar birbirini görür
        
        //Lifecycle yaşam döngüsü
        print("viewDidLoad function called")
        // ilk çağırılan ( görünümler değiştirilirken viewDidLoad tekrar çağırılmaz )
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("ViewController kayboldu viewdiddisappear")
        //beşinci çağırılan görünüm gitti
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("Görünüm Kaybolacak viewWillDisappear")
        //dördüncü çağırılan viewController heran gidebilir
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("Görünüm Gözükecek viewWillAppear")
        nameText.text = ""
        //ikinci çağırılan (viewDidLoad'a nameText girseydim baştaki sayfaya gidince textField'a yazdığım tekrar orada kalıcaktı ama buraya yazdığım için tekrar boşluk kalıyor
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("Görünüm Gözüktü viewDidAppear")
        //üçüncü çağırılan (kullanıcı artık gördü)
    }

    @IBAction func nextName(_ sender: Any) {
        userName = nameText.text!
        performSegue(withIdentifier: "toSecondVC", sender: nil)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toSecondVC" {
            // as
            let destinationVC = segue.destination as! SecondViewController
            destinationVC.myName = userName
        }
    }
    
}

