//  RightDetailViewController.swift


import UIKit

class RightDetailViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    
    @IBOutlet weak var studentRollNumberTableView: UITableView!
    
    var studentNames = ["Ajay","Mayur","Akash","Shubham","Pratik","Sanjay","Varun","Virat","Dinesh"]
    var studentRollNumbers = ["1","2","3","4","5","6","7","8","9"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        studentRollNumberTableView.delegate = self
        studentRollNumberTableView.dataSource = self
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        studentNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = studentRollNumberTableView.dequeueReusableCell(withIdentifier: "RightDetailCell", for: indexPath)
        
        cell.textLabel?.text = studentNames[indexPath.row]
        cell.detailTextLabel?.text = "Roll no.-" + studentRollNumbers[indexPath.row]
        cell.detailTextLabel?.textColor = .white
        cell.textLabel?.textColor = .white
        
        if indexPath.row % 2 == 0 {
            cell.backgroundColor = .systemPink
        }else{
            cell.backgroundColor = .black
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete{
            studentNames.remove(at: indexPath.row)
            studentRollNumberTableView.deleteRows(at: [indexPath], with: .automatic)
        }
    }
}
