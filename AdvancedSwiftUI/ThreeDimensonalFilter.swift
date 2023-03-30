//
//  3DFilter.swift
//  AdvancedSwiftUI
//
//  Created by Justin Hold on 3/30/23.
//

import SwiftUI

class DrawingModel: ObservableObject {
	var angle = 0.0
}

struct ThreeDimensonalFilter: View {
	
	@StateObject private var model = DrawingModel()
	
    var body: some View {
		TimelineView(.animation) { timeline in
			Canvas { context, size in
				model.angle += 0.1
				context.translateBy(x: 200, y: 200)
				
				let t = ProjectionTransform(CATransform3DMakeRotation(model.angle, 1, 1, 1))
				context.addFilter(.projectionTransform(t))
				
				context.draw(Text("Hello, world!").font(.largeTitle), at: .zero)
				_ = timeline.date
			}
		}
    }
}

struct ThreeDimensonalFilter_Previews: PreviewProvider {
    static var previews: some View {
		ThreeDimensonalFilter()
    }
}
