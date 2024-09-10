//
//  ContentView.swift
//  NXUSBDRIVERAPP
//
//  Created by Chen-min Lian on 2024/9/10.
//

import SwiftUI

struct DriverLoadingView: View {

    @ObservedObject var viewModel: DriverLoadingViewModel = .init()

    var body: some View {
        VStack(alignment: .center) {
            Text("NX_USB DRIVER MANAGER")
                .padding()
                .font(.title)
            Text(self.viewModel.dextLoadingState)
                .multilineTextAlignment(.center)
            HStack {
                Button(
                    action: {
                        self.viewModel.activateMyDext()
                    }, label: {
                        Text("Install DRIVER")
                    }
                )
            }
        }.frame(width: 500, height: 200, alignment: .center)
    }
}

struct DriverLoadingView_Previews: PreviewProvider {
    static var previews: some View {
        DriverLoadingView()
    }
}
