//
//  addEditTableViewController.swift
//  Amir
//
//  Created by Map04 on 2021-04-06.
//

import UIKit
import SafariServices

class addEditTableViewController: UITableViewController {
    
    var media : Media?
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var publicationYearTextField: UITextField!
    @IBOutlet weak var authorDirectorSingerTextField: UITextField!
    @IBOutlet weak var descriptionTextField: UITextField!
    @IBOutlet weak var urlTextField: UITextField!
    @IBOutlet weak var imageViewAddEditing: UIImageView!
    @IBOutlet weak var goToLinkBtn: UIButton!
    @IBOutlet weak var shareBtn: UIButton!
    
    @IBAction func shareBtnTapped(_ sender: UIButton) {
        guard let image = imageViewAddEditing.image else {return}
        let activityController = UIActivityViewController (activityItems: [image], applicationActivities: nil)
        activityController.popoverPresentationController?.sourceView = sender
        present(activityController, animated: true, completion: nil)
    }
    
    @IBAction func goToLinkBtnTapped(_ sender: UIButton) {
        guard let relatedUrl = urlTextField.text else {return}
        if let url = URL(string: relatedUrl){
            let safariViewController = SFSafariViewController(url: url)
            present(safariViewController, animated: true, completion: nil)
        }
        
    }
    
    @IBOutlet weak var saveBtn: UIBarButtonItem!
    
    func updateSaveButtonState() {
        let nameText = nameTextField.text ?? ""
        let publicationYearText = publicationYearTextField.text ?? ""
        let authorDirectorSingerText = authorDirectorSingerTextField.text ?? ""
        let descriptionText = descriptionTextField.text ?? ""
        let urlText = urlTextField.text ?? ""
        
        saveBtn.isEnabled = !nameText.isEmpty && !publicationYearText.isEmpty && !authorDirectorSingerText.isEmpty && !descriptionText.isEmpty && !urlText.isEmpty
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let media = media {
            nameTextField.text = media.name
            publicationYearTextField.text = "\(media.publicationYear)"
            authorDirectorSingerTextField.text = media.authorOrDirectorOrSinger
            descriptionTextField.text = media.description
            urlTextField.text = media.urlAddress
            imageViewAddEditing.image = UIImage(named: "\(media.image)")
        }
        
        updateSaveButtonState()
    }
    
    @IBAction func textEditingChanged(_ sender: UITextField) {
        updateSaveButtonState()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender:
    Any?) {
        super.prepare(for: segue, sender: sender)
    
        guard segue.identifier == "fromSaveBtn" else { return }
    
        let name = nameTextField.text ?? ""
        let publicationYear = publicationYearTextField.text ?? ""
        let authorDirectorSinger = authorDirectorSingerTextField.text ?? ""
        let description = descriptionTextField.text ?? ""
        let urlText = urlTextField.text ?? ""
        
        media = Media(name: name, image: "car", publicationYear: Int(publicationYear)!, authorOrDirectorOrSinger: authorDirectorSinger, description: description, urlAddress: urlText)
    }
    
}
