//
//  MessageTableViewController.swift
//  Conversator
//
//  Created by Christophe VG on 24/01/2021.
//

import UIKit

class MessageTableViewController: UITableViewController {

  //MARK: properties
  var messages = [Message]()
  
  //MARK: Private Methods
   
  private func loadSampleMessages() {
    guard let msg1 = Message("Hello!") else {
      fatalError("Unable to instantiate msg1")
    }
    guard let msg2 = Message("Hi! How are you doing?") else {
      fatalError("Unable to instantiate msg2")
    }
    guard let msg3 = Message("Fine and you?") else {
      fatalError("Unable to instantiate msg3")
    }
    
    messages += [msg1, msg2, msg3]
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    self.loadSampleMessages()

    // Uncomment the following line to preserve selection between presentations
    // self.clearsSelectionOnViewWillAppear = false

    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem
  }

  // MARK: - Table view data source

  override func numberOfSections(in tableView: UITableView) -> Int {
    return 1
  }

  override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return messages.count
  }

  override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cellIdentifier = "MessageTableViewCell"
    guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? MessageTableViewCell else {
      fatalError("The dequeued cell is not an instance of MessageTableViewCell.")
    }
    let message = messages[indexPath.row]
    cell.message.text = message.text
    return cell
  }
  
  /*
  // Override to support conditional editing of the table view.
  override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
    // Return false if you do not want the specified item to be editable.
    return true
  }
  */

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

}
