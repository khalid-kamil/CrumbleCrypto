//
//  UIApplication+Extension.swift
//  CrumbleCrypto
//
//  Created by Khalid Kamil on 21/12/2023.
//

import SwiftUI

extension UIApplication {

    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
