//
//  HomeDatasource.swift
//  TwitterLBTA
//
//  Created by Stephan Wegmann on 02.01.17.
//  Copyright © 2017 Stephan Wegmann. All rights reserved.
//

import LBTAComponents

class HomeDatasource: Datasource {
    
    let users: [User] = {
        let stevenUser = User(name: "Stephan Wegmann", username: "@articYoulate", bioText: "Mehr Text", profileImage: #imageLiteral(resourceName: "aston"))
        let annetteUser = User(name: "Annette Wegmann", username: "@Mutter", bioText: "Annette hat ein neues iPhone! Und noch vieles mehr zu Weihnachten geschenkt bekommen!", profileImage: #imageLiteral(resourceName: "annette"))
        
        let philippUser = User(name: "Philipp Wegmann", username: "@philippus", bioText: "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren.", profileImage: #imageLiteral(resourceName: "aston"))
        
        return [stevenUser, annetteUser, philippUser]
            
        }()
    
    let tweets = ["tweet1", "tweet2"]
    
    override func footerClasses() -> [DatasourceCell.Type]? {
        return [UserFooter.self]
    }
    
    override func headerClasses() -> [DatasourceCell.Type]? {
        return [UserHeader.self]
    }
    
    override func cellClasses() -> [DatasourceCell.Type] {
        return [UserCell.self, TweetCell.self]
    }
    
    override func item(_ indexPath: IndexPath) -> Any? {
        return users[indexPath.item]
    }
    
    override func numberOfSections() -> Int {
        return 2
    }
    
    override func numberOfItems(_ section: Int) -> Int {
        if section == 1 {
            return tweets.count
        }
        return users.count
    }
}
