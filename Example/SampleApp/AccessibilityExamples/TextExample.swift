/*
See LICENSE folder for this sample’s licensing information.

Abstract:
Text-related accessibility examples
*/

import Foundation
import SwiftUI

public struct TextExample: View {
    public var body: some View {
        VStack(alignment: .leading) {
            Text("Automatic Text")

            LargeSpacer()

            Text("Relabeled Text")
                .accessibilityLabel(Text("Accessibility Label"))
                .accessibilityAddTraits(.isStaticText)

            LargeSpacer()

            Text("Formatted Text")
                .foregroundColor(.red)
                .bold()

            LargeSpacer()

            VStack(alignment: .leading) {
                Text("Stacked Multiple Line Text Line 1")
                Text("This is on another line")
            }
            .accessibilityElement(children: .contain)

            Text("Simple Multiple Line Text\nThis is on second line\nThis is on third line")
                .lineLimit(nil)

            LargeSpacer()

            Text("Text with value and label")
                .accessibilityValue(Text("Text Value"))
                .accessibilityLabel(Text("Text Label"))
        }
    }

    public init() {}
}
