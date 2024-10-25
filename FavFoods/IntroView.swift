//
//  IntroView.swift
//  FavFoods
//
//  Created by Khaerul Ansari on 05/09/24.
//

import SwiftUI

struct IntroView: View {
    
    @State private var isShowHome = false;
    @State private var showAlert = false;
    @State private var showActionSheet = false;
    @State private var showPopup = false;
    @State private var showPopupHtml = false;

    var body: some View {
        
        return Group {
            if isShowHome {
                HomeView()
            } else {
                VStack {
                    Text("Order Your\nFavorite Foods")
                        .font(.custom("Poppins-Bold", size: 26))
                        .foregroundColor(Color("Black"))
                        .multilineTextAlignment(.center)
                        .padding(.bottom, 10)
                    Text("Sign up to get your foods faster\nand better than before")
                        .font(.custom("Poppins-Regular", size: 16))
                        .foregroundColor(Color("Gray"))
                        .multilineTextAlignment(.center)
                        .padding(.bottom, 50)
                    Image("IconDriver")
                        .padding(.bottom, 50)
                    Button(
                        action: {
                            print("Started Ios")
                            
                        },
                        label: {
                            ZStack {
                                RoundedRectangle(cornerRadius: 50)
                                    .frame(width: .infinity, height: 50)
                                    .foregroundColor(Color("Orange"))
                                Text("Create New Account")
                                    .font(.custom("Poppins-SemiBold", size: 16))
                                    .foregroundColor(Color("White"))
                            }
                        }
                    )
                    .padding(.bottom, 10.0)
                    
                    Button(
                        action: {
                            isShowHome = true
                        },
                        label: {
                            ZStack {
                                RoundedRectangle(cornerRadius: 50)
                                    .frame(width: .infinity, height: 50)
                                    .foregroundColor(Color("SoftGray"))
                                Text("Sign In")
                                    .font(.custom("Poppins-Medium", size: 16))
                                    .foregroundColor(Color("Black"))
                            }
                           
                        }
                    ).padding(.bottom, 30)
                    
                    Text("Terms & Condition")
                        .font(.custom("Poppins-Regular", size: 16))
                        .foregroundColor(Color("DarkGray"))
                        .underline()
                    
                    Button("Show Alert") {
                                    showAlert = true
                                }
                                .alert(isPresented: $showAlert) {
                                    Alert(
                                        title: Text("Alert Title"),
                                        message: Text("This is an alert message."),
                                        dismissButton: .default(Text("OK"))
                                    )
                                }
                    
                    Button("Show Action Sheet") {
                                    showActionSheet = true
                                }
                                .actionSheet(isPresented: $showActionSheet) {
                                    ActionSheet(
                                        title: Text("Action Sheet Title"),
                                        message: Text("This is an action sheet message."),
                                        buttons: [
                                            .default(Text("Option 1")),
                                            .default(Text("Option 2")),
                                            .cancel()
                                        ]
                                    )
                                }
                    
                    Button("Show Privacy Notice") {
                                    showPopup = true
                                }
                }.padding(.horizontal, 24).overlay(
                    Group {
                        if showPopup {
                            Color.black.opacity(0.4)
                                .edgesIgnoringSafeArea(.all)
                                .onTapGesture {
                                    showPopup = false
                                }
                            
                            VStack(spacing: 20) {
                                ScrollView {
                                    
                                    
                                    Text("""
                                    PEMBERITAHUAN PRIVASI
                                    Selamat datang di halaman Pemberitahuan Privasi kami. Kami ingin memberikan kejelasan dan keyakinan kepada Pengguna tentang bagaimana kami mengumpulkan, menggunakan, dan melindungi informasi dan Data Pribadi Pengguna. Dengan membaca Pemberitahuan Privasi ini, diharapkan Pengguna merasa tenang dan yakin bahwa keamanan Data Pribadi dan privasi Pengguna adalah prioritas utama bagi kami.
                                    Dalam Pemberitahuan Privasi ini, penggunaan istilah (i) “kami” atau “Bank” merujuk pada PT Bank Negara Indonesia (Persero) Tbk, suatu badan usaha milik negara yang didirikan berdasarkan hukum negara Republik Indonesia dan bergerak pada bidang perbankan (“BNI”); (ii) “Pengguna” merujuk pada masing-masing orang perseorangan pemilik Data Pribadi (subjek data) yang telah dan/atau akan menggunakan produk dan/atau layanan kami, pengunjung dan pengguna situs web/aplikasi/sistem elektronik kami, serta pihak ketiga manapun di mana Pemberitahuan Privasi ini berlaku; (iii) “Grup Usaha” merujuk pada seluruh perusahaan afiliasi yang berada dalam satu grup karena keterkaitan kepemilikan dan/atau pengendalian secara langsung maupun tidak langsung oleh Bank (hubungan perusahaan induk, anak perusahaan dan afiliasi lainnya); (iv) “Data Pribadi” merujuk pada data tentang Pengguna yang teridentifikasi atau dapat diidentifikasi secara tersendiri atau dikombinasi dengan informasi lainnya baik secara langsung maupun tidak langsung melalui sistem elektronik atau nonelektronik sebagaimana dimaksud dalam Peraturan yang Berlaku; (v) “Peraturan yang Berlaku” merujuk pada Undang-Undang Nomor 27 Tahun 2022 tentang Pelindungan Data Pribadi dan peraturan perundang-undangan yang relevan lainnya yang berlaku, termasuk perubahannya dari waktu ke waktu; (vi) “Pemrosesan” merujuk pada tindakan memperoleh, mengumpulkan, mengolah, menganalisis, menyimpan, memperbaiki, melakukan pembaruan, menampilkan, mengumumkan, mentransfer, menyebarluaskan, mengungkapkan, menghapus dan/atau memusnahkan Data Pribadi Pengguna.
                                    Data Pribadi yang kami proses adalah Data Pribadi yang telah dan akan Pengguna berikan kepada kami, yang meliputi pula Data Pribadi sebagaimana tertulis pada bagiann Perolehan dan Pengumpulan Data Pribadi di Pemberitahuan Privasi ini untuk menyediakan produk dan/atau layanan jasa perbankan yang Pengguna minta, termasuk untuk pemenuhan perjanjian atau kewajiban hukum kami terhadap peraturan perundang-undangan, saat Pengguna mengunjungi, mengakses, dan/atau menggunakan produk dan/atau layanan Bank, termasuk situs web/aplikasi/sistem elektronik kami sehubungan dengan penggunaan produk dan/atau layanan Bank (“Layanan”).
                                    
                                    Keberlakuan
                                    Dengan menggunakan Layanan kami, Pengguna menyatakan telah membaca, mengetahui dan memahami seluruh isi Pemberitahuan Privasi ini, juga menyatakan bahwa Pengguna adalah pihak yang sah dan berwenang memberikan Data Pribadi Pengguna kepada Bank melalui kanal Layanan Bank.
                                    Kami dapat mengubah, menghapus, dan/atau memperbarui Pemberitahuan Privasi ini dari waktu ke waktu apabila diperlukan. Jika perubahan, penghapusan, dan/atau pembaruan tersebut merupakan perubahan informasi yang berdasarkan Peraturan yang Berlaku wajib dilakukan pemberitahuan kepada Pengguna, maka kami akan menggunakan upaya yang wajar untuk melakukan pemberitahuan kepada Pengguna terlebih dahulu melalui kanal resmi kami.
                                    """)
                                    .padding()
                                }
                                .frame(height: 500)
                            
                                HStack {
                                    Button("Batal") {
                                        showPopup = false
                                    }
                                    .padding()
                                    .background(Color.gray)
                                    .foregroundColor(.white)
                                    .cornerRadius(8)
                                    
                                    Button("Setuju") {
                                        showPopup = false
                                        if let url = URL(string: "https://play.google.com/store/apps/details?id=com.example.app") {
                                            UIApplication.shared.open(url)
                                        }
                                    }
                                    .padding()
                                    .background(Color.blue)
                                    .foregroundColor(.white)
                                    .cornerRadius(8)
                                }
                            }
                            .padding()
                            .background(Color.white)
                            .cornerRadius(10)
                            .shadow(radius: 10)
                            .padding(.horizontal, 20)
                            .transition(.scale)
                        }
                    }
                )
            }
        }
    }
}

#Preview {
    IntroView()
}
