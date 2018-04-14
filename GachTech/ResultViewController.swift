//
//  ResultViewController.swift
//  GachTech
//
//  Created by Marina Goto on 2018/04/12.
//  Copyright © 2018年 Marina Goto. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    //背景画像
    @IBOutlet var haikeiImageView: UIImageView!
    
    //モンスター表示
    @IBOutlet var monsterImageView: UIImageView!
    
    //モンスター画像保存
    var monsterArray: [UIImage]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //ランダム数字
        let number = Int(arc4random_uniform(10))
        
        //モンスター画像
        monsterArray = [UIImage(named: "monster001.png")!,
                        UIImage(named: "monster002.png")!,
                        UIImage(named: "monster003.png")!,
                        UIImage(named: "monster004.png")!,
                        UIImage(named: "monster005.png")!,
                        UIImage(named: "monster006.png")!,
                        UIImage(named: "monster007.png")!,
                        UIImage(named: "monster008.png")!,
                        UIImage(named: "monster009.png")!,
                        UIImage(named: "monster010.png")!,]
        
        //モンスター表示
        monsterImageView.image = monsterArray[number]

        
        if number == 9 {
            haikeiImageView.image = UIImage(named: "bg_gold.png")
        } else if number > 6 {
            haikeiImageView.image = UIImage(named: "bg_red.png")
        } else {
            haikeiImageView.image = UIImage(named: "bg_blue.png")
        }
        // Do any additional setup after loading the view.
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        
        //transform
        let animation = CABasicAnimation(keyPath: "transform")
        
        //アニメーション開始の数値
        animation.fromValue = NSNumber(value: 0)
        
        //アニメーション終了の数値
        animation.toValue = NSNumber(value: 2 * Double.pi)
        
        //Z軸中心
        animation.valueFunction = CAValueFunction(name: kCAValueFunctionRotateZ)
        
        //速さ
        animation.duration = 5
        
        //繰り返し
        animation.repeatCount = Float.infinity
        
        //レイヤー
        haikeiImageView.layer.add(animation, forKey: nil)
    }
    
    @IBAction func modoru() {
        self.dismiss(animated: true, completion: nil)
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
