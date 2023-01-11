//
//  UIImage+Ext.swift
//  DubDubGrub
//
//  Created by Steven Schwab on 12/29/22.
//

import CloudKit
import UIKit

extension UIImage {
    
    func convertToCKAsset() -> CKAsset? {
        
        guard let urlPath = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first else { return nil }
        let fileUrl = urlPath.appending(path: "selectedAvatarImage")
        guard let imageData = jpegData(compressionQuality: 0.25) else { return nil }
        
        do {
            try imageData.write(to: fileUrl)
            return CKAsset(fileURL: fileUrl)
        } catch {
            return nil
        }
    }
}
