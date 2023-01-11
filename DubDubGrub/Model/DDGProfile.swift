//
//  DDGProfile.swift
//  DubDubGrub
//
//  Created by Steven Schwab on 12/25/22.
//

import CloudKit
import UIKit

struct DDGProfile: Identifiable {
    
    static let kFirstName = "firstName"
    static let kLastName = "lastName"
    static let kAvatar = "avatar"
    static let kCompanyName = "companyName"
    static let kBio = "bio"
    static let kIsCheckedIn = "isCheckedIn"
    static let kIsCheckedInNilCheck = "isCheckedInNilCheck"
    
    let id: CKRecord.ID
    let firstName: String
    let lastName: String
    let avatar: CKAsset!
    let companyName: String
    let bio: String
    
    init(record: CKRecord) {
        id = record.recordID
        firstName = record[DDGProfile.kFirstName] as? String ?? "N/A"
        lastName = record[DDGProfile.kLastName] as? String ?? "N/A"
        avatar = record[DDGProfile.kAvatar] as? CKAsset
        companyName = record[DDGProfile.kCompanyName] as? String ?? "N/A"
        bio = record[DDGProfile.kBio] as? String ?? "N/A"
    }
    
    
    var avatarImage: UIImage {
        guard let avatar else { return PlaceholderImage.square }
        return avatar.convertToUIImage(in: .square)
    }
}