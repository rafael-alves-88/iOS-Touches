//
//  ViewController.swift
//  Touches
//
//  Created by Thales Toniolo on 10/18/14.
//  Copyright (c) 2014 FIAP. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	@IBOutlet weak var bolaImageView: UIImageView!
	var tocandoBola:Bool = false

	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
	}

	//MARK: - Touchs Delegates
	override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
		// Recupera um toque qualquer na tela
		let touch: UITouch = touches.first!
		// Verifica se o dedo docima do objeto pelo toque na view geral
		if (CGRectContainsPoint(self.bolaImageView.frame, touch.locationInView(self.view))) {
			self.tocandoBola = true
		}
	}

	override func touchesMoved(touches: Set<UITouch>, withEvent event: UIEvent?) {
		// Recupera um toque qualquer na tela
		let touch: UITouch = touches.first!

		// Pega a posicao(x,y) do toque recuperado
		let location:CGPoint = touch.locationInView(self.view)

		// Quando tocado, se mover, a bola acompanha o movimento
		if (self.tocandoBola) {
			self.bolaImageView.center = CGPointMake(location.x, location.y);
		}
	}

	override func touchesEnded(touches: Set<UITouch>, withEvent event: UIEvent?) {
		self.tocandoBola = false
	}

	override func touchesCancelled(touches: Set<UITouch>?, withEvent event: UIEvent?) {
		self.tocandoBola = false
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}
}

