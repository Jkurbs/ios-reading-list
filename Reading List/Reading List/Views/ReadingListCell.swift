//
//  ReadingListCell.swift
//  Reading List
//
//  Created by Kerby Jean on 1/28/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class ReadingListCell: UITableViewCell {
    
    var delegate: BookTableViewCellDelegate?


    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var readButton: UIButton!
    
    var book: Book? {
        didSet {
            updateViews()
        }
    }

    

    @IBAction func toogleReadButton(_ sender: UIButton) {
        print("TAPPED")
        delegate?.toggleHasBeenRead(for: self)
    }
    
    
    func updateViews() {
        if let book = self.book {
            self.titleLabel.text = book.title
            _ = book.hasBeenRead ? readButton.isSelected : !readButton.isSelected
        }
    }
}