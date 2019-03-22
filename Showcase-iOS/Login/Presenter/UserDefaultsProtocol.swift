import Foundation

protocol UserDefaultsProtocol {
    func bool(forKey key: String) -> Bool
    func set(value: Bool, forKey key: String)
}

struct UserDefaultsImplementation: UserDefaultsProtocol {

    private let userDefaults = UserDefaults.standard

    func bool(forKey key: String) -> Bool {
        return userDefaults.bool(forKey: key)
    }

    func set(value: Bool, forKey key: String) {
        userDefaults.set(value, forKey: key)
    }

}
