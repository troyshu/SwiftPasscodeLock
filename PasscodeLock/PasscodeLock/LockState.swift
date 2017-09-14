//
//  LockState.swift
//  PasscodeLock
//
//  Created by Troy Shu on 9/13/17.
//  Copyright © 2017 Yanko Dimitrov. All rights reserved.
//

import Foundation

public enum LockState {
    case enterPasscode
    case setPasscode
    case changePasscode
    case removePasscode
    
    public func getState() -> PasscodeLockStateType {
        
        switch self {
        case .enterPasscode: return EnterPasscodeState()
        case .setPasscode: return SetPasscodeState()
        case .changePasscode: return ChangePasscodeState()
        case .removePasscode: return EnterPasscodeState(allowCancellation: true)
        }
    }
}
