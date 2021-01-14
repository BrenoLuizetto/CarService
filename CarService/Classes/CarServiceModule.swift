//
//  CarServiceModule.swift
//  CarService
//
//  Created by Breno Luizetto Cintra on 14/01/21.
//

import Foundation


public class CarServiceModule {
    
    private let client: ServiceCarsProtocol
    
    public init(client: ServiceCarsProtocol = ServiceCars()){
        self.client = client
    }
    
    public func getCars(completionHandler: (Result<[CarModel], MyError>) -> Void){
        client.getCars(completionHandler: completionHandler)
    }
    
    public func getMainViewController() -> UIViewController? {
        let storyboard = UIStoryboard()
        let vc = storyboard.instantiateInitialViewController()
        return vc
    }
    
    //exemplo chamando uma navViewController
    
//    public func getMainViewController(nav: UINavigationController)  {
//        let storyboard = UIStoryboard()
//       if let vc = storyboard.instantiateInitialViewController(){
//        nav.pushViewController(vc, animated: true)
//        }
//    }
}
