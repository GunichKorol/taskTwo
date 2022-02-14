import UIKit
class MyTableViewCell: UITableViewCell {

    private let myCell: UIView = {
        let view = UIView()
        view.layer.cornerRadius = 20
        view.backgroundColor = .white
        return view
    }()
    
    private let backgroundImageView: UIView = {
       let view = UIView()
        view.backgroundColor = .lightGray
        view.layer.cornerRadius = 25
        return view
    }()
    
        let iconImageView: UIImageView = {
        let imageView = UIImageView()
           imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
       let titleLabel: UILabel = {
       let label = UILabel()
        label.text = "Title"
        label.font = UIFont.boldSystemFont(ofSize: 20)
        label.textColor = .black
        return label
    }()
    
       let descriptionLabel: UILabel = {
       let label = UILabel()
        label.text = "Description"
        label.textColor = .gray
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setupViews()
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupViews() {
        backgroundColor = .systemMint
        selectionStyle = .none
        
        addSubview(myCell)
        addSubview(backgroundImageView)
        addSubview(iconImageView)
        addSubview(titleLabel)
        addSubview(descriptionLabel)
    }
    
    private func setConstraints() {
        myCell.translatesAutoresizingMaskIntoConstraints = false
        myCell.topAnchor.constraint(equalTo: topAnchor, constant: 5).isActive = true
        myCell.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10).isActive = true
        myCell.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10).isActive = true
        myCell.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 0).isActive = true
        
        backgroundImageView.translatesAutoresizingMaskIntoConstraints = false
        backgroundImageView.centerYAnchor.constraint(equalTo: myCell.centerYAnchor).isActive = true
        backgroundImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 50).isActive = true
        backgroundImageView.heightAnchor.constraint(equalToConstant: 50).isActive = true
        backgroundImageView.widthAnchor.constraint(equalToConstant: 50).isActive  = true
        
        iconImageView.translatesAutoresizingMaskIntoConstraints = false
        iconImageView.topAnchor.constraint(equalTo: backgroundImageView.topAnchor, constant: 10).isActive = true
        iconImageView.leadingAnchor.constraint(equalTo: backgroundImageView.leadingAnchor, constant: 10).isActive = true
        iconImageView.trailingAnchor.constraint(equalTo: backgroundImageView.trailingAnchor, constant: -10).isActive = true
        iconImageView.bottomAnchor.constraint(equalTo: backgroundImageView.bottomAnchor, constant: -10).isActive = true
        
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.topAnchor.constraint(equalTo: myCell.topAnchor, constant: 10).isActive = true
        titleLabel.leadingAnchor.constraint(equalTo: backgroundImageView.trailingAnchor, constant: 50).isActive = true
        titleLabel.trailingAnchor.constraint(equalTo: myCell.trailingAnchor, constant: -10).isActive = true
        
        descriptionLabel.translatesAutoresizingMaskIntoConstraints = false
        descriptionLabel.topAnchor.constraint(equalTo: myCell.topAnchor, constant: 40).isActive = true
        descriptionLabel.leadingAnchor.constraint(equalTo: backgroundImageView.trailingAnchor, constant: 50).isActive = true
        descriptionLabel.trailingAnchor.constraint(equalTo: myCell.trailingAnchor, constant: -10).isActive = true
    }

}
