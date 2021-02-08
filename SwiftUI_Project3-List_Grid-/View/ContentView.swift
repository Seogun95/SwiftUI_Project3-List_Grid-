
import SwiftUI

struct ContentView: View {
    
    let dishes = Dish.all()
    
    var body: some View {
                        //into의 숫자만큼 grid개수가 정해짐
        let chunkedDishes = dishes.chunked(into: 2)
        
        return List {
            
            ForEach(0..<chunkedDishes.count) { index in
                
                HStack(alignment: .center) {
                    ForEach(chunkedDishes[index]) { dish in
                        Image(dish.imageURL)
                            .resizable()
                            .aspectRatio(1.0, contentMode: .fill)
                            .clipShape(Circle())
                    }
                }
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
