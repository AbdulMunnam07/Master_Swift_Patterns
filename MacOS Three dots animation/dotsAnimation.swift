import Cocoa

class BlurLoaderView: NSView {
    
    private var dot1: NSView!
    private var dot2: NSView!
    private var dot3: NSView!
    private var blurEffect: NSVisualEffectView!

    override init(frame: NSRect) {
        super.init(frame: frame)
        
        setupBlurBackground()
        setupDots()
        startAnimation()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    private func setupBlurBackground() {
        blurEffect = NSVisualEffectView(frame: self.bounds)
        blurEffect.material = .dark
        blurEffect.blendingMode = .behindWindow
        blurEffect.state = .active
        blurEffect.alphaValue = 0.7
        
        self.addSubview(blurEffect)
    }
    
    private func setupDots() {
        let dotSize: CGFloat = 20
        
        dot1 = createDot(CGPoint(x: 70, y: 60), size: dotSize)
        dot2 = createDot(CGPoint(x: 100, y: 60), size: dotSize)
        dot3 = createDot(CGPoint(x: 130, y: 60), size: dotSize)
        
        self.addSubview(dot1)
        self.addSubview(dot2)
        self.addSubview(dot3)
    }
    
    private func createDot(_ point: CGPoint, size: CGFloat) -> NSView {
        let dot = NSView(frame: NSRect(x: point.x, y: point.y, width: size, height: size))
        dot.wantsLayer = true
        dot.layer?.cornerRadius = size / 2
        dot.layer?.backgroundColor = NSColor.white.cgColor
        return dot
    }
    
    private func startAnimation() {
        animateDot(dot1, delay: 0)
        animateDot(dot2, delay: 0.2)
        animateDot(dot3, delay: 0.4)
    }
    
    private func animateDot(_ dot: NSView, delay: Double) {
        let animation = CABasicAnimation(keyPath: "opacity")
        animation.fromValue = 1.0
        animation.toValue = 0.3
        animation.duration = 0.6
        animation.repeatCount = .infinity
        animation.autoreverses = true
        animation.beginTime = CACurrentMediaTime() + delay
        
        dot.layer?.add(animation, forKey: "dotAnimation")
    }
    
    func show(in view: NSView) {
        self.frame = view.bounds
        view.addSubview(self)
    }
    
    func hide() {
        self.removeFromSuperview()
    }
}
