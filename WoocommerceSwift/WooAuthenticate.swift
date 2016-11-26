//
//  Authenticator.swift
//  WoocommerceSwift
//
//  Created by Dmitri Kalinaitsev on 26/11/2016.
//  Copyright © 2016 Dmitri Kalinaitsev. All rights reserved.
//

import Foundation

class WooAuthenticate {
    
    /// This function generates an authentication string for the WooCommerce API
    ///
    /// - Parameters:
    ///   - ck: WooCommerce Consumer key - ck_xxxxxxxxxxx...
    ///   - cs: WooCommerce Consumer secret - cs_xxxxxxxxxxx...
    /// - Returns: String
    public func authenticate(withConsumerKey ck: String, consumerSecret cs: String) -> String {
        
        let authenticationString = "\(ck):\(cs)"
        let plainData = authenticationString.data(using: String.Encoding.utf8)
        let base64String = plainData?.base64EncodedString(options: NSData.Base64EncodingOptions(rawValue: 0))
        let result = "Basic " + base64String!

        return result
    }
    
}
