//
//  ViewController.swift
//  Pdf
//
//  Created by MAC on 21/1/19.
//  Copyright © 2019 cagdaseksi. All rights reserved.
//

import UIKit
import PDFKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let pdfView = PDFView()
        
        pdfView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(pdfView)
        
        pdfView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor).isActive = true
        pdfView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor).isActive = true
        pdfView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        pdfView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
        
        guard let path = Bundle.main.url(forResource: "sample", withExtension: "pdf") else { return }
        
        if let document = PDFDocument(url: path) {
            pdfView.document = document
        }
        
    }


}

