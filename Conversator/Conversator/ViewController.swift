//
//  ViewController.swift
//  Conversator
//
//  Created by Christophe VG on 23/01/2021.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

  //MARK: properties

  @IBOutlet weak var newMessage: UITextField!

  override func viewDidLoad() {
    super.viewDidLoad()
    newMessage.delegate = self
  }

  //MARK: actions

  @IBAction func addMessage(_ sender: Any) {
    self.alert(newMessage.text!)
  }

  //MARK: UITextFieldDelegate

  func textFieldShouldReturn(_ textField: UITextField) -> Bool {
    newMessage.resignFirstResponder()
    return true
  }

  func textFieldDidEndEditing(_ textField: UITextField) {
    self.alert(textField.text!)
  }

  private func alert(_ message: String) {
    let alert = UIAlertController(
      title: "Hello!",
      message: message,
      preferredStyle: UIAlertController.Style.alert
    )
    let alertAction = UIAlertAction(
      title: "OK!",
      style: UIAlertAction.Style.default
    )
    alert.addAction(alertAction)
    present(alert, animated: true)
  }
}
