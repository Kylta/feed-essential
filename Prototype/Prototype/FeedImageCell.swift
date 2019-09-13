//
//  FeedImageCell.swift
//  Prototype
//
//  Created by Christophe Bugnon on 13/09/2019.
//  Copyright © 2019 Christophe Bugnon. All rights reserved.
//

import UIKit

final class FeedImageCell: UITableViewCell {
    @IBOutlet private(set) var locationContainer: UIView!
    @IBOutlet private(set) var locationLabel: UILabel!
    @IBOutlet private(set) var feedImageView: UIImageView!
    @IBOutlet private(set) var descriptionLabel: UILabel!
}
