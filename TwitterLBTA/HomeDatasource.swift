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
        let annetteUser = User(name: "Annette Wegmann", username: "Mutter", bioText: "Annette hat ein neues iPhone!", profileImage: #imageLiteral(resourceName: "annette"))
        
        return [stevenUser, annetteUser]
            
        }()
    
    override func footerClasses() -> [DatasourceCell.Type]? {
        return [UserFooter.self]
    }
    
    override func headerClasses() -> [DatasourceCell.Type]? {
        return [UserHeader.self]
    }
    
    override func cellClasses() -> [DatasourceCell.Type] {
        return [UserCell.self]
    }
    
    override func item(_ indexPath: IndexPath) -> Any? {
        return users[indexPath.item]
    }
    
    override func numberOfItems(_ section: Int) -> Int {
        return users.count
    }
}
