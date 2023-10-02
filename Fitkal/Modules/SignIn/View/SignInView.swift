//
//  SignInView.swift
//  Fitkal
//
//  Created by İSMAİL AÇIKYÜREK on 1.10.2023.
//



import UIKit
import SnapKit


class SignInView: UIView {

    // MARK: UIComponent



    lazy var welcomeToLabel = UILabel()
    lazy var fitkalImageView = UIImageView()
    lazy var signInAppleButton = UIButton()
    lazy var signInGoogleButton = UIButton()
    lazy var orLabel = UILabel()
    lazy var newAccountLabel = UILabel()



    //MARK: - Init
    override init(frame: CGRect) {
        super.init(frame: .zero)
        addView()
        setupUI()
        layoutUI()
        addTarget()

    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
//MARK: AddSubiew,AddTarget,LayoutUI,SetupUI
extension SignInView : GeneralViewProtocol {
    func setupUI() {
        self.backgroundColor = .white


//
        welcomeToLabel.createLabel(text: "Hoşgeldin", textColor: .black, font: .Bold_44, textAlignment: .center)
        fitkalImageView.createUIImageView(image: UIImage(named: "fitkalLogo"))


      signInAppleButton.createButton(title: "Apple Hesabı İle Giriş Yap", titleColor: .black,cornerRadius: 16)
      let config = UIImage.SymbolConfiguration(scale: .large)
      let image = UIImage(systemName: "apple.logo", withConfiguration: config)
      signInAppleButton.setImage(image, for: .normal)
      signInAppleButton.imageEdgeInsets.left = -10
      signInAppleButton.addBorderColor(borderColor: UIColor.gray.cgColor, borderWidth: 0.3)



      signInGoogleButton.createButton(title: "Google Hesabı İle Giriş Yap", titleColor: UIColor.blue,cornerRadius: 16)
      signInGoogleButton.setImage(UIImage(named: "google"), for: .normal)
      signInGoogleButton.imageEdgeInsets.left = -10
      signInGoogleButton.addBorderColor(borderColor: UIColor.gray.cgColor, borderWidth: 0.3)

      orLabel.createLabel(text: "veya", textColor: .gray, font: .Regular_14, textAlignment: .center)

      newAccountLabel.createLabel(textColor: .orange, font: .Bold_20, textAlignment: .center)
      newAccountLabel.attributedText = "Yeni Hesap Oluştur".underLined
    }

    func layoutUI() {
        welcomeToLabelConstraints()
        fitkalLogoConstraints()
        signInAppleButtonConstraints()
        signInGoogleButtonConstraints()
        orLabelConstraints()
        newAccountLabelConstraints()
    }

    func addView() {
        addSubviews(welcomeToLabel,fitkalImageView,signInAppleButton,signInGoogleButton,orLabel,newAccountLabel)
    }

    func addTarget() {
      signInAppleButton.addTarget(self, action: #selector(signInAppleButtonTapped), for: .touchUpInside)
      signInGoogleButton.addTarget(self, action: #selector(signInGoogleButtonTapped), for: .touchUpInside)

      let labelTap = UITapGestureRecognizer(target: self, action: #selector(self.newAccountLabelTapped(_:)))
      self.newAccountLabel.isUserInteractionEnabled = true
      self.newAccountLabel.addGestureRecognizer(labelTap)
    }
}

extension SignInView {
  @objc func signInAppleButtonTapped() {

  }
  @objc func signInGoogleButtonTapped() {

  }
  @objc func newAccountLabelTapped(_ sender: UITapGestureRecognizer) {

  }
}

//MARK: Constraints
extension SignInView {

    func welcomeToLabelConstraints() {
        self.welcomeToLabel.snp.makeConstraints { make in
            make.top.equalTo(self.snp.top).offset(100)
            make.leading.equalTo(self.snp.leading).offset(36)
            make.trailing.equalTo(self.snp.trailing).offset(-36)
            make.height.equalTo(70)
        }
    }
    func fitkalLogoConstraints() {
        self.fitkalImageView.snp.makeConstraints { make in
          make.top.equalTo(welcomeToLabel.snp.bottom).offset(3)
          make.leading.equalTo(welcomeToLabel.snp.leading).offset(70)
          make.trailing.equalTo(welcomeToLabel.snp.trailing).offset(0)
          make.height.equalTo(40)
        }
    }

    func signInAppleButtonConstraints() {
        self.signInAppleButton.snp.makeConstraints { make in
            make.top.equalTo(fitkalImageView.snp.bottom).offset(30)
            make.leading.equalTo(self.snp.leading).offset(40)
            make.trailing.equalTo(self.snp.trailing).offset(-40)
            make.height.equalTo(60)
        }
    }

    func signInGoogleButtonConstraints() {
        self.signInGoogleButton.snp.makeConstraints { make in
          make.top.equalTo(signInAppleButton.snp.bottom).offset(20)
          make.leading.equalTo(signInAppleButton)
          make.trailing.equalTo(signInAppleButton)
          make.height.equalTo(signInAppleButton)
        }
    }
  func orLabelConstraints() {
      self.orLabel.snp.makeConstraints { make in
        make.top.equalTo(signInGoogleButton.snp.bottom).offset(25)
        make.leading.equalTo(signInAppleButton.snp.leading).offset(0)
        make.trailing.equalTo(signInAppleButton.snp.trailing).offset(0)
        make.height.equalTo(signInAppleButton)
      }
  }


  func newAccountLabelConstraints() {
      self.newAccountLabel.snp.makeConstraints { make in
        make.top.equalTo(orLabel.snp.bottom).offset(10)
        make.leading.equalTo(signInAppleButton.snp.leading).offset(0)
        make.trailing.equalTo(signInAppleButton.snp.trailing).offset(0)
        make.height.equalTo(signInAppleButton)
      }
  }

}

