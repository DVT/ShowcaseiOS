
import Foundation
import UIKit

extension UIView {

    // MARK: - Pin to Edges

    func addSubviewPinnedToEdges(_ view: UIView) {
        addSubviewPinnedToEdges(view, leading: 0, top: 0, trailing: 0, bottom: 0)
    }

    func addSubviewPinnedToEdges(_ view: UIView, leading: CGFloat, top: CGFloat, trailing: CGFloat, bottom: CGFloat) {
        addSubview(view)
        pinSubviewToEdges(view, leading: leading, top: top, trailing: trailing, bottom: bottom)
    }

    func pinSubviewToEdges(_ subview: UIView, leading: CGFloat = 0, top: CGFloat = 0, trailing: CGFloat = 0, bottom: CGFloat = 0) {
        guard subviews.contains(subview) else { return }
        subview.translatesAutoresizingMaskIntoConstraints = false
        subview.leadingAnchor.constraint(equalTo: leadingAnchor, constant: leading).isActive = true
        subview.topAnchor.constraint(equalTo: topAnchor, constant: top).isActive = true
        subview.trailingAnchor.constraint(equalTo: trailingAnchor, constant: trailing).isActive = true
        subview.bottomAnchor.constraint(equalTo: bottomAnchor, constant: bottom).isActive = true
    }

    // MARK: Round edges

    func roundCorners(with radius: CGFloat = 4) {
        let center = self.center
        layer.cornerRadius = radius
        self.center = center
        clipsToBounds = true
    }

}
