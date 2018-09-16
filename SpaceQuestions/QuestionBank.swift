
import Foundation

class QuestionBank {
    
    var list = [Question]()
    
    init() {
        
        let item = Question(text: "There's a class of stars that are just 25ºC.", correctAnswer: true)
        
        
        list.append(item)
        
        
        list.append(Question(text: "The Great Wall of China is the only human-made object you can see from space.", correctAnswer: false))
        
        list.append(Question(text: "The nearest black hole to Earth is just 1,600 light years away.", correctAnswer: false))
        
        list.append(Question(text: "The sun is yellow.", correctAnswer: false))
        
        list.append(Question(text: "If you went into space without a spacesuit on, you'd explode.", correctAnswer: false))
        
        list.append(Question(text: "The universe is currently expanding.", correctAnswer: true))
        
        list.append(Question(text: "The Laws of Physics break down at the center of a black hole.", correctAnswer: true))
        
        list.append(Question(text: "There are an infinite number of parallel universe.", correctAnswer: true))
        
        list.append(Question(text: "It is possible to go faster than the speed of light.", correctAnswer: false))
        
        list.append(Question(text: "The father out we look into space, the farther back in time we look.", correctAnswer: false))
        
        list.append(Question(text: "Going into space makes you weightless.", correctAnswer: false))
        
        list.append(Question(text: " The vacuum of space is always cold.", correctAnswer: false))
    }
    
}


