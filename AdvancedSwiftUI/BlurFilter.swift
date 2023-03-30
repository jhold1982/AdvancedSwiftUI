//
//  BlurFilter.swift
//  AdvancedSwiftUI
//
//  Created by Justin Hold on 3/30/23.
//

import SwiftUI

struct BlurFilter: View {
    var body: some View {
		Canvas { context, size in
			
			/// blur filter example
//			var contextCopy = context
//			contextCopy.addFilter(.blur(radius: 3))
//			contextCopy.draw(Text("Hello, world").font(.title), at: CGPoint(x: 100, y: 300))
//			context.draw(Text("Hello, world").font(.title), at: CGPoint(x: 100, y: 350))
//			context.draw(Text("Hello, world").font(.title), at: CGPoint(x: 100, y: 400))
			
			/// more intense blur filter example
			context.addFilter(.shadow(color: .black, radius: 10))
			context.addFilter(.shadow(color: .black, radius: 5))
			context.addFilter(.shadow(color: .black, radius: 1))
			
			context.draw(
				Text("Hello, world!").font(.title).foregroundColor(.white), at: CGPoint(x: 215, y: 400))
		}
    }
}

struct BlurFilter_Previews: PreviewProvider {
    static var previews: some View {
        BlurFilter()
    }
}
