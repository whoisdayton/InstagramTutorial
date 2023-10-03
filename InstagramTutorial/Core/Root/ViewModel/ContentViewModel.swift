//
//  ContentViewModel.swift
//  InstagramTutorial
//
//  Created by Dayton Hedges on 9/23/23.
//

import Foundation
import Firebase
import Combine


class ContentViewModel: ObservableObject {
    private let service = AuthService.shared
    private var cancellables = Set<AnyCancellable>()
    
    @Published var userSession: FirebaseAuth.User?
    @Published var currentUser: User?
    
    init() {
        setupSubscribers()
        //^recently added
    }
    
    func setupSubscribers() {
        service.$userSession.sink { [weak self] userSession in
            self?.userSession = userSession
        }
        .store(in: &cancellables)
        
        
            service.$currentUser.sink { [weak self] currentUser in
                self?.currentUser = currentUser
            }
            .store(in: &cancellables)
        }
    }


