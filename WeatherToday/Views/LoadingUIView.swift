//
//  LoadingUIView.swift
//  WeatherToday
//
//  Created by Festus Obi on 05/12/2021.
//

import SwiftUI

struct LoadingUIView: View {
    var body: some View {
        ProgressView()
            .progressViewStyle(CircularProgressViewStyle(tint: .white))
            .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

struct LoadingUIView_Previews: PreviewProvider {
    static var previews: some View {
        LoadingUIView()
    }
}
