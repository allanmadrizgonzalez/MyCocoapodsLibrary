//
//  Logger.swift
//  MyCocoapodsLibrary
//
//  Created by Allan Madriz on 6/19/21.
//

import Foundation

struct estructura: Codable {
 
}


let baseURL:String = ""

public class Logger{
    
   public init() {
    }
    
    public func printLog(){
        print("Hola Mundo")
    }
    
    func privateMethod(){
        print("privado")
    }
    
    
    public func descargarDatos(completed: @escaping ()->()){
        var post = [estructura]()
        let url = URL(string: "\(baseURL)")
        URLSession.shared.dataTask(with: url!){(data,response, error) in
            
            if error == nil{
                do{
                    post = try JSONDecoder().decode([estructura].self, from: data!)
                    
                    
                    DispatchQueue.main.async {
                        completed()
                    }
                    
                }catch{
                    print("JSON Error")
                }
            }
            
        }.resume()
        
    }
    
    
}
