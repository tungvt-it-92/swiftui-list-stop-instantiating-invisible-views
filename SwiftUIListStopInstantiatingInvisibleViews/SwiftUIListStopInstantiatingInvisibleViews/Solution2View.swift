//
//  Solution2View.swift
//  SwiftUIListStopInstantiatingInvisibleViews
import SwiftUI

struct Solution2View: View {
    var body: some View {
        List(0..<10_000) { item in
            ItemView2(item: item)
                .equatable()
        }
    }
}

struct ItemView2: View, Equatable {
    let item: Int
    
    init(item: Int) {
        let _ = print("Instantiating \(item)")
        self.item = item
    }
    
    var body: some View {
        let _ = print("Rendering \(item)")
        Text("\(item)")
    }
}

#Preview {
    Solution2View()
}
