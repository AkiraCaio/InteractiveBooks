// swiftlint:disable all
// Generated using SwiftGen — https://github.com/SwiftGen/SwiftGen

import Foundation

// swiftlint:disable superfluous_disable_command
// swiftlint:disable file_length

// MARK: - Strings

// swiftlint:disable explicit_type_interface function_parameter_count identifier_name line_length
// swiftlint:disable nesting type_body_length type_name
internal enum L10n {

  internal enum Button {
    /// START
    internal static let title = L10n.tr("Localizable", "button.title")
  }

  internal enum ExplanationText {
    /// Explore the exciting natural world around us. This is your very own nature scrapbook, packed with fascinating facts and brilliant activities. Doodle, draw and colour and find out how plants grow as well as the different parts of plants, seeds, and flowers.
    internal static let firstScreen = L10n.tr("Localizable", "explanationText.firstScreen")
    /// Diagrams, cross sections, and illustrations get kids up close and personal with glossy red peppers, plump orange pumpkins, little peas, and dozens of other vegetables; Learn about color, climatic region in which the plants grow, and their uses.
    internal static let secondScreen = L10n.tr("Localizable", "explanationText.secondScreen")
    /// Discover the amazing world of outer space as you scratch pictures of planets, comets, and spacecraft to reveal glittery, swirly, and even glow-in-the-dark colors beneath. Ask questions, seek answers and explore the natural world.
    internal static let thirdScreen = L10n.tr("Localizable", "explanationText.thirdScreen")
  }

  internal enum ProgressBar {
    /// Difficulty
    internal static let title = L10n.tr("Localizable", "progressBar.title")
  }

  internal enum Title {
    /// My books
    internal static let main = L10n.tr("Localizable", "title.main")
    /// Discover
    internal static let secoundVC = L10n.tr("Localizable", "title.secoundVC")
    /// Profile
    internal static let thierdVC = L10n.tr("Localizable", "title.thierdVC")
  }
}
// swiftlint:enable explicit_type_interface function_parameter_count identifier_name line_length
// swiftlint:enable nesting type_body_length type_name

// MARK: - Implementation Details

extension L10n {
  private static func tr(_ table: String, _ key: String, _ args: CVarArg...) -> String {
    // swiftlint:disable:next nslocalizedstring_key
    let format = NSLocalizedString(key, tableName: table, bundle: Bundle(for: BundleToken.self), comment: "")
    return String(format: format, locale: Locale.current, arguments: args)
  }
}

private final class BundleToken {}
