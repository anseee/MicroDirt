////
////  API.swift
////  MicroDirt
////
////  Created by 박성원 on 2017. 5. 7..
////  Copyright © 2017년 sungwon. All rights reserved.
////
//
//import Foundation
//import RxCocoa
//import RxSwift
//import Alamofire
//import RxAlamofire
//import SwiftyJSON
//
//protocol APIRequest: Request {}
//
//extension APIRequest {
//    var baseURL: URL {
//        return URL(string: "http://openapi.airkorea.or.kr/openapi/services/rest/ArpltnInforInqireSvc/getUnityAirEnvrnIdexSnstiveAboveMsrstnList")
//    }
//}
//
//extension APIRequest where Response:
//
//struct DefaultAPIServer : APIServer {
//    
//    private let baseServerURL =
//    
//    private let serviceKey = "bXzmmCNgz9oMm4dct6hXl%2FnFhUVRLnXFF48zNU7%2FvovQoDkzfqyx0tGLT%2FVtw0fgTOX22FzcY%2Bvcadw9D4s%2Fow%3D%3D"
//    
//    var updateInterval: TimeInterval { return 24 * 60 * 60 }
//    
//    let sessionManager: SessionManager = {
//        let configuration = URLSessionConfiguration.default
//        configuration.httpAdditionalHeaders = SessionManager.defaultHTTPHeaders
//        configuration.requestCachePolicy = .reloadIgnoringLocalCacheData
//        return SessionManager(configuration: configuration)
//    }()
//    
//    func method(_ api: API) -> HTTPMethod {
//        switch api {
//        case .latest: return .get
//        }
//    }
//    
//    func url(_ api: API) -> String {
//        switch api {
//        case .latest: return "\(baseServerURL)/latest"
//        }
//    }
//    
//}
//
//
