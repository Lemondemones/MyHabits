//
//  InfoViewController.swift
//  MyHabits
//
//  Created by Sergey Omelchenko on 28.04.2022.
//

import UIKit

class InfoViewController: UIViewController, UIScrollViewDelegate {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Информация"
        view.backgroundColor = .white

        setupViews()
    }
    
    private lazy var infoScrollView: UIScrollView = {
        let infoScrollView = UIScrollView()
        infoScrollView.toAutoLayout()
        return infoScrollView
    }()
    
    private lazy var infoContentView: UIView = {
        let infoContentView = UIView()
        infoContentView.toAutoLayout()
        return infoContentView
    }()
    
    private lazy var infoTextTitle: UILabel = {
        let infoTextTitle = UILabel()
        infoTextTitle.text = "Привычка за 21 день"
        infoTextTitle.font = .boldSystemFont(ofSize: 17)
        infoTextTitle.textColor = .black
        infoTextTitle.toAutoLayout()
        return infoTextTitle
    }()
    
    private lazy var infoText: UILabel = {
        let infoText = UILabel()
        infoText.text = InfoVCConstants.infoText
        infoText.textBody(width: view.frame.width)
        return infoText
    }()
    
    private func setupViews() {
        view.addSubview(infoScrollView)
        infoScrollView.addSubview(infoContentView)
        infoContentView.addSubview(infoTextTitle)
        infoContentView.addSubview( infoText)
        
        NSLayoutConstraint.activate([
            
            infoTextTitle.centerXAnchor.constraint(equalTo: infoContentView.centerXAnchor),
            infoTextTitle.topAnchor.constraint(equalTo: infoContentView.topAnchor, constant: InfoVCConstants.topMargin),
            infoTextTitle.widthAnchor.constraint(equalTo: infoContentView.widthAnchor),
            
            infoScrollView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            infoScrollView.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            infoScrollView.widthAnchor.constraint(equalTo: view.safeAreaLayoutGuide.widthAnchor),
            infoScrollView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            
            infoContentView.topAnchor.constraint(equalTo: infoScrollView.topAnchor),
            infoContentView.bottomAnchor.constraint(equalTo: infoScrollView.bottomAnchor),
            infoContentView.centerXAnchor.constraint(equalTo: infoScrollView.centerXAnchor),
            infoContentView.leadingAnchor.constraint(equalTo: infoScrollView.leadingAnchor, constant: InfoVCConstants.leadingMargin),
            infoContentView.trailingAnchor.constraint(equalTo: infoScrollView.trailingAnchor, constant: InfoVCConstants.trailingMargin),
            
            infoText.centerXAnchor.constraint(equalTo: infoContentView.centerXAnchor),
            infoText.widthAnchor.constraint(equalTo: infoContentView.widthAnchor),
            infoText.topAnchor.constraint(equalTo: infoTextTitle.bottomAnchor, constant: InfoVCConstants.bottomMargin),
            infoText.bottomAnchor.constraint(equalTo: infoContentView.bottomAnchor)
        ])
    }
}
