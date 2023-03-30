//
//  LightDark.swift
//  AdvancedSwiftUI
//
//  Created by Justin Hold on 3/30/23.
//

import SwiftUI

struct LightDark: View {
    var body: some View {
		Canvas { context, size in
			print("Rendering...")
			
			let path = Path(roundedRect: CGRect(
				x: 50,
				y: 50,
				width: 200,
				height: 200
			), cornerRadius: 25)
			
			if context.environment.colorScheme == .dark {
				context.fill(path, with: .color(.white))
			} else {
				context.fill(path, with: .color(.black))
			}
		}
    }
}

struct LightDark_Previews: PreviewProvider {
    static var previews: some View {
        LightDark()
    }
}
