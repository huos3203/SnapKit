//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport
import SnapKit

class MyViewController : UIViewController {
    override func loadView() {
        let view = UIView()
        view.backgroundColor = .white
        self.view = view
        var box = UIView()
        
        var imgView = UIView()
        imgView.backgroundColor = #colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 1)
        box.addSubview(imgView)
        var titleLabel = UILabel()
        box.addSubview(titleLabel)
        imgView.snp.makeConstraints { (make) in
            make.top.left.equalTo(10)
            make.right.equalTo(-10)
            make.bottom.equalTo(-35)
//            make.size.equalTo(box).inset(UIEdgeInsets.init(top: 10, left: 10, bottom: 10, right: 10))
//            make.center.equalTo(box)

        }
        
        titleLabel.snp.makeConstraints { (make) in
//            make.bottom.centerX.equalTo(box)
            make.height.equalTo(25)
            make.centerX.equalTo(box)
            make.bottom.equalTo(imgView).offset(25 + 10)
        }
        titleLabel.text = "预览图"
        
        box.backgroundColor = #colorLiteral(red: 0.3098039329, green: 0.01568627544, blue: 0.1294117719, alpha: 1)
        self.view.addSubview(box)
        box.snp.makeConstraints { (make) -> Void in
            make.width.height.equalTo(150)
            make.center.equalTo(self.view)
        }
    }
}
// Present the view controller in the Live View window
PlaygroundPage.current.liveView = MyViewController()
