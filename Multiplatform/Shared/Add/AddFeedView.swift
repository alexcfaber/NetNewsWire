//
//  AddFeedView.swift
//  NetNewsWire
//
//  Created by Alex Faber on 03/07/2020.
//  Copyright © 2020 Ranchero Software. All rights reserved.
//

import SwiftUI

struct AddFeedView: View {
	@State private var url: String = ""
	@State private var title: String = ""
	
	@State private var selectedFolder = 0
	@State private var folders = ["On My iPhone", "Feedly"]


	var body: some View {
		Group {
			Section {
				TextField("URL", text: $url)
				TextField("Title (optional)", text: $title)
				Picker(selection: $selectedFolder, label: Text("Folder")) {
					ForEach(0 ..< folders.count) {
						Text(self.folders[$0]).tag($0)
					}
				}
			}
		}.navigationTitle(Text("Add Feed"))
	}
}

struct AddFeedView_Previews: PreviewProvider {
    static var previews: some View {
		Form {
			AddFeedView()
		}
    }
}
