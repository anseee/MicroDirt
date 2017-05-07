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
import Kanna

class ViewController: UIViewController, XMLParserDelegate {

    var item:[String:String] = [:]
    var items:[[String:String]] = []
    var currentElement = ""
    var elementCount = 0
    
    let strURL = "http://openapi.airkorea.or.kr/openapi/services/rest/ArpltnInforInqireSvc/getMinuDustFrcstDspth?serviceKey=\(BaseURL.serviceKey)"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let url = URL(string: self.strURL) {
            
            if let parser = XMLParser(contentsOf: url) {
                parser.delegate = self
                
                if parser.parse() {
                    print(self.items)
                }
                
            } else {
                print("parser fail")
            }
            
        } else {
            print("URL error")
        }
    }
    
    func parser(_ parser: XMLParser, didStartElement elementName: String, namespaceURI: String?, qualifiedName qName: String?, attributes attributeDict: [String : String] = [:]) {
        
        currentElement = elementName
        //print("currentElement = \(currentElement)")
        
        if elementName == "items" {
            items = []
        } else if elementName == "item" {
            item = [:]
        }
        
    }
    
    func parser(_ parser: XMLParser, foundCharacters string: String) {

        let data = string.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines)
        item[currentElement] = data
    }
    
    func parser(_ parser: XMLParser, didEndElement elementName: String, namespaceURI: String?, qualifiedName qName: String?) {
        if elementName == "item" {
            items.append(item)
            elementCount += elementCount
        }
    }
    
}

