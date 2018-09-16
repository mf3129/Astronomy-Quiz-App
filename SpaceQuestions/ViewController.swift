
import UIKit


class ViewController: UIViewController {
    

    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet var progressBar: UIView!
    @IBOutlet weak var progressLabel: UILabel!
    

    
    let allQuestions = QuestionBank()
    var pickedAnswer : Bool = false
    var questionNumber : Int = 0
    var score : Int = 0
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
        addBackgroundImage()
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

 
    @IBAction func answerPressed(_ sender: AnyObject) {
    
        if sender.tag == 1 {
            pickedAnswer = true
        }
        
        else if sender.tag == 2 {
            pickedAnswer = false
        }
        
        checkAnswer()
        
        questionNumber = questionNumber + 1
        
        updateUI()
        
    }
    
 
    func updateUI() {
        
        progressBar.frame.size.width = (view.frame.size.width / 12) * CGFloat(questionNumber)
        
        progressLabel.text = String(questionNumber) + "/12"
        
        scoreLabel.text = "Score: " + String(score)
      
        nextQuestion()
    }

  
    func nextQuestion() {
        
        if questionNumber <= 11 {
            questionLabel.text = allQuestions.list[questionNumber].questionText
        }
        else {
            let alert = UIAlertController(title: "Awesome", message: "You've finished all the questions, do you want to start over?", preferredStyle: .alert)
            
            let restartAction = UIAlertAction(title: "Restart", style: .default, handler: { UIAlertAction in
                self.startOver()
            })
            
            alert.addAction(restartAction)
            
            present(alert, animated: true, completion: nil)
        }
        
    }
    

    func checkAnswer() {
        
        let correctAnswer = allQuestions.list[questionNumber].answer
        
        if correctAnswer == pickedAnswer {

            ProgressHUD.showSuccess("Correct!")
            
            score = score + 1
        }
        else {
            
            ProgressHUD.showError("Wrong!")
        }
    }
    
 
    func startOver() {
       
        questionNumber = 0
        score = 0
        
        updateUI()
        
    }
    
    func addBackgroundImage() {
        UIGraphicsBeginImageContext(self.view.frame.size)
        UIImage(named: "sand.jpg")?.draw(in: self.view.bounds)
        
        let image: UIImage = UIGraphicsGetImageFromCurrentImageContext()!
        
        UIGraphicsEndImageContext()
        
        view.backgroundColor = UIColor(patternImage: image)
    }
    
    
}   

