import Foundation

class MainDetailViewModel: MainDetailViewCellDelegate {

    // MARK: Properties

    var sharedApplication: SharedApplicationDelegate?

    // MARK: Opertaion(s)

    func openURL(iOSPackageName:String?) {
        guard let iOSPackage = iOSPackageName, let url = URL(string: iOSPackage) else {
            return
        }
        self.sharedApplication?.openSharedApplication(with: url)
    }

}
