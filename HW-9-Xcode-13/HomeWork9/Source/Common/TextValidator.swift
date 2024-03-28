//
//  TextValidator.swift
//  HomeWork9
//

//

import Foundation

class TextValidator {
    
    func validate(text: String) -> String? {
        
        if text.isEmpty {
            return "Поле вводу не має бути пустими"
        }
        
        if text.count < 3 {
            return "Кількість символів має бути не менше 3"
        }
        
        return nil
    }
}
class EmailValidator: TextValidator{
    
    override func validate(text: String) -> String? {
        if let superResult = super.validate(text: text) {
            return superResult
        }
        if text.count > 30 {
            return "Кількість символів має бути менше 30"
        }
        return nil
    }
}

class PasswordValidator: TextValidator {
    
    override func validate(text: String) -> String? {
        if let superResult = super.validate(text: text) {
            return superResult
        }
        if text.count > 16 {
            return "Кількість символів має бути менше 16"
        }
        
        return nil
    }
}
