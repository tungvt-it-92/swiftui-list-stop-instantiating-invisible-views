//
//  Solution1View.swift
//  SwiftUIListStopInstantiatingInvisibleViews
import SwiftUI

struct Solution1View: View {
    var body: some View {
        List(0..<10_000) { item in
            VStack {
                ItemView1(item: item)
            }
        }
    }
}

struct ItemView1: View {
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
    Solution1View()
}
