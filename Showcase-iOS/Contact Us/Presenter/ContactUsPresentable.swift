import Foundation

protocol ContactUsPresentable {
    func onRetrieveOfficesComplete(with offices: [Office])
    func onRetrieveOfficesFailed(with error: Error)
    func retrieveContacts()
    func trackButtonTap(analyticTag: AnalyticTag)
    func trackScreenDidAppear(analyticTag: AnalyticTag)
}
