//
//  SearchBar.swift
//  DoneIt
//
//  Created by Gabriel Taques on 16/03/20.
//  Copyright © 2020 Gabriel Taques. All rights reserved.
//

import SwiftUI


struct SearchBar: UIViewRepresentable {
    typealias UIViewType = UISearchBar
    
    @Binding var textToSearch: String
    
    func makeUIView(context: UIViewRepresentableContext<SearchBar>) -> SearchBar.UIViewType {
        let searchBar = UISearchBar()
        searchBar.delegate = context.coordinator
        searchBar.searchBarStyle = .minimal
        searchBar.barStyle = .black
        searchBar.placeholder = "Search"
        return searchBar
    }
    
    func updateUIView(_ uiView: SearchBar.UIViewType, context: UIViewRepresentableContext<SearchBar>) {
        uiView.text = textToSearch
    }
    
    func makeCoordinator() -> SearchBar.Coordinator {
        return Coordinator(textToSearch: $textToSearch)
    }
    
    class Coordinator: NSObject, UISearchBarDelegate {
        @Binding var textToSearch: String
        
        init(textToSearch: Binding<String>) {
            _textToSearch = textToSearch
        }
        
        func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
            textToSearch = searchText
        }
    }
    
    
}
