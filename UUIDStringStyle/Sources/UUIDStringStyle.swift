//
//  UUIDStringStyle.swift
//  Pods
//
//  Created by Keunhyun Oh on 2018. 6. 20..
//

import Foundation

/// UUID 문자열 string을 지정해준다.
//canonical (ex) 123e4567-e89b-12d3-a456-426655440000
//surrounding braces (ex) {123e4567-e89b-12d3-a456-426655440000}
//Uniform Resource Name (URN) (ex) urn:uuid:123e4567-e89b-12d3-a456-426655440000
//noHyphens (ex) 123e4567e89b12d3a456426655440000
public enum UUIDStringStyle : Int {
    
    case canonical          //canonical (ex) 123e4567-e89b-12d3-a456-426655440000
    case surroundingBraces  //surrounding braces (ex) {123e4567-e89b-12d3-a456-426655440000}
    case urn                //Uniform Resource Name (URN) (ex) urn:uuid:123e4567-e89b-12d3-a456-426655440000
    case noHyphens          //noHyphens (ex) 123e4567e89b12d3a456426655440000
    
    /// 다음 style 값을 반환해준다. 순환된다.
    ///
    /// - Returns: 다음 순서의 UUIDStringStyle 이다.
    public func next() -> UUIDStringStyle {
        if let type = UUIDStringStyle(rawValue: self.rawValue + 1) {
            return type
        }
        
        if let type = UUIDStringStyle(rawValue: 0) {
            return type
        }
        
        return .canonical
    }
    
    /// UUIDStringStyle을 text 표현값으로 변경한다.
    public var text : String {
        get {
            switch(self) {
            case .canonical:
                return "Canonical"
            case .surroundingBraces:
                return "Surrounding Braces"
            case .urn:
                return "Uniform Resource Name (URN)"
            case .noHyphens:
                return "No hyphens"
            }
        }
    }
    
    /// uuid를 입력으로 현재 style의 uuidString을 반환한다.
    ///
    /// - Parameter uuid: style을 적용할 uuid이다.
    /// - Returns: style이 적용된 uuidString이다.
    public func uuidString(_ uuid : UUID) -> String {
        
        switch(self) {
        case .canonical:
            return uuid.uuidString
        case .surroundingBraces:
            return "{\(uuid.uuidString)}"
        case .urn:
            return "urn:uuid:\(uuid.uuidString)"
        case .noHyphens:
            let uuidString = uuid.uuidString
            let components = uuidString.components(separatedBy: "-")
            let nohyphensString = components.joined()
            return nohyphensString
        }
        
    }
    
}

extension UUIDStringStyle : CustomStringConvertible {
    
    public var description: String {
        return self.text
    }
    
}

extension UUID {
    
    public func uuidString(style: UUIDStringStyle) -> String {
        return style.uuidString(self)
    }
    
}
