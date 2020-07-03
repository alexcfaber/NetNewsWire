//
//  AddView.swift
//  NetNewsWire
//
//  Created by Alex Faber on 03/07/2020.
//  Copyright © 2020 Ranchero Software. All rights reserved.
//

import SwiftUI

struct AddView: View {
	@State private var addTypes = ["Add Folder", "Add Feed"]
	@State private var selectedAddType = 0
	
	var body: some View {
		NavigationView {
			Form{
				Section {
					Picker(selection: $selectedAddType, label: Text("Account")) {
						ForEach(0 ..< addTypes.count) {
							Text(self.addTypes[$0]).tag($0)
						}
					}.pickerStyle(SegmentedPickerStyle())
				}
				
				if (selectedAddType == 0) {
					AddFolderView()
				}
				
				if (selectedAddType == 1) {
					AddFeedView()
				}
			}
			.navigationBarTitle(Text("Add "))
			.navigationBarTitleDisplayMode(/*@START_MENU_TOKEN@*/.inline/*@END_MENU_TOKEN@*/)
			.toolbar {
				ToolbarItem(placement: .navigationBarTrailing) {
					Button("Save") {
						print("Pressed")
					}
				}
				ToolbarItem(placement: .navigationBarLeading) {
					Button("Cancel") {
						print("Pressed")
					}
				}
			}
			
		}
	}
}

struct AddView_Previews: PreviewProvider {
	static var previews: some View {
		AddView()
	}
}
