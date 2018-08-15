//
//  ViewController.swift
//  calculator
//
//  Created by Mac on 21/12/17.
//  Copyright © 2017 Mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
			
	
	@IBOutlet weak var AC: UIButton!
	var temp : Float = 0
	var result : Float = 0
	var sign:Character? = nil
	var temp1:Float? = nil
	var count : Int = 0
	var istyping : Bool = false
	@IBOutlet weak var display: UILabel!
	@IBAction func ac(_ sender: UIButton) {
		
		display.text = "0"
		temp = 0
		result = 0
		sign = nil
		temp1 = 0
		count = 0
		
		istyping = false
	}
	
	@IBAction func changesign(_ sender: UIButton) {

			display.text = "\(Float(display.text!)! * Float(-1))"
		}
	
	@IBAction func percentage(_ sender: UIButton) {
		
		temp = Float(display.text!)!
		temp = temp / 100
		display.text = "\(temp)"
	}
	
	@IBAction func divide(_ sender: Any) {
		count += 1
		istyping = false
		sign = "/"
		if(temp == 0){
			temp = Float(display.text!)!
		}else{
			temp1 = Float(display.text!)!
		}
		if(count == 2){
			temp = temp / temp1!
			result = temp
			temp1 = nil
			count = 1
			if result == floor(result) {
				display.text = "\(Int(result))"
			}else{
				display.text = "\(result)"
			}
			
		}
		
		
	}
	@IBAction func multiply(_ sender: UIButton) {
		count += 1
		istyping = false
		sign = "x"
		if(temp == 0){
			temp = Float(display.text!)!
		}else{
			temp1 = Float(display.text!)!
		}
		if(count == 2){
			temp = temp * temp1!
			result = temp
			temp1 = nil
			count = 1
			if result == floor(result) {
				display.text = "\(Int(result))"
			}else{
				display.text = "\(result)"
			}
			
		}
	}
	
	@IBAction func minus(_ sender: UIButton) {
		count += 1
		istyping = false
		sign = "-"
		if(temp == 0){
			temp = Float(display.text!)!
		}else{
			temp1 = Float(display.text!)!
		}
		if(count == 2){
			temp = temp - temp1!
			result = temp
			temp1 = nil
			count = 1
			if result == floor(result) {
				display.text = "\(Int(result))"
			}else{
				display.text = "\(result)"
			}
			
		}
	}
	@IBAction func plus(_ sender: UIButton) {
		count += 1
		istyping = false
		sign = "+"
		if(temp == 0){
			temp = Float(display.text!)!
		}else{
			temp1 = Float(display.text!)!
		}
		if(count == 2){
			temp = temp + temp1!
			result = temp
			temp1 = nil
			count = 1
			if result == floor(result) {
				display.text = "\(Int(result))"
			}else{
				display.text = "\(result)"
			}
			
		}
	}
	
	
	@IBAction func point(_ sender: UIButton) {
		display.text = display.text! + "."
	}
	@IBAction func zero(_ sender: UIButton) {
		if(istyping){
			display.text = display.text! + "0"
		}else{
			display.text = "0"
			istyping = true
		}
		
	}

	
	@IBAction func one(_ sender: UIButton) {
		
		
		if(istyping){
			display.text = display.text! + "1"
		}else{
			display.text = "1"
			istyping = true
		}

		}
			
		
	
	@IBAction func two(_ sender: UIButton) {
		
		if(istyping){
			display.text = display.text! + "2"
		}else{
			display.text = "2"
			istyping = true
		}
		
				
	}
	
	@IBAction func three(_ sender: UIButton) {
		
		if(istyping){
			display.text = display.text! + "3"
		}else{
			display.text = "3"
			istyping = true
		}

		
	
	}
	
	@IBAction func four(_ sender: UIButton) {
		if(istyping){
			display.text = display.text! + "4"
		}else{
			display.text = "4"
			istyping = true
		}
	}
	
	@IBAction func five(_ sender: UIButton) {
		
		if(istyping){
			display.text = display.text! + "5"
		}else{
			display.text = "5"
			istyping = true
		}
}
	
	@IBAction func six(_ sender: UIButton) {
		
		if(istyping){
			display.text = display.text! + "6"
		}else{
			display.text = "6"
			istyping = true
		}
	}
	
	@IBAction func seven(_ sender: UIButton) {
		
		if(istyping){
			display.text = display.text! + "7"
		}else{
			display.text = "7"
			istyping = true
		}
	}
	
	@IBAction func eight(_ sender: UIButton) {
		
		if(istyping){
			display.text = display.text! + "8"
		}else{
			display.text = "8"
			istyping = true
		}
	}
	
	@IBAction func nine(_ sender: UIButton) {
		
		if(istyping){
			display.text = display.text! + "9"
		}else{
			display.text = "9"
			istyping = true
		}

	}
	@IBAction func isequal(_ sender: UIButton) {
		temp1 = Float(display.text!)!
		if(result == 0){
			switch sign! {
				
			case "+" :
					result = (temp) + temp1!
					display.text = "\(result)"
			case "-":
				result = (temp) - temp1!
				display.text = "\(result)"
			case "/":
				result = (temp) / temp1!
				display.text = "\(result)"
			case "x":
				result = (temp) * temp1!
				display.text = "\(result)"
			default : 
					result = 0
			}
		}
		if result == floor(result) {
				display.text = "\(Int(result))"
			}else{
				display.text = "\(result)"
		}
			
		
		count = 0
		istyping = false
		temp = Float(display.text!)!
		sign = nil
		temp1 = 0
		result = 0
	
	}
	override func viewDidLoad() {
		super.viewDidLoad()
		display.isUserInteractionEnabled = true
		display.text = ""
		let rightgesture = UISwipeGestureRecognizer(target: self, action: #selector(self.swipedright))
		rightgesture.direction = UISwipeGestureRecognizerDirection.right
		self.display.addGestureRecognizer(rightgesture)
		// Do any additional setup after loading the view, typically from a nib.
	}
	func swipedright(){
		var value: String = display.text!
		//let n = value.characters.count
		value.remove(at: value.index(before: value.endIndex))
		if(value == ""){
				display.text = "0"
			self.ac(AC)
		}else{
		display.text = "\(value)"
		}
	}
	

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}
	
	
}	

