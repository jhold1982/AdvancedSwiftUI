//
//  LayeringContextView.swift
//  AdvancedSwiftUI
//
//  Created by Justin Hold on 3/29/23.
//

import SwiftUI

struct LayeringContextView: View {
    var body: some View {
		Canvas { context, size in
			/// color circles example
//			context.opacity = 0.5
//			context.drawLayer(content: drawCircles)
			
			/// mint hello world example
//			if let text = context.resolveSymbol(id: "Welcome") {
//				context.translateBy(x: 215, y: 100)
//
//				for _ in 1...10 {
//					context.rotate(by: .degrees(36))
//					context.draw(text, at: .zero)
//				}
//			}
//		} symbols: {
//			Text("Hello, world!")
//				.padding()
//				.background(.mint)
//				.foregroundColor(.white)
//				.clipShape(Capsule())
//				.font(.title)
//				.tag("Welcome")
			/// blur filter example
			var contextCopy = context
			contextCopy.addFilter(.blur(radius: 3))
			contextCopy.draw(Text("Hello, world").font(.title), at: CGPoint(x: 100, y: 100))
			context.draw(Text("Hello, world").font(.title), at: CGPoint(x: 100, y: 150))
			context.draw(Text("Hello, world").font(.title), at: CGPoint(x: 100, y: 200))
		}
    }
	func drawCircles(in innerContext: inout GraphicsContext) {
		let size = 220
		let circle1 = Path(ellipseIn: CGRect(
			x: 100,
			y: 200,
			width: size,
			height: size
		))
		innerContext.fill(circle1, with: .color(red: 1, green: 0, blue: 0))
		let circle2 = Path(ellipseIn: CGRect(x: 190, y: 300, width: size, height: size))
		innerContext.fill(circle2, with: .color(red: 0, green: 1, blue: 0))
		let circle3 = Path(ellipseIn: CGRect(x: 20, y: 300, width: size, height: size))
		innerContext.fill(circle3, with: .color(red: 0, green: 0, blue: 1))
	}
}

struct LayeringContextView_Previews: PreviewProvider {
    static var previews: some View {
        LayeringContextView()
    }
}
