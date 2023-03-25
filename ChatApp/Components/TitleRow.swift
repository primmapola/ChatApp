//
//  TitleRow.swift
//  ChatApp
//
//  Created by Grigory Don on 25.03.2023.
//

import SwiftUI

struct TitleRow: View {
    var imageUrl = URL(string: "https://sun1-25.userapi.com/impg/18qvOnKiXG6q4eZ0BDvc1cQztPsxjN-bB2CILA/ZLYeVZv_bGY.jpg?size=1620x2160&quality=95&sign=af2fc07f6923ae2f800039022b827672&type=album")
    var name = "Maria Kalikto"
    
    var body: some View {
        HStack(spacing: 20) {
            AsyncImage(url: imageUrl) { image in  image.resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 50, height: 50)
                    .cornerRadius(50)
                
            } placeholder: {
                ProgressView()
            }
            
            VStack(alignment: .leading) {
                Text(name).font(.title).bold()
                
                Text("Online").font(.caption)
                    .foregroundColor(.gray)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            
            Image(systemName: "phone.fill")
                .foregroundColor(.gray)
                .background(.white)
                .padding(10)
                .cornerRadius(50)
        }
        .padding()
    }
}

struct TitleRow_Previews: PreviewProvider {
    static var previews: some View {
        TitleRow().background(Color("Peach"))
    }
}
