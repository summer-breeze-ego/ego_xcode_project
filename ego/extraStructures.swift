//
//  extraStructures.swift
//  ego-app
//
//  Created by Augustin Coman on 24/03/2022.
//

import Foundation

// pages or views of the app
enum Page {
    case page1
    case page2
    case page3
    case page4
}

// structure to capture the user's profile details
struct Profile {
    let Name: String
}

struct YesOrNo {
    // arrays that contain neg or pos responses to questions
    let yes: [String] = ["y", "Y", "yes", "YES", "Yes", "YA", "ya", "Ya", "YAH", "yah", "Yah"]
    let no: [String] = ["n", "N", "no", "NO", "No", "nah", "Nah", "NAH"]
    
    // checks if a string is a pos or neg response
    func ynQ (response: String) -> Bool {
        var res: Bool
        
        if yes.contains(response) {
            res = true
        } else if no.contains(response) {
            res = false
        } else {
            res = false
        }
        
        return res
    }
}
