
import Foundation

protocol ContactUsPresenterViewable {
    func showOnSuccess(with officeViewModels: [OfficeViewModel])
    func showOnFailure(with error: Error)
}
