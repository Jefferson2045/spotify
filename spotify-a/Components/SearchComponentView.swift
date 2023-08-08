import SwiftUI

struct SearchComponentView: View {
    @State private var searchText: String = ""

    var body: some View {
        
        HStack{
            Image("arrow_back") 
                .frame(width: 24, height: 24)
                .padding(EdgeInsets(top: 0, leading: 12, bottom: 0, trailing: 0))
            TextField("Buscar en Spotify", text: $searchText)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            Image("camera")
                .frame(width: 24, height: 24)
                .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 12))
            }
            .frame(height: 64)
            .background(Color("search_bar_color"))
            .padding(EdgeInsets(top: 8, leading: 4, bottom: 8, trailing: 0))
            .onSubmit {
                searchSpotify(query: searchText)
            }
           
        
        // Aquí puedes implementar la lógica para realizar la búsqueda en Spotify
                // utilizando el texto ingresado en searchText
    }
    func searchSpotify(query: String) {
        print(query)
        Task {
            do {
                let res = await RequestAPI.getSearches(text: query)
                print(res)
            } catch {
                // Aquí puedes manejar cualquier error que ocurra durante la búsqueda
                print("Error en la búsqueda: \(error)")
            }
        }
    }
    
}



