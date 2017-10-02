//==========================================
//  ViewController.swift
//  jeuMemoire
//
//  Created by Andre Cruz on 2017-09-28.
//  Copyright © 2017 Andre Cruz. All rights reserved.
//==========================================

import UIKit

class ViewController: UIViewController {
    //--------------------
    @IBOutlet weak var backA1: UIView!
    @IBOutlet weak var backA2: UIView!
    @IBOutlet weak var backA3: UIView!
    @IBOutlet weak var backA4: UIView!
    
    @IBOutlet weak var backB1: UIView!
    @IBOutlet weak var backB2: UIView!
    @IBOutlet weak var backB3: UIView!
    @IBOutlet weak var backB4: UIView!
    
    @IBOutlet weak var backC1: UIView!
    @IBOutlet weak var backC2: UIView!
    @IBOutlet weak var backC3: UIView!
    @IBOutlet weak var backC4: UIView!
    
    @IBOutlet weak var frontA1: UIView!
    @IBOutlet weak var frontA2: UIView!
    @IBOutlet weak var frontA3: UIView!
    @IBOutlet weak var frontA4: UIView!
    
    @IBOutlet weak var frontB1: UIView!
    @IBOutlet weak var frontB2: UIView!
    @IBOutlet weak var frontB3: UIView!
    @IBOutlet weak var frontB4: UIView!
    
    @IBOutlet weak var frontC1: UIView!
    @IBOutlet weak var frontC2: UIView!
    @IBOutlet weak var frontC3: UIView!
    @IBOutlet weak var frontC4: UIView!
   
    @IBOutlet weak var animalViewA1: UIImageView!
    @IBOutlet weak var animalViewA2: UIImageView!
    @IBOutlet weak var animalViewA3: UIImageView!
    @IBOutlet weak var animalViewA4: UIImageView!
    
    @IBOutlet weak var animalViewB1: UIImageView!
    @IBOutlet weak var animalViewB2: UIImageView!
    @IBOutlet weak var animalViewB3: UIImageView!
    @IBOutlet weak var animalViewB4: UIImageView!
    
    @IBOutlet weak var animalViewC1: UIImageView!
    @IBOutlet weak var animalViewC2: UIImageView!
    @IBOutlet weak var animalViewC3: UIImageView!
    @IBOutlet weak var animalViewC4: UIImageView!
    
    @IBOutlet weak var cardA1: UIView!
    @IBOutlet weak var cardA2: UIView!
    @IBOutlet weak var cardA3: UIView!
    @IBOutlet weak var cardA4: UIView!
    @IBOutlet weak var cardB1: UIView!
    @IBOutlet weak var cardB2: UIView!
    @IBOutlet weak var cardB3: UIView!
    @IBOutlet weak var cardB4: UIView!
    @IBOutlet weak var cardC1: UIView!
    @IBOutlet weak var cardC2: UIView!
    @IBOutlet weak var cardC3: UIView!
    @IBOutlet weak var cardC4: UIView!
    
    @IBOutlet weak var medaille: UIImageView!
    
    var arrayOfAnimalViews: [UIImageView]!
    var arrayOfAnimalNames: [String] = ["camelo.png", "camelo.png", "gato.png", "gato.png", "porco.png", "porco.png", "rato.png", "rato.png", "touro.png", "touro.png", "vaca.png", "vaca.png"]
    var arrayOfRandomAnimalNames = [String]()
    var arrayChosenCards = [String]()
    var arrayChosenViews = [UIView]()
    
    var cardsToReset: [UIView]!
    
    var arrayOfShowingBacks = [UIView]()
    var arrayOfHidingFronts = [UIView]()
    
    var count:Int = 0
    
