//
//  NewsUIView.swift
//  MotoTravel
//
//  Created by Ваня Науменко on 9.04.23.
//

import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {

    let request: URLRequest

    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }

    func updateUIView(_ webView: WKWebView, context: Context) {
        webView.load(request)
    }
}

struct NewsUIView: View {
    
    let request = URLRequest(url: URL(string: "https://motogonki.ru/motonews/")!)

    var body: some View {
        WebView(request: request)
    }
}

struct NewsUIView_Previews: PreviewProvider {
    static var previews: some View {
        NewsUIView()
    }
}
