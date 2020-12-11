//
//  GDBaseRequest.swift
//  GDNetworking-XSwift
//
//  Created by Journey on 12/11/20.
//

import UIKit

enum GDRequestType : Int {
    case get
    case post
    case head
    case put
    case delete
    case patch
}

enum GDNetworkErrorCode : Int {
    case jsonValidateError          = -10001
    case responseInvalidError       = -10002
    case responseDataInvalidError   = -10003
    case cacheInvalidError          = -10004
    case noCacheError               = -10005
    case cacheExpired               = -10006
    case cacheVersionNotMatch       = -10007
    case handShakeFailed            = -10008
    case normalError                = 0
}

enum GDRequestSerializerType : Int {
    case json = 0
    case http
    case encryption
}

enum GDResponseSerializerType : Int {
    case string = 0
    case json
    case decryption
    case data
}

enum GDRequestState : Int {
    case prepare = 0
    case runing
    case suspend
    case canceled
    case completed
}

enum GDRequestPriority : Int {
    case high            = 1000
    case defualt         = 750
    case low             = 250
}

typealias GDRequestCompletionClosure = (GDBaseRequest) -> ()

typealias GDRequestProcessClosure = (Progress) -> ()

protocol GDBaseRequestDelegate: class {
    
    func cacheHitted(_ request : GDBaseRequest)
    
    func requestSuccess(_ request : GDBaseRequest)
    
    func requestFailed(_ request : GDBaseRequest)
}

class GDBaseRequest: NSObject {
    
    
}
