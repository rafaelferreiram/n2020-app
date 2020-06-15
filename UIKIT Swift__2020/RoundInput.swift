import UIKit

class RoundInput: UITextField {
    
 lazy var bottomBorder: CALayer = {
            let border = CALayer();
            border.borderColor = UIColor.darkGray.cgColor;
            border.borderWidth = 1;
            return border
    }()

    override func awakeFromNib() {
        super.awakeFromNib()

        borderStyle = .none;
        layer.addSublayer(bottomBorder);
    }

    override func layoutSubviews() {
        super.layoutSubviews();

        let borderColor = isFirstResponder ? UIColor.red : UIColor.darkGray;
        bottomBorder.borderColor = borderColor.cgColor;
        bottomBorder.frame = CGRect(x: 0, y: layer.frame.size.height - 1, width: layer.frame.size.width, height: 1)
    }
    
}
