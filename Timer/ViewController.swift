//
//  ViewController.swift
//  Timer
//
//  Created by s247 on 2018/01/15.
//  Copyright © 2018年 ami. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //時間を表示させるラベル
    @IBOutlet weak var timeLabel: UILabel!
    
    //画像のインスタンスを作る
    var topImage:UIImage?//タイマー稼働中
    var lastImage:UIImage?//タイマー終了後
    
    //UIViewを紐付ける
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //画像を表示させる
        topImage = UIImage(named: "neko")
        displayImg(img: topImage!)
    }
    
    //以下はいらないかも
    //画像のサイズを取得して、適正な縮尺で表示させる
    func displayImg(img:UIImage){
        
        //画面サイズを取得する
        let screenWidth = self.view.bounds.width
        let screenHeight = self.view.bounds.height
        
        //画像のサイズを取得する
        let imgWidth = img.size.width
        let imgHeight = img.size.height
        
        //画像が画面横幅7割になるよう縮尺を取得する
        let scare = (screenWidth / imgWidth) * 0.7
        
        //画像サイズを変更する
        let rect = CGRect(x: 0, y: 0, width:  imgWidth * scare, height: imgHeight * scare)
        imageView.frame = rect
        
        //画像位置を変更する
        imageView.center = CGPoint(x: screenWidth/2, y: screenHeight * 0.6)
        
        //画像を表示させる
        imageView.image = img
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}

