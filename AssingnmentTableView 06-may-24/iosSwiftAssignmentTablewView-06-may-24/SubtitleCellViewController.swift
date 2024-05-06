//  SubtitleCellViewController.swift


import UIKit

class SubtitleCellViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var studentInfoTableView: UITableView!
    
    var studentNames = ["Max","Merry","Sharlot","Devid","John","Chris","Dolly","Anna"]
    var studentRollNumbers = ["18","19","20","21","22","23","24","25"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        studentInfoTableView.delegate = self
        studentInfoTableView.dataSource = self
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        studentNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = studentInfoTableView.dequeueReusableCell(withIdentifier: "SubtitleCell", for: indexPath)
        
        cell.textLabel?.text = studentNames[indexPath.row]
        cell.detailTextLabel?.text = "Roll no.- " + studentRollNumbers[indexPath.row]
        cell.detailTextLabel?.textColor = .white
        cell.textLabel?.textColor = .white
                
        if indexPath.row % 2 == 0 {
            cell.backgroundColor = .red
        }else{
            cell.backgroundColor = .black
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete{
            studentNames.remove(at: indexPath.row)
            studentRollNumbers.remove(at: indexPath.row)
            studentInfoTableView.deleteRows(at: [indexPath], with: .automatic)
        }
    }
}






