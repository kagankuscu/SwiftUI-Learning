//
//  ProfileHost.swift
//  Landmarks
//
//  Created by Kagan Kuscu on 14.05.23.
//  Copyright © 2023 Apple. All rights reserved.
//

import SwiftUI

struct ProfileHost: View {
    @State private var draftProfile = Profile.default
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            ProfileSummary(profile: draftProfile)
        }
        .padding()
    }
}

struct ProfileHost_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHost()
    }
}
