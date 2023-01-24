import SpriteKit
import GameplayKit

class Island : GameObject{
    
    init(){
        super.init(imageString: "island", initialScale: 2.0)
        zPosition = Layer.island.rawValue
        Start()
        verticalSpeed = 5
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
       
    }
    
    override func Start() {
        Reset()
    }
    
    override func Update() {
        Move()
        CheckBounds()
    }
    
    override func Reset() {
        position.y = 876
        let randomX : Int = (randomSource?.nextInt(upperBound: 626))! - 313
        position.x = CGFloat(randomX)
        isColliding = false
    }
    
    override func CheckBounds() {
        if(position.y <= -876){
            Reset()
        }
    }
    
    func Move(){
        position.y -= verticalSpeed!
    }
    
}
