//
//  TableViewController.swift
//  TableViewJSON
//
//  Created by Student on 21/10/22.
//  Copyright © 2022 Student. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    var moedas = [Criptomoeda]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        downloadJSON {
            self.tableView.reloadData()
            print("Success")
        }
        

    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
       
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return moedas.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "criptomoeda", for: indexPath)

        if let moedaCell = cell as? MoedaTableViewCell{
            let moeda = moedas[indexPath.row]
            
            moedaCell.nomeMoedaLabel.text = moeda.name
            moedaCell.rankMoedaLabel.text = moeda.rank
            
            return moedaCell
        }

        return cell
    }


    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    
    func downloadJSON(completed: @escaping () -> ()){
        
         let url = URL(string: "https://api.coincap.io/v2/assets")
        
         URLSession.shared.dataTask(with: url!) {data, response, error in
            
            if error == nil {
                do{
                    let array = try
                        JSONDecoder().decode(Criptomoedas.self , from: data! )
                    self.moedas = array.data
                    
                    DispatchQueue.main.async{
                        completed()
                    }
                }catch{
                    print("JSON Error")
                }
            }
        }.resume()
    }

    
}
