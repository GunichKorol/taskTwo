import UIKit

class SecondViewController : UIViewController {
    
    private let iconImageView: UIImageView = {
       let imageView = UIImageView()
        imageView.image = UIImage(named: "1")
        return imageView
    }()
    
    private let titleSecondLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 35)
        label.textColor = .black
        label.adjustsFontSizeToFitWidth = true
        return label
    }()
    
    private let descriptionSecondLabel: UILabel = {
        let label = UILabel()
        label.font = label.font.withSize(25)
        label.textColor = .black
        label.adjustsFontSizeToFitWidth = true
        return label
    }()
    
    var labelsStackView = UIStackView()
    var iconImage = UIImage()
    var textTitleLabel = ""
    var textDescriptionLabel = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .gray
        setupViews()
        setConstraints()
        iconImageView.image = iconImage
        titleSecondLabel.text = textTitleLabel
        descriptionSecondLabel.text = textDescriptionLabel
    }
    
    private func setupViews() {
        view.backgroundColor = .white
        view.addSubview(iconImageView)
        labelsStackView = UIStackView(arrangedSubviews: [titleSecondLabel, descriptionSecondLabel],
                                      axis: .horizontal,
                                      spacing: 50)
        view.addSubview(labelsStackView)
    }
    
    private func setConstraints() {
        iconImageView.translatesAutoresizingMaskIntoConstraints = false
        iconImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        iconImageView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        iconImageView.widthAnchor.constraint(equalToConstant: 150).isActive = true
        iconImageView.heightAnchor.constraint(equalToConstant: 150).isActive = true
        
        labelsStackView.topAnchor.constraint(equalTo: iconImageView.bottomAnchor, constant: 50).isActive = true
        labelsStackView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        //labelsStackView.leadingAnchor.constraint(equalTo: workoutBackgroundView.trailingAnchor, constant: 10),
        labelsStackView.heightAnchor.constraint(equalToConstant: 40).isActive = true
    }
}

extension UIStackView {
    convenience init(arrangedSubviews: [UIView], axis: NSLayoutConstraint.Axis, spacing: CGFloat) {
        self.init(arrangedSubviews: arrangedSubviews)
        self.axis = axis
        self.spacing = spacing
        self.translatesAutoresizingMaskIntoConstraints = false
    }
}
