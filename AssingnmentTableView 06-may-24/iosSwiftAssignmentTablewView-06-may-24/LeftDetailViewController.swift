//  LeftDetailViewController.swift


import UIKit

class LeftDetailViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet weak var studentDetailsTableView: UITableView!
    
    var studentNames = ["Arun","Prshant","Vikas","Teena","Lokesh","Deepak","Mayank","Ashwin"]
    var studentRollNumbers = ["10","11","12","13","14","15","16","17"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        studentDetailsTableView.delegate = self
        studentDetailsTableView.dataSource = self
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        studentNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = studentDetailsTableView.dequeueReusableCell(withIdentifier: "LeftDetailCell", for: indexPath)
        
        cell.textLabel?.text = studentNames[indexPath.row]
        cell.detailTextLabel?.text = "Roll no.- " + studentRollNumbers[indexPath.row]
        cell.detailTextLabel?.textColor = .white
        cell.textLabel?.textColor = .white
        
        if indexPath.row % 2 == 0 {
            cell.backgroundColor = .blue
        }else{
            cell.backgroundColor = .black
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete{
            studentNames.remove(at: indexPath.row)
            studentRollNumbers.remove(at: indexPath.row)
            studentDetailsTableView.deleteRows(at: [indexPath], with: .automatic)
        }
    }
}


