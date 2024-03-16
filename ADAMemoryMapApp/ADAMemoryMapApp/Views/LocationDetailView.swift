//
//  LocationDetailView.swift
//  ADAMemoryMapApp
//
//  Created by kimjihee on 3/16/24.
//

import SwiftUI

struct LocationDetailView: View {
    
    let location: Location
    
    var body: some View {
        ScrollView {
            VStack {
                TabView{
                    ForEach(location.imageNames, id: \.self) { imageName in
//                        Image($0)
                        Image(imageName)
                            .resizable()
                            .scaledToFill()
                            .frame(width: UIScreen.main.bounds.width)
                            .clipped()
                    }
                }
                .frame(height: 500)
                .tabViewStyle(PageTabViewStyle())
            }
        }
        .ignoresSafeArea()
    }
}

#Preview {
    LocationDetailView(location: LocationsDataService.locations.first!)
}
