
//  BasicCellViewController.swift


import UIKit

class BasicCellViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var studentNameTableView: UITableView!
    
    var studentNames = ["Shekhar","Rakesh","Shraddha","Pratik","Samrat","Rahul","Sonali"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        studentNameTableView.delegate = self
        studentNameTableView.dataSource = self
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        studentNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = studentNameTableView.dequeueReusableCell(withIdentifier: "BasicCell", for: indexPath)
        
        cell.textLabel?.text = studentNames[indexPath.row]
        cell.textLabel?.textColor = .white
        cell.backgroundColor = generateRandomColor()
        
        return cell
    }
    
    func generateRandomColor() -> UIColor {
        let randomColor1 = CGFloat.random(in: 0...1)
        let randomColor2 = CGFloat.random(in: 0...1)
        let randomColor3 = CGFloat.random(in: 0...1)
        return UIColor(red: randomColor1, green: randomColor2, blue: randomColor3, alpha: 1.2)
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            studentNames.remove(at: indexPath.row)
            studentNameTableView.deleteRows(at: [indexPath], with: .automatic)
        }
    }
}
