//
//  MediaTableViewController.swift
//  Amir
//
//  Created by Map04 on 2021-04-06.
//

import UIKit
import Foundation

class MediaTableViewController: UITableViewController {
    var mediaArray = Media.generateMediaList()
    let numberOfSections = 1
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.leftBarButtonItem = editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return numberOfSections
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {return mediaArray.count}
        else {return 0}
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Media Cell", for: indexPath) as! MediaTableViewCell
        let media = mediaArray[indexPath.row]
        cell.update(with: media)
        cell.showsReorderControl = true
        return cell
    }
    
    override func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
        return .delete
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            mediaArray.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
    
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
        
        let movedMedia = mediaArray.remove(at: fromIndexPath.row)
        mediaArray.insert(movedMedia, at: to.row)
        tableView.reloadData()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        tableView.reloadData()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "fromCellToStaticTableView"{
        
            let indexPath = tableView.indexPathForSelectedRow!
            let media = mediaArray[indexPath.row]
            let navController = segue.destination as! UINavigationController
            let addEditMediaTableViewContoller = navController.topViewController as!addEditTableViewController
            addEditMediaTableViewContoller.media = media
        }
    }
    
    @IBAction func unwindToMediaTableViewController(_ unwindSegue: UIStoryboardSegue) {
        guard unwindSegue.identifier == "fromSaveBtn",
            let sourceViewController = unwindSegue.source as?
            addEditTableViewController,
            let media = sourceViewController.media else { return }

        if let selectedIndexPath = tableView.indexPathForSelectedRow
        {
            mediaArray[selectedIndexPath.row] = media
            tableView.reloadRows(at: [selectedIndexPath],
            with: .none)
        } else {
            let newIndexPath = IndexPath(row: mediaArray.count,
            section: 0)
            mediaArray.append(media)
            tableView.insertRows(at: [newIndexPath],
            with: .automatic)
        }
    }
}
