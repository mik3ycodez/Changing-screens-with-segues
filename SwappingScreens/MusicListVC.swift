//
//  MusicListVC.swift
//  SwappingScreens
//
//  Created by cbeuser on 4/30/17.
//  Copyright © 2017 CBE User. All rights reserved.
//

import UIKit

class MusicListVC: UIViewController {

    @IBAction func backBtn(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
//    @IBAction func load3rdScreenPressed(_ sender: Any) {
//        //You can pass in anything you need to
//        let songTitle = "This is the song title"
//        performSegue(withIdentifier: "PlaySongVC", sender: songTitle)
//    }
    
    @IBAction func playSongBtn(_ sender: Any) {
        //You can pass in anything you need to
        let songTitle = "This is the song title"
        performSegue(withIdentifier: "PlaySongVC", sender: songTitle)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor.blue
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? PlaySongVC {
            if let songTitle = sender as? String {
                destination.selectedSong = songTitle
            }
            
            
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
