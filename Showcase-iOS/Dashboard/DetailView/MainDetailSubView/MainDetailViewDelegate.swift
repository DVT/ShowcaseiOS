import Foundation

protocol MainDetailViewCellDelegate {
    var sharedApplication: SharedApplicationDelegate?{get set}
    func openURL(iOSPackageName:String?)
}
