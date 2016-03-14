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
    
    
    //Int「整数型、とくに気にしない時はこれ」
    //number（足される数）という0の箱
    var number: Int = 0
    //number2（足す数）という0の箱
    var number2: Int = 0
    //operation（pulsの証拠）という0の箱
    var operation: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    //@IBAction「パーツに何か変化を加えたときの動作をプログラムへ引き渡す」
    //func()「関数が今回自分で作った自作関数」
    //自作関数select1のプロブラム
    @IBAction func select1(){
        
        
        number = number*10 + 1
        
        //1をおすとlabelに1表示
        //String型の変数：値を変更可能のnumber、つまりここでは1を表示
        label.text = String(number)
    }
    
    
    //自作関数select2のプロブラム
    @IBAction func select2(){
        
        
        number = number*10 + 2
        
        //2をおすとlabelに2表示
        //String型の変数：値を変更可能のnumber、つまりここでは2を表示
        label.text = String(number)
    }
    
    
    //自作関数select3のプロブラム
    @IBAction func select3(){
        
        
        number = number*10 + 3
        
        //3をおすとlabelに3表示
        //String型の変数：値を変更可能のnumber、つまりここでは３を表示
        label.text = String(number)
    }
    
    
    //自作関数select4のプロブラム
    @IBAction func select4(){
        number = number*10 + 4
        
        //4をおすとlabelに4表示
        //String型の変数：値を変更可能のnumber、つまりここでは4を表示
        label.text = String(number)
    }
    
    
    //自作関数select5のプロブラム
    @IBAction func select5(){
        number = number*10 + 5
        
        //5をおすとlabelに5表示
        //String型の変数：値を変更可能のnumber、つまりここでは5を表示
        label.text = String(number)
    }
    
    
    //自作関数select6のプロブラム
    @IBAction func select6(){
        number = number*10 + 6
        
        //6をおすとlabelに6表示
        //String型の変数：値を変更可能のnumber、つまりここでは6を表示
        label.text = String(number)
    }
    
    
    //自作関数select7のプロブラム
    @IBAction func select7(){
        number = number*10 + 7
        
        //7をおすとlabelに7表示
        //String型の変数：値を変更可能のnumber、つまりここでは7を表示
        label.text = String(number)
    }
    
    
    //自作関数select8のプロブラム
    @IBAction func select8(){
        number = number*10 + 8
        
        //8をおすとlabelに8表示
        //String型の変数：値を変更可能のnumber、つまりここでは8を表示
        label.text = String(number)
    }
    
    
    //自作関数select9のプロブラム
    @IBAction func select9(){
        number = number*10 + 9
        
        //9をおすとlabelに9表示
        //String型の変数：値を変更可能のnumber、つまりここでは9を表示
        label.text = String(number)
    }
    
    
    //自作関数cleaのプロブラム
    @IBAction func clea(){
        //plusを押した証拠をクリアにする
        operation = 0
        
        //number(足す数)を初期化
        number2 =  0
        
        //number(足される数)初期化
        number = 0
        
        label.text = String(number)
    }
    
    
    //自作関数plusのプロブラム
    @IBAction func plus(){
        //plusでlabelに０表示
        label.text = "0"
        
        //plusを押すとoperationが１になる（plusを押した証拠）
        operation = 1
        
        //number(足される数)にnumber(足す数)に移行させる
        number2 = number
        
        //number(足される数)は初期化しておく(次の準備)
        number = 0
    }
    
    
    //自作関数equalのプロブラム
    @IBAction func equal(){
        //もしoperationが１の場合、つまりここはplusを押さないと発動しない
        if operation == 1{
            
            //number(足される数)にnumber(足す数)を足したものを表示
            label.text = String(number + number2)
        }
    }
}

