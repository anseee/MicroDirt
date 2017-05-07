//
//  ViewController.swift
//  MicroDirt
//
//  Created by 박성원 on 2017. 5. 7..
//  Copyright © 2017년 sungwon. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.requestMicroDirstInfo()
    }

    // MARK: request apis
    
    func requestMicroDirstInfo() {
        //let encodedServiceKey = BaseURL.serviceKey.utf8
        
        var params = [String: Any]()
        params["returnType"] = "json"
        params["serviceKey"] = BaseURL.serviceKey
        params["umdName"] = "구월동"
        params["pageNo"] = NSNumber.init(value: 1)
        params["numOfRows"] = NSNumber.init(value: 10)
    
        Alamofire.request(BaseURL.baseURL,
                          method: .get,
                          parameters: params,
                          encoding: JSONEncoding.default, headers: nil).response {
                            response in
                            
            print(response.request)  // original URL request
            print(response.response) // HTTP URL response
            print(response.data)     // server data
            
        }

    }

}

