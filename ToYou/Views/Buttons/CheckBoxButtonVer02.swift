//
//  CheckBoxButtonVer02.swift
//  ToYou
//
//  Created by 이승준 on 3/1/25.
//

import UIKit

class CheckBoxButtonVer02: UIButton {
    
    public var isChecked: Bool = false
    
    private lazy var checboxImage = UIImageView().then {
        $0.image = .unchecked
        $0.contentMode = .scaleAspectFit
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.addComponents()
    }
    
    private func addComponents() {
        self.addSubview(checboxImage)
        
        checboxImage.snp.makeConstraints { make in
            make.edges.equalToSuperview().inset(3.5)
        }
    }
    
    public func toggle() {
        if isChecked {  // true -> false
            checboxImage.image = .unchecked
        } else {        // flase -> true
            checboxImage.image = .checkBoxChecked
        }
        isChecked.toggle()
    }
    
    public func checked() {
        checboxImage.image = .checkBoxChecked
        isChecked = true
    }
    
    public func notChecked() {
        checboxImage.image = .checkBox
        isChecked = false
    }
    
    public func isMarked() -> Bool {
        return isChecked
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
