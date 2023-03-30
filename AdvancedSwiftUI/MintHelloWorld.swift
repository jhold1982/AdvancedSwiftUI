//
//  MintHelloWorld.swift
//  AdvancedSwiftUI
//
//  Created by Justin Hold on 3/30/23.
//

import SwiftUI

struct MintHelloWorld: View {
    var body: some View {
		VStack {
			Canvas { context, size in
				
				/// mint hello world example
				if let text = context.resolveSymbol(id: "Welcome") {
					context.translateBy(x: 215, y: 375)

					for _ in 1...10 {
						context.rotate(by: .degrees(36))
						context.draw(text, at: .zero)
					}
				}
			} symbols: {
				Text("Hello, world!")
					.padding()
					.background(.mint)
					.foregroundColor(.white)
					.clipShape(Capsule())
					.font(.title)
					.tag("Welcome")
			}
		}
		
    }
}

struct MintHelloWorld_Previews: PreviewProvider {
    static var previews: some View {
        MintHelloWorld()
    }
}
