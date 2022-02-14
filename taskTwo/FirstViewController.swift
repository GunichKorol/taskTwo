import UIKit

class FirstViewController: UIViewController {
    
    var icons = ["0","1","2","3","4","5","6","7","8","9"]
    
    private let tableView: UITableView = {
       let tableView = UITableView()
        tableView.backgroundColor = .none
        tableView.separatorStyle = .none
        tableView.bounces = false
        return tableView
    }()
    
    private let identifierTableViewCell = "cell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(tableView)
        setConstraints()
        setDelegate()
        tableView.register(MyTableViewCell.self, forCellReuseIdentifier: identifierTableViewCell)
    }
    
    private func setDelegate() {
        tableView.delegate = self
        tableView.dataSource = self
    }
}

extension FirstViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1000
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: identifierTableViewCell, for: indexPath) as! MyTableViewCell
        cell.iconImageView.image = UIImage(named: icons[indexPath.row%10])
        cell.titleLabel.text = "Title \(indexPath.row+1)"
        cell.descriptionLabel.text = "Description \(indexPath.row+1)"
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let secondVC = SecondViewController()
        navigationController?.pushViewController(secondVC, animated: true)
        secondVC.iconImage = UIImage(named: icons[indexPath.row%10])!
        secondVC.textTitleLabel = "Title \(indexPath.row+1)"
        secondVC.textDescriptionLabel = "Description \(indexPath.row+1)"
    }
    
}

extension FirstViewController {
    
    private func setConstraints() {
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0).isActive = true
        tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0).isActive = true
        tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0).isActive  = true
        tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
    }
}

