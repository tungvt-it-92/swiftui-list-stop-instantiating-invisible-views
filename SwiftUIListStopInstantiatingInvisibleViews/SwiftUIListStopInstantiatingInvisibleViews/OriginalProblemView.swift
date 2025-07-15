//
//  ContentView.swift
//  SwiftUIListStopInstantiatingInvisibleViews
import SwiftUI

struct OriginalProblemView: View {
    
    var body: some View {
        List(0..<10_000) { item in
            ItemView(item: item)
        }
    }
}

struct ItemView: View {
    let item: Int
    
    init(item: Int) {
        let _ = print("Instantiating \(item)") // all ItemView inits fire
        self.item = item
    }
    
    var body: some View {
        let _ = print("Rendering \(item)") // all ItemView bodies fire
        Text("\(item)")
    }
}


#Preview {
    OriginalProblemView()
}
