//
//  DetailFoodView.swift
//  FavFoods
//
//  Created by Khaerul Ansari on 04/09/24.
//

import SwiftUI

struct DetailFoodView: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack (alignment: .leading, spacing: 0.0)  {
                Image("DetailFood")
                    .padding(.bottom, 20)
                    .padding(.top, 30)
                
                HStack (spacing: 0)  {
                    VStack (alignment: .leading, spacing: 0 ) {
                        Text("Gyoza Sapi")
                            .font(.custom("Poppins-Bold", size: 22))
                            .foregroundColor(Color("Navy"))
                            .padding(.bottom, 6)
                        Text("Meal")
                            .font(.custom("Poppins-Regular", size: 16))
                            .foregroundColor(Color("Gray"))
                    }
                    Spacer()
                    HStack (spacing: 0) {
                        Text("4.8")
                            .padding(.trailing, 4)
                        Image("IconStar")
                            .font(.custom("Poppins-Medium", size: 16))
                    }
                }.padding(.bottom, 16)
                
                Text("Makanan asal Bandung dengan tekstur\nyang lembut sehingga ketika dimakan\nrasanya tidak sakit tenggorokan.")
                    .font(.custom("Poppins-Regular", size: 16))
                    .foregroundColor(Color("Navy"))
                    .padding(.bottom, 20)
                    .lineSpacing(5.0)
                
                VStack (alignment: .leading, spacing: 0) {
                    Text("Bundle")
                        .font(.custom("Poppins-SemiBold", size: 16))
                        .foregroundColor(Color("Navy"))
                        .padding(.bottom, 16)
                    HStack (spacing: 0) {
                        Image("FoodOrange")
                            .padding(.trailing, 16)
                        Image("FoodGyoza")
                            .padding(.trailing, 16)
                        Image("FoodAvocado")
                    }
                }.padding(.bottom, 32)
                
                HStack {
                    VStack (alignment: .leading, spacing: 0.0) {
                        Text("$808.00")
                            .font(.custom("Poppins-SemiBold", size: 22))
                            .foregroundColor(Color("Navy"))
                            .padding(.bottom, 6)
                        Text("/porsi")
                            .font(.custom("Poppins-Regular", size: 14))
                            .foregroundColor(Color("Gray"))
                    }
                    
                    Spacer()
                    
                    Button(
                        action: {
                            print("Started Ios")
                            
                        },
                        label: {
                            ZStack {
                                RoundedRectangle(cornerRadius: 50)
                                    .frame(width: 190, height: 50)
                                    .foregroundColor(Color("Orange"))
                                Text("Order Now")
                                    .font(.custom("Poppins-SemiBold", size: 16))
                                    .foregroundColor(Color("White"))
                            }
                        }
                    )
                }
                    
            }.padding(.horizontal, 24)
        }
    }
}

#Preview {
    DetailFoodView()
}
