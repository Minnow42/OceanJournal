//
//  DreamListRow.swift
//  OceanTheme
//
//  Created by Kellie Stein on 5/21/21.
//

import SwiftUI

struct DreamRowView: View {
    var dream: DreamItem
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(dream.dreamItemTitle)
                    .fontWeight(.bold)
                    .font(.system(.headline, design: .rounded))
                Spacer()
                Text(dream.dreamItemDesc)
                    .font(.system(.subheadline))
            }
            Spacer()
        }
    }
}

struct DreamRowView_Previews: PreviewProvider {
    static var previews: some View {
        DreamRowView(dream: DreamItem(dreamItemTitle: "Title", dreamItemDesc: "Multiline description"))
    }
}
