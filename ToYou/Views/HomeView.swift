//
//  HomeView.swift
//  ToYou
//
//  Created by 이승준 on 2/1/25.
//

import UIKit

class HomeView: UIView {
    // MARK: - layout
    private let paperBackgroundView = UIImageView().then {
        $0.image = .paperTexture
        $0.contentMode = .scaleAspectFit
    }
    
    private let toyouLabel = UILabel().then {
        $0.text = "투유"
        $0.font = UIFont(name: "GangwonEduHyeonokT_OTFMedium", size: 30)
        $0.textColor = .black04
    }
    
    private let alertButton = UIButton().then {
        $0.setImage(.alertIcon, for: .normal)
    }
    
    private let dateLabel = UILabel().then {
        $0.text = "20250223"
        $0.font = UIFont(name: "GangwonEduHyeonokT_OTFMedium", size: 25)
        $0.textColor = .black04
        $0.textAlignment = .center
    }
    
    private let dateBackView = UIView().then {
        $0.backgroundColor = .gray00
    }
    
    private let emotionImage = UIImageView().then {
        $0.image = .defaultBubble
    }
    
    private let mailBoxImage = UIImageView().then {
        $0.image = .mailboxEmpty
        $0.contentMode = .scaleAspectFit
    }
    
    // MARK: - init
    override init(frame: CGRect) {
        super.init(frame: frame)=
        self.backgroundColor = .background
        self.addComponents()
    }
    
    private func addComponents() {
        self.addSubview(label)
        
        setView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - function
    private func setView() {
        [
            paperBackgroundView,
            toyouLabel, alertButton,
            dateBackView, dateLabel,
            emotionImage,
            mailBoxImage
        ].forEach {
            addSubview($0)
        }
        
        paperBackgroundView.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
        
        toyouLabel.snp.makeConstraints {
            $0.top.equalTo(safeAreaLayoutGuide).offset(10)
            $0.left.equalToSuperview().offset(27)
            $0.height.equalTo(34)
        }
        
        alertButton.snp.makeConstraints {
            $0.centerY.equalTo(toyouLabel)
            $0.right.equalToSuperview().offset(-36)
        }
        
        dateBackView.snp.makeConstraints {
            $0.centerX.equalToSuperview()
            $0.centerY.equalTo(dateLabel).offset(2)
            $0.height.equalTo(21)
            $0.width.equalTo(161)
        }
        
        dateLabel.snp.makeConstraints {
            $0.top.equalToSuperview().offset(159)
            $0.centerX.equalToSuperview()
        }
        
        emotionImage.snp.makeConstraints {
            $0.top.equalTo(dateLabel.snp.bottom).offset(52)
            $0.centerX.equalToSuperview()
            $0.width.equalTo(63.9)
            $0.height.equalTo(74.4)
        }
        
        mailBoxImage.snp.makeConstraints {
            $0.centerX.equalToSuperview()
            $0.top.equalTo(emotionImage.snp.bottom).offset(28.5)
            $0.bottom.equalTo(safeAreaLayoutGuide).offset(20)
        }
    }
    
}
