import UIKit
extension UIView {
    var marginTop:CGFloat {
        set {
            var y:CGFloat = newValue
            if let subviews = superview?.subviews {
                var prevView:UIView?
                for view:UIView in subviews {
                    if view == self {
                        break
                    }
                    prevView = view
                }
                if let prevView = prevView {
                    y += prevView.frame.origin.y + prevView.frame.height
                }
            }
            frame = CGRectMake(frame.origin.x, y, frame.width, frame.height)
        }
        get {
            return 0.0
        }
    }
    var marginTopAbsolute:CGFloat {
        set {
            let y:CGFloat = newValue
            frame = CGRectMake(frame.origin.x, y, frame.width, frame.height)
        }
        get {
            return 0.0
        }
    }
    var marginBottom:CGFloat {
        set {
            if let _superview = superview {
                var y:CGFloat = _superview.frame.height - newValue - frame.height
                if let subviews = superview?.subviews {
                    var nextView:UIView?
                    var shouldBreakOnNext = false
                    for view:UIView in subviews {
                        if shouldBreakOnNext {
                            nextView = view
                            break
                        }
                        if view == self {
                            shouldBreakOnNext = true
                        }
                    }
                    if let nextView = nextView {
                        y = nextView.frame.origin.y - newValue
                    }
                }
                frame = CGRectMake(frame.origin.x, y, frame.width, frame.height)
            }
        }
        get {
            return 0.0
        }
    }
    var marginBottomAbsolute:CGFloat {
        set {
            if let _superview = superview {
                let y:CGFloat = _superview.frame.height - newValue - frame.height
                frame = CGRectMake(frame.origin.x, y, frame.width, frame.height)
            }
        }
        get {
            return 0.0
        }
    }
    var marginLeft:CGFloat {
        set {
            var x:CGFloat = newValue
            if let subviews = superview?.subviews {
                var prevView:UIView?
                for view:UIView in subviews {
                    if view == self {
                        break
                    }
                    prevView = view
                }
                if let prevView = prevView {
                    x += prevView.frame.origin.x + prevView.frame.width
                }
            }
            frame = CGRectMake(x, frame.origin.y, frame.width, frame.height)
        }
        get {
            return 0.0
        }
    }
    var widthPercent:CGFloat {
        set {
            if let superview = superview {
                let width = superview.frame.width * newValue / 100
                let x = (superview.frame.width - width) / 2
                frame = CGRectMake(x, frame.origin.y, width, frame.height)
            }
        }
        get {
            return 0.0
        }
    }
    var heightPercent:CGFloat {
        set {
            if let superview = superview {
                let height = superview.frame.height * newValue / 100
                let y = (superview.frame.height - height) / 2
                frame = CGRectMake(frame.origin.x, y, frame.width, height)
            }
        }
        get {
            return 0.0
        }
    }
    var width:CGFloat {
        set {
            frame = CGRectMake(frame.origin.x, frame.origin.y, newValue, frame.height)
        }
        get {
            return 0.0
        }
    }
    var height:CGFloat {
        set {
            frame = CGRectMake(frame.origin.x, frame.origin.y, frame.width, newValue)
        }
        get {
            return 0.0
        }
    }
}