//
//  ViewController.swift
//  CVPlain
//
//  Created by MacBook Pro on 5/7/18.
//  Copyright © 2018 Ivan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // Header

    @IBOutlet weak var pictureImageView: UIImageView!

    @IBOutlet weak var headerView: UIView!

    override var prefersStatusBarHidden: Bool {
        return true
    }

    // About

    @IBOutlet weak var aboutView: UIView!

    // Technologies

    @IBOutlet weak var technologiesView: UIView!


    // MARK: UIViewController

    override func viewDidLoad() {
        super.viewDidLoad()

        setupHeader()
        setupAbout()
        setupTechnologies()
    }

    // MARK: UI

    func setupHeader() {
        roundPicture()
        createHeaderShadow()
    }

    func roundPicture() {
        pictureImageView.layer.cornerRadius = pictureImageView.frame.width / 2
        pictureImageView.clipsToBounds = true
    }

    func createHeaderShadow() {
        headerView.layer.masksToBounds = false
        headerView.layer.shadowColor = UIColor.black.cgColor
        headerView.layer.shadowOpacity = 0.5
        headerView.layer.shadowOffset = CGSize.zero
        headerView.layer.shadowRadius = 20
    }

    func setupAbout() {
        aboutView.layer.cornerRadius = 5
        aboutView.clipsToBounds = false
        aboutView.layer.shadowColor = UIColor.black.cgColor
        aboutView.layer.shadowOpacity = 0.5
        aboutView.layer.shadowOffset = CGSize.zero
        aboutView.layer.shadowRadius = 20
    }

    func setupTechnologies() {
        technologiesView.layer.cornerRadius = 5
        technologiesView.clipsToBounds = false
        technologiesView.layer.shadowColor = UIColor.black.cgColor
        technologiesView.layer.shadowOpacity = 0.5
        technologiesView.layer.shadowOffset = CGSize.zero
        technologiesView.layer.shadowRadius = 20
    }
}
