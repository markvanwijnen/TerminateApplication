#if os(macOS)

import SwiftUI

struct TerminateApplicationAction {
    let action: () -> ()
    func callAsFunction() { action() }
}

struct TerminateApplicationEnvironmentKey: EnvironmentKey {
    static var defaultValue: TerminateApplicationAction = TerminateApplicationAction {
        NSApplication.shared.terminate(nil)
    }
}

extension EnvironmentValues {
    var terminateApplication: TerminateApplicationAction {
        get { self[TerminateApplicationEnvironmentKey.self] }
    }
}

#endif
