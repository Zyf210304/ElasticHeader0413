//
//  OffsetModifier.swift
//  ElasticHeader0413
//
//  Created by 张亚飞 on 2022/4/13.
//

import SwiftUI

struct OffsetModifier: ViewModifier {
    
    @Binding var offset: CGFloat
    
    var returnFromStart: Bool = true
    @State var stateValue: CGFloat = 0
    
    func body(content: Content) -> some View {
        
        content
            .overlay{
                
                GeometryReader { proxy in
                    
                    Color.clear
                        .preference(key: OffsetKey.self, value: proxy.frame(in: .named("SCROLL")).minY)
                        .onPreferenceChange(OffsetKey.self) { value in
                            
                            if stateValue == 0 {
                                
                                stateValue = value
                            }
                            offset = (value - (returnFromStart ? stateValue : 0))
                        }
                }
            }
    }
}


struct OffsetKey: PreferenceKey {
    
    static var defaultValue: CGFloat = 0
    
    static func reduce(value: inout CGFloat, nextValue: () -> CGFloat) {
        
        value = nextValue()
    }
}
