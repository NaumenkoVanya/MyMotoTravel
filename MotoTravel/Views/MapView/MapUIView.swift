//
//  MapUIView.swift
//  MotoTravel
//
//  Created by Ваня Науменко on 9.04.23.

import CoreLocation
import MapKit
import SwiftUI

// MARK: - MapUIView

struct MapUIView: View {
    @State private var locationManager = CLLocationManager()
    @State private var userLocation: CLLocationCoordinate2D?
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 53.7169, longitude: 27.9776), span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05))
    @State private var search: String = ""
    
    var body: some View {
        ZStack {
            Map(coordinateRegion: $region, interactionModes: .all, showsUserLocation: true, userTrackingMode: .constant(.follow))
                .edgesIgnoringSafeArea(.all)
                .onAppear {
                    determineUserLocation()
            }
            TextField("City", text: $search)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
                .position(CGPoint(x: 215, y: 20))
        }
    }
    
    func determineUserLocation() {
        locationManager.delegate = makeCoordinator()
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
    }
    
    func updateLocation(_ location: CLLocation) {
        userLocation = location.coordinate
        region = MKCoordinateRegion(center: location.coordinate, span: MKCoordinateSpan(latitudeDelta: 0.02, longitudeDelta: 0.02))
    }
    
    func locationDidFailWithError(_ error: Error) {
        // Handle location error
        print("Location error: \(error.localizedDescription)")
    }
    
    func stopUpdatingLocation() {
        locationManager.stopUpdatingLocation()
    }
    
    func makeCoordinator() -> Coordinator {
        Coordinator(parent: self)
    }
    
    class Coordinator: NSObject, CLLocationManagerDelegate {
        var parent: MapUIView
        
        init(parent: MapUIView) {
            self.parent = parent
        }
        
        func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
            if let location = locations.last {
                parent.updateLocation(location)
                parent.stopUpdatingLocation()
            }
        }
        
        func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
            parent.locationDidFailWithError(error)
            parent.stopUpdatingLocation()
        }
    }
}

// MARK: - MapUIView_Previews

struct MapUIView_Previews: PreviewProvider {
    static var previews: some View {
        MapUIView()
    }
}
