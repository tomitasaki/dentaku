//
//  ViewController.swift
//  dentaku
//
//  Created by hmlab book pro on 2016/02/07.
//  Copyright © 2016年 hmlab book pro. All rights reserved.
//



//import「classをインポートする」
//UIKit「フレームワークの追加」（※FoundationやCoreGraphicsもある）
//フレームワークとは、関数やclassをの内容をなどが書かれたファイルの集合体
import UIKit

//UIViewController「UIView（iPhoneに表示する画面）をControlしている」
class ViewController: UIViewController {
    
    
    // @IBOutlet「パーツ自体をプログラムで定義した変数に紐付ける」
    //var「String型の変数：値を変更可能」（※let：「String型の定数：値を変更不可能」）
    //UILabel「文字表示を管理するクラス」
    //! = Implicitly Unwrapped Optional型「nilが入るのを許さない」　　（※?= Optional型「nilが入るのを許す」）
    //nil「変数が空の状態」
    // 「パーツ自体をプログラムで定義した変数に紐付ける」「変数」「変数名」: 「クラス」!「nilが入るのを許さない」
    @IBOutlet var label: UILabel!
    
    
    //Int「」
    //numberという0の箱
    var number: Int = 0
    //number2という0の箱
    var number2: Int = 0
    //operationという0の箱
    var operation: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    //@IBAction「パーツに何か変化を加えたときの動作をプログラムへ引き渡す」
    //func()「関数が今回自分で作った自作関数」
    //自作関数select3のプロブラム
    @IBAction func select3(){
        
        
        number = number*10 + 3
        
        //3をおすとlabelに3表示
        //String型の変数：値を変更可能のnumber、つまりここでは３
        label.text = String(number)
    }
    
    //自作関数select4のプロブラム
    @IBAction func select4(){
        number = number*10 + 4
        
        //4をおすとlabelに4表示
        //String型の変数：値を変更可能のnumber、つまりここでは３
        label.text = String(number)
    }
    //自作関数plusのプロブラム
    @IBAction func plus(){
        //plusでlabelに０表示
        label.text = "0"
        
        operation = 1
        number2 = number
        number = 0
    }
    //自作関数equalのプロブラム
    @IBAction func equal(){
        //もしoperationが１の場合、つまりここはplusを押さないと発動しない
        if operation == 1{
            
            
            label.text = String(number + number2)
        }
    }
}

