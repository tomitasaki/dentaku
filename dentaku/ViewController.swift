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
    @IBOutlet var label:UILabel!
    
    //Int「整数型、とくに気にしない時はこれ」
    //number（入力数）という0の箱
    var number:Int = 0
    //number2　これまでの計算を入れておく箱
    //!だと後からはnilは不可能
    var number2:Int!
    //operation（四則演算の証拠）という0の箱
    //!だと後からはnilは不可能
    var operation:Int!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    //実際の計算メソッド
    //func()「関数が今回自分で作った自作関数」
    //自作関数calcのプログラム
    //var「String型の変数：値を変更可能」
    //自作関数calcのプログラムでoperationのいろんなバージョン（Intのため数字で仕分け）が起こる
    func calc(ope :Int){
        // operationがnilにならない
        operation = ope
        
        //１つの数字のみ
        if number2 == nil{
            number2 = number
            
            //それ以上の数字
        }else{
            
            //足し算
            if operation == 1{
                number2 = number2! + number
                label.text = "0"
                
                //引き算
            }else if operation == 2{
                number2 = number2! - number
                label.text = "0"
                
                //掛け算
            }else if operation == 3{
                number2 = number2! * number
                label.text = "0"
                
                //割り算
            }else if operation == 4{
                
                // 0で割ると無限になってしまうので割る側が0の時には計算しない
                if number != 0 {
                    number2 = number2! / number
                    label.text = "0"
                }
            }
            // 計算した結果を表示
            label.text = String(number2)
        }
        // number（入力数）を０に初期化
        number = 0
    }
    
    
    
    //ボタンのコード
    //@IBAction「パーツに何か変化を加えたときの動作をプログラムへ引き渡す」
    //自作関数select0のプログラム
    @IBAction func select0(){
        //10xで位を一つ上げてから0
        number = number * 10 + 0
        //String型の変数：値を変更可能のnumber、つまりここでは0を表示
        label.text = String(number)
    }
    
    //自作関数select1のプログラム
    @IBAction func select1(){
        //10xで位を一つ上げてから+1
        number = number * 10 + 1
        //String型の変数：値を変更可能のnumber、つまりここでは1を表示
        label.text = String(number)
    }
    
    //自作関数select2のプログラム
    @IBAction func select2(){
        //10xで位を一つ上げてから+2
        number = number * 10 + 2
        //String型の変数：値を変更可能のnumber、つまりここでは2を表示
        label.text = String(number)
    }
    
    //自作関数select3のプログラム
    @IBAction func select3(){
        //10xで位を一つ上げてから+3
        number = number * 10 + 3
        //String型の変数：値を変更可能のnumber、つまりここでは3を表示
        label.text = String(number)
    }
    
    //自作関数select4のプログラム
    @IBAction func select4(){
        //10xで位を一つ上げてから+4
        number = number * 10 + 4
        //String型の変数：値を変更可能のnumber、つまりここでは4を表示
        label.text = String(number)
    }
    
    //自作関数select5のプログラム
    @IBAction func select5(){
        //10xで位を一つ上げてから+5
        number = number * 10 + 5
        //String型の変数：値を変更可能のnumber、つまりここでは5を表示
        label.text = String(number)
    }
    
    //自作関数select6のプログラム
    @IBAction func select6(){
        //10xで位を一つ上げてから+6
        number = number * 10 + 6
        //String型の変数：値を変更可能のnumber、つまりここでは6を表示
        label.text = String(number)
    }
    
    //自作関数select7のプログラム
    @IBAction func select7(){
        //10xで位を一つ上げてから+7
        number = number * 10 + 7
        //String型の変数：値を変更可能のnumber、つまりここでは7を表示
        label.text = String(number)
    }
    
    //自作関数select8のプログラム
    @IBAction func select8(){
        //10xで位を一つ上げてから+8
        number = number * 10 + 8
        //String型の変数：値を変更可能のnumber、つまりここでは8を表示
        label.text = String(number)
    }
    
    //自作関数select9のプログラム
    @IBAction func select9(){
        //10xで位を一つ上げてから+9
        number = number * 10 + 9
        //String型の変数：値を変更可能のnumber、つまりここでは9を表示
        label.text = String(number)
    }
    
    
    
    //自作関数plusのプログラム
    @IBAction func plus(){
        //operation == 1 が起動
        calc(1)
    }
    
    //自作関数minusのプログラム
    @IBAction func minus(){
        //operation == 2 が起動
        calc(2)
    }
    
    //自作関数kakeruのプログラム
    @IBAction func kakeru(){
        //operation == 3 が起動
        calc(3)
    }
    
    //自作関数waruのプログラム
    @IBAction func waru(){
        //operation == 4 が起動
        calc(4)
    }
    
    //自作関数equalのプログラム
    @IBAction func equal(){
        //数値を入れる前のoperationの値が起動
        calc(operation)
        
    }
    
    //自作関数clearのプログラム
    @IBAction func clear(){
        //number(入力数)初期化
        number = 0
        //number2　これまでの計算を入れておく箱初期化
        number2 = nil
        //operation（四則演算の証拠）という0の箱初期化
        operation = 0
        //0を表示
        label.text = "0"
    }
}



