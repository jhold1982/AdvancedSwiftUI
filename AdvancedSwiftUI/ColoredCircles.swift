//
//  LayeringContextView.swift
//  AdvancedSwiftUI
//
//  Created by Justin Hold on 3/29/23.
//

import SwiftUI

struct ColoredCircles: View {
    var body: some View {
		Canvas { context, size in
			
			/// color circles example
			context.opacity = 0.5
			context.drawLayer(content: drawCircles)
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

struct ColoredCircles_Previews: PreviewProvider {
    static var previews: some View {
		ColoredCircles()
    }
}
