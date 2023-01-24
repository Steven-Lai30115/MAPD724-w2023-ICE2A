import GameplayKit
import SpriteKit

class Player: GameObject {
    init() {
        super.init(imageString: "plane", initialScale: 2.0)
        Start()
        Reset()
    }
    
    @available(*, unavailable)
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder) has not been implemented")
    }
    
    override func Start() {
        zPosition = Layer.plane.rawValue
    }
    
    override func Update() {
        CheckBounds()
    }
    
    override func Reset() {
        position.x = 0
        position.y = -640
    }
    
    override func CheckBounds() {
        if position.x <= -320 {
            position.x = -320
        }
        
        if position.x >= 320 {
            position.x = 320
        }
    }
    
    func TouchMove(newPos: CGPoint) {
        position = newPos
    }
}
