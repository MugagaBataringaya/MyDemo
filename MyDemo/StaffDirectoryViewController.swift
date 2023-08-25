//
//  StaffDirectoryViewController.swift
//  MyDemo
//
//  Created by user242733 on 8/24/23.
//

import UIKit

class StaffDirectoryViewController: UIViewController {
    
    @IBOutlet weak var staffTableView: UITableView!
    
    var titles: [Staff] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titles = getTitles()
        staffTableView.dataSource = self
        staffTableView.delegate = self

    }
    
    func getTitles()-> [Staff]{
        var tempTitle: [Staff] = []
        
        let title1 = Staff(title: "Director")
        let title2 = Staff(title: "Manager")
        let title3 = Staff(title: "Application Security Adminstrator")
        let title4 = Staff(title: "Cloud Security Specialist")
        let title5 = Staff(title: "CyberSecurity Hardware Engineer")
        let title6 = Staff(title: "Data privary officer")
        let title7 = Staff(title: "IT Security Engineer")
        let title8 = Staff(title: "Software Engineer")
        let title9 = Staff(title: "Web developer")
        let title10 = Staff(title: "Data Analyst Programmer")
        let title11 = Staff(title: "Network Enginner")
        let title12 = Staff(title: "Computer support specialist")
        let title13 = Staff(title: "Technical Support Anayst")
        let title14 = Staff(title: "Help Dest Technician")
        
        
        tempTitle.append(title1)
        tempTitle.append(title2)
        tempTitle.append(title3)
        tempTitle.append(title4)
        tempTitle.append(title5)
        tempTitle.append(title6)
        tempTitle.append(title7)
        tempTitle.append(title8)
        tempTitle.append(title9)
        tempTitle.append(title10)
        tempTitle.append(title11)
        tempTitle.append(title12)
        tempTitle.append(title13)
        tempTitle.append(title14)
        
        return tempTitle
    }


}
extension StaffDirectoryViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        titles.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "StaffDirectoryCell", for: indexPath) as? StaffDirectoryTableViewCell else{
            return UITableViewCell()
        }
        cell.config(staff: titles[indexPath.row])
        return cell
    }
    
    
}

extension StaffDirectoryViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
}
