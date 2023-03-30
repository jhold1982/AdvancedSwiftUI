//
//  BlurryHello.swift
//  AdvancedSwiftUI
//
//  Created by Justin Hold on 3/30/23.
//

import SwiftUI

struct BlurryHello: View {
    var body: some View {
		Canvas { context, size in
			
			/// blurry hello streak
//			context.translateBy(x: 150, y: 200)
//
//			let resolved = context.resolve(Text("Hello, world!").font(.title))
//
//			context.addFilter(.shadow(radius: 3))
//			context.addFilter(.shadow(radius: 3))
//
//			for i in 1...100 {
//				context.translateBy(x: 1, y: 1)
//				context.opacity = Double(i) / 100
//				context.draw(resolved, at: .zero)
//			}
			
			/// headline and subtitle
//			let title = context.resolve(Text("Hello, world!").font(.title))
//			let titleSize = title.measure(in: size)
//			let subtitle = context.resolve(Text("This is a subtitle").font(.subheadline))
//
//			context.draw(title, at: CGPoint(x: size.width / 2, y: 50))
//			context.draw(subtitle, at: CGPoint(x: size.width / 2, y: 50 + titleSize.height))
			
			
			/// checkerboard
			context.translateBy(x: 50, y: 50)
			
			context.withCGContext { cgContext in
				cgContext.setFillColor(UIColor.black.cgColor)
				
				for row in 0..<8 {
					for col in 0..<8 {
						if (row + col).isMultiple(of: 2) {
							cgContext.fill(CGRect(
								x: col * 32,
								y: row * 32,
								width: 32,
								height: 32
							))
						}
					}
				}
			}
		}
    }
}

struct BlurryHello_Previews: PreviewProvider {
    static var previews: some View {
        BlurryHello()
    }
}
