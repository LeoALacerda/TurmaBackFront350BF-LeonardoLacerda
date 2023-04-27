//
//  ViewModel.swift
//  DesafioTabBar
//
//  Created by Leonardo Lacerda on 26/04/23.
//

import Foundation

class ViewModel{
    private var profileList: [Profile] = []
    
    func setProfile(profile: Profile){
        profileList.append(profile)
    }
    
    func getProfile(index: Int) -> Profile{
        return profileList[index]
    }
    
    func arrayCount() -> Int{
        return profileList.count
    }
}
