//
//  AddFolderView.swift
//  NetNewsWire
//
//  Created by Alex Faber on 03/07/2020.
//  Copyright © 2020 Ranchero Software. All rights reserved.
//

import SwiftUI

struct AddFolderView: View {
	@State private var folderName: String = ""
	@State private var selectedAccount = 0
	@State private var accounts = ["On My iPhone", "Feedly"]

    var body: some View {
		NavigationView {
			VStack {
				List {
					Section {
						TextField("Name", text: $folderName)
					}
					Section {
						Picker(selection: $selectedAccount, label: Text("Account")) {
											 ForEach(0 ..< accounts.count) {
												 Text(self.accounts[$0]).tag($0)
											 }
										 }

					}
				}.listStyle(InsetGroupedListStyle())
			}.navigationBarTitle(Text("Add Folder"))
		}
	}
}

struct AddFolderView_Previews: PreviewProvider {
    static var previews: some View {
        AddFolderView()
    }
}
