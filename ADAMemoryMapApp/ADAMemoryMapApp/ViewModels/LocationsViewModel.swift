//
//  LocationsViewModel.swift
//  ADAMemoryMapApp
//
//  Created by kimjihee on 3/12/24.
//

import Foundation

class LocationsViewModel: ObservableObject {
    
    @Published var locations: [Location]
    
    init() {
        let locations = LocationsDataService.locations
        self.locations = locations
        
    }
    
}
