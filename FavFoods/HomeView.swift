//
//  HomeView.swift
//  FavFoods
//
//  Created by Khaerul Ansari on 04/09/24.
//

import SwiftUI

struct HomeView: View {
    @State private var searchFood: String = ""
    @State private var showDetailFood = false
    
    let dummyDataCategorys = [
        ("CateBread", "Bread"),
        ("CateCarrot", "Healthy"),
        ("CateDonut", "Sweets"),
        ("CateCarrot", "Healthy"),
        ("CateDonut", "Sweets")
    ]
    
    let dummyDataMostOrdered : [String: (image: String, title: String, category: String, rating : String)] = [
        "item1" : ("FoodOrange", "Orange Asem", "Healthy", "4.5"),
        "item2" : ("FoodGyoza", "Gyoza Sapi", "Meal", "4.8"),
        "item3" : ("FoodAvocado", "Avocado Salad", "Healthy", "4.3"),
        "item4" : ("FoodOrange", "Orange Asem", "Healthy", "4.5"),
        "item5" : ("FoodGyoza", "Gyoza Sapi", "Meal", "4.8")
    ]
    
    var body: some View {
        return Group {
            if showDetailFood {
                DetailFoodView()
            } else {
                VStack (alignment: .leading, spacing: 0) {
                    HStack {
                        Image("UserPhoto")
                        Spacer()
                        VStack (alignment: .trailing) {
                            Text("Howdy")
                                .font(.custom("Poppins-Regular", size: 14))
                                .foregroundColor(Color("Gray"))
                            Text("Luna Polar")
                                .font(.custom("Poppins-SemiBold", size: 16))
                                .foregroundColor(Color("Navy"))
                        }
                    }
                    
                    
                    VStack {
                        Text("What do you want\nfor launch?")
                            .font(.custom("Poppins-Bold", size: 22))
                            .foregroundColor(Color("Navy"))
                            .multilineTextAlignment(.center)
                    }
                    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 66, maxHeight: 66)
                    .padding(.top, 30.0)
                    .padding(.bottom, 24.0)
                    
                    HStack {
                        TextField("Search pizza, burger, etz ...", text: $searchFood)
                            .disableAutocorrection(true)
                            .padding(.leading, 24.0)
                        
                        Image(systemName: "magnifyingglass")
                                .foregroundColor(.gray)
                                .padding(.trailing, 8.0)
                    }
                    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 50, maxHeight: 50)
                    .background(Color("SoftGray"))
                    .cornerRadius(50.0)
                    
                    
                    VStack (alignment: .leading, spacing: 0 ) {
                        Text("Categories")
                            .font(.custom("Poppins-SemiBold", size: 16))
                            .foregroundColor(Color("Navy"))
                            .padding(.bottom, 12.0)
                        
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack {
                                ForEach(dummyDataCategorys, id: \.0) { item in
                                    HStack {
                                        Image(item.0)
                                            .padding(.vertical, 5.0)
                                            .padding(.leading, 5.0)
                                        Text(item.1)
                                            .font(.custom("Poppins-Medium", size: 16))
                                            .foregroundColor(Color("Navy"))
                                            .padding(.trailing, 18)
                                    }
                                    .background(Color("SoftGray"))
                                    .cornerRadius(50)
                                }
                            }
                        }
                            
                    }
                    .padding(.top, 30)
                    
                    VStack (alignment: .leading, spacing: 0) {
                        Text("Most Ordered")
                            .font(.custom("Poppins-SemiBold", size: 16))
                            .foregroundColor(Color("Navy"))
                            .padding(.bottom, 12)
                       
                        ScrollView(.vertical, showsIndicators: false) {
                            ForEach(dummyDataMostOrdered.keys.sorted(), id: \.self) { key in
                                if let item = dummyDataMostOrdered[key] {
                                    HStack (spacing: 0.0) {
                                        Image(item.image)
                                        VStack (alignment: .leading, spacing: 0) {
                                            Text(item.title)
                                                .font(.custom("Poppins-Medium", size: 16))
                                                .foregroundColor(Color("Navy"))
                                                .padding(.bottom, 4)
                                            Text(item.category)
                                                .font(.custom("Poppins-Regular", size: 14))
                                                .foregroundColor(Color("Gray"))
                                        }.padding(.leading, 16)
                                        Spacer()
                                        HStack {
                                            Text(item.rating)
                                                .font(.custom("Poppins-Medium", size: 16))
                                                .foregroundColor(Color("Navy"))
                                            Image("IconStar")
                                        }
                                    }
                                    .padding(.bottom, 18)
                                    .onTapGesture {
                                        self.showDetailFood = true
                                    }
                                }
                            }
                        }
                    }.padding(.top, 30)
                    
                }
                .padding(.horizontal, 24.0)
            }
        }
        
       
    }
}

#Preview {
    HomeView()
}
