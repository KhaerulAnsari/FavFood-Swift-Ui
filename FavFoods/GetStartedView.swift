//
//  GetStartedView.swift
//  FavFoods
//
//  Created by Khaerul Ansari on 04/09/24.
//

import SwiftUI

struct GetStartedView: View {
    @State private var navigationToHome = false;
    
    var body: some View {
        return Group {
            if navigationToHome {
                IntroView()
            } else {
                VStack(spacing: 0.0) {
                    Image("OnboardingIllustration")
                        .padding(.bottom, 50.0)
                    HStack {
                        VStack(alignment: .leading, spacing: 0.0) {
                            Text("180K Store")
                                .font(.custom("Poppins-Regular", size: 16))
                                .foregroundColor(Color("Gray"))
                            Text("Order Your\nFavorite Foods")
                                .font(.custom("Poppins-Bold", size: 36))
                                .foregroundColor(Color("Navy"))
                            Button(
                                action: {
                                    print("Started Ios")
                                    
                                    navigationToHome = true;
                                },
                                label: {
                                    ZStack {
                                        RoundedRectangle(cornerRadius: 50)
                                            .frame(width: 327, height: 50)
                                            .foregroundColor(Color("Orange"))
                                        Text("Get Started")
                                            .font(.custom("Poppins-SemiBold", size: 16))
                                            .foregroundColor(Color("White"))
                                    }
                                }
                            )
                            .padding(.top, 30.0)
                            
                            

                        }
                    }
                }
            }
        }
        
    }
}

#Preview {
    GetStartedView()
}
