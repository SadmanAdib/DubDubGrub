//
//  View+Ext.swift
//  DubDubGrub
//
//  Created by Sadman Adib on 31/7/22.
//

import SwiftUI

extension View {
    func ProfileNameStyle() -> some View {
        self.modifier(ProfileNameText())
    }
}