    //--------------------
    override func viewDidLoad() {
        super.viewDidLoad()
        cardsToReset = [cardA1, cardA2, cardA3, cardA4, cardB1, cardB2, cardB3, cardB4, cardC1, cardC2, cardC3, cardC4]
        
        arrayOfAnimalViews = [animalViewA1, animalViewA2, animalViewA3, animalViewA4, animalViewB1, animalViewB2, animalViewB3, animalViewB4, animalViewC1, animalViewC2, animalViewC3, animalViewC4]
        
        randomAnimalNames()
        
        setImagesToCard()
    }
    //--------------------
    @IBAction func showCard(_ sender: UIButton) {
        
        if arrayOfHidingFronts.count == 2 {
            return
        }
        switch sender.tag {
        case 0:
            flipCard(from: frontA1, to: backA1)
            arrayChosenCards.append(arrayOfRandomAnimalNames[0])
            arrayChosenViews.append(cardA1)
            arrayOfHidingFronts.append(frontA1)
            arrayOfShowingBacks.append(backA1)
        case 1:
            flipCard(from: frontA2, to: backA2)
            arrayChosenCards.append(arrayOfRandomAnimalNames[1])
            arrayChosenViews.append(cardA2)
            arrayOfHidingFronts.append(frontA2)
            arrayOfShowingBacks.append(backA2)
        case 2:
            flipCard(from: frontA3, to: backA3)
            arrayChosenCards.append(arrayOfRandomAnimalNames[2])
            arrayChosenViews.append(cardA3)
            arrayOfHidingFronts.append(frontA3)
            arrayOfShowingBacks.append(backA3)
        case 3:
            flipCard(from: frontA4, to: backA4)
            arrayChosenCards.append(arrayOfRandomAnimalNames[3])
            arrayChosenViews.append(cardA4)
            arrayOfHidingFronts.append(frontA4)
            arrayOfShowingBacks.append(backA4)
        case 4:
            flipCard(from: frontB1, to: backB1)
            arrayChosenCards.append(arrayOfRandomAnimalNames[4])
            arrayChosenViews.append(cardB1)
            arrayOfHidingFronts.append(frontB1)
            arrayOfShowingBacks.append(backB1)
        case 5:
            flipCard(from: frontB2, to: backB2)
            arrayChosenCards.append(arrayOfRandomAnimalNames[5])
            arrayChosenViews.append(cardB2)
            arrayOfHidingFronts.append(frontB2)
            arrayOfShowingBacks.append(backB2)
        case 6:
            flipCard(from: frontB3, to: backB3)
            arrayChosenCards.append(arrayOfRandomAnimalNames[6])
            arrayChosenViews.append(cardB3)
            arrayOfHidingFronts.append(frontB3)
            arrayOfShowingBacks.append(backB3)
        case 7:
            flipCard(from: frontB4, to: backB4)
            arrayChosenCards.append(arrayOfRandomAnimalNames[7])
            arrayChosenViews.append(cardB4)
            arrayOfHidingFronts.append(frontB4)
            arrayOfShowingBacks.append(backB4)
        case 8:
            flipCard(from: frontC1, to: backC1)
            arrayChosenCards.append(arrayOfRandomAnimalNames[8])
            arrayChosenViews.append(cardC1)
            arrayOfHidingFronts.append(frontC1)
            arrayOfShowingBacks.append(backC1)
        case 9:
            flipCard(from: frontC2, to: backC2)
            arrayChosenCards.append(arrayOfRandomAnimalNames[9])
            arrayChosenViews.append(cardC2)
            arrayOfHidingFronts.append(frontC2)
            arrayOfShowingBacks.append(backC2)
        case 10:
            flipCard(from: frontC3, to: backC3)
            arrayChosenCards.append(arrayOfRandomAnimalNames[10])
            arrayChosenViews.append(cardC3)
            arrayOfHidingFronts.append(frontC3)
            arrayOfShowingBacks.append(backC3)
        case 11:
            flipCard(from: frontC4, to: backC4)
            arrayChosenCards.append(arrayOfRandomAnimalNames[11])
            arrayChosenViews.append(cardC4)
            arrayOfHidingFronts.append(frontC4)
            arrayOfShowingBacks.append(backC4)
        default:
            break
        }

        verification()

        if arrayChosenViews.count == 2{
            count = count + 1
            if count == 6 {
                sleep (2)
                medaille.isHidden = false
                animationScaleUp()
                animationScaleDown()
            }
        }
    }

    //--------------------
    func flipCard(from: UIView, to: UIView){
        let transitionOptions: UIViewAnimationOptions = [.transitionFlipFromRight, .showHideTransitionViews]
        
        UIView.transition(with: from, duration: 1.0, options: transitionOptions, animations: {from.isHidden = true})
        
        UIView.transition(with: to, duration: 1.0, options: transitionOptions, animations: {to.isHidden = false})
    }
    //--------------------
    func setImagesToCard(){
        var number = 0
        for animalsView in arrayOfAnimalViews {
            animalsView.image = UIImage(named: arrayOfRandomAnimalNames[number])
            number = number + 1
        }
    }
    //--------------------
    func randomAnimalNames(){
        let numberOfAnimals = arrayOfAnimalNames.count
        for _ in 1...numberOfAnimals{
            let randomNumber = Int(arc4random_uniform(UInt32(arrayOfAnimalNames.count)))
            arrayOfRandomAnimalNames.append(arrayOfAnimalNames[randomNumber])
            arrayOfAnimalNames.remove(at: randomNumber)
        }
    }
    //--------------------
    func verification(){
        if arrayChosenCards.count == 2 {
            if arrayChosenCards[0] == arrayChosenCards[1]{
                Timer.scheduledTimer(timeInterval: 2, target: self, selector: (#selector(hideCards)), userInfo: nil, repeats: false)
            } else {
                arrayChosenViews = []
            }
            arrayChosenCards = []
        }
        resetCards()
    }
    //--------------------
    func resetCards(){
        if arrayOfShowingBacks.count == 2 {
            Timer.scheduledTimer(timeInterval: 2, target: self, selector: (#selector(reflip)), userInfo: nil, repeats: false)
        }
    }
    //--------------------
    func reflip(){
        for index in 0..<arrayOfShowingBacks.count {
            flipCard(from: arrayOfShowingBacks[index], to: arrayOfHidingFronts[index])
        }
        arrayOfHidingFronts = []
        arrayOfShowingBacks = []
    }
    //--------------------
    func hideCards(){
        arrayChosenViews[0].isHidden = true
        arrayChosenViews[1].isHidden = true
        arrayChosenViews = []
    }
    //--------------------
    @IBAction func reset(_ sender: UIButton) {
        //faire une bucle ici
        for card in cardsToReset {
            card.isHidden = false
        }
        arrayOfAnimalNames = ["camelo.png", "camelo.png", "gato.png", "gato.png", "porco.png", "porco.png", "rato.png", "rato.png", "touro.png", "touro.png", "vaca.png", "vaca.png"]
        arrayOfRandomAnimalNames = []
        randomAnimalNames()
        setImagesToCard()
        reflip()
        medaille.isHidden = true
    }
    //--------------------
    private func animationScaleUp(){
        UIView.animate(withDuration: 0.4, delay: 1, options: [.curveEaseIn, .allowUserInteraction],  animations: {self.medaille.transform = CGAffineTransform (scaleX: 1.3, y: 1.3)}) {(true) in self.animationScaleUp()}
    }
    
    private func animationScaleDown(){
        UIView.animate(withDuration: 0.4, delay: 1, options: [.curveEaseOut, .allowUserInteraction],  animations: {self.medaille.transform = CGAffineTransform (scaleX: 1, y: 1)}) {(true) in self.animationScaleDown()}
    }
    //--------------------
}

