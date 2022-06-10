//
//  SideMenu.swift
//  Project AR
//
//  Created by Kurtis Chueng on 9/6/2022.
//

import SwiftUI

struct SideMenu: View {
  
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "person")
                    .padding(12)
                    .background(.white.opacity(0.2))
                    .mask(Circle())
                VStack(alignment: .leading, spacing: 2) {
                    Text("Kurtis")
                        .font(.body)
                    Text("Student")
                        .font(.body)
                        .opacity(0.7)
                }
                Spacer()
            }
            .padding()
            Spacer()
        }
        .foregroundColor(.white)
        .frame(maxWidth: 288, maxHeight: .infinity)
        .background(Color(.purple))
        .mask(RoundedRectangle(cornerRadius: 25, style:
                .continuous))
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

struct SideMenu_Previews: PreviewProvider {
    static var previews: some View {
        SideMenu()
    }
}
