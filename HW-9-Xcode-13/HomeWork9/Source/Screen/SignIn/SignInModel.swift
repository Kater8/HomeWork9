//
//  SignInModel.swift
//  HomeWork9
//

//
//додати логіку, яка задіює EmailValidator для перевірки email
//

import Foundation

class SignInModel {
    
    private let emailValidator = EmailValidator()
    private let passwordValidator = PasswordValidator()
    
    weak var delegate: SignInModelDelegate?
    
    var emailValid: Bool = false {
        didSet {
            if emailValid {
                delegate?.didValidate(errorText: nil, textType: .none)
            } else{
                delegate?.didValidate(errorText: "Error", textType: .error)
            }
        }
    }
    
    var passwordValid: Bool = false {
        didSet{
            if passwordValid {
                delegate?.didValidate(errorText: nil, textType: .none)
            } else {
                delegate?.didValidate(errorText: "Error", textType: .error)
            }
        }
    }
    
    var email: String = "" {
        didSet {
            emailValid = (emailValidator.validate(text: email) == nil)
        }
    }
    var password: String = "" {
        didSet {
            passwordValid = passwordValidator.validate(text: password) == nil
        }
    }
}
