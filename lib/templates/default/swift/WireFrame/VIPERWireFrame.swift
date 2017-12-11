//
// Created by AUTHOR
// Copyright (c) YEAR AUTHOR. All rights reserved.
//

import Foundation

class VIPERWireFrame: VIPERWireFrameProtocol
{
    class func createVIPERModule() -> VIPERView
    {
        // Generating module components
        let view = VIPERWireFrame.mainStoryboard.instantiateViewController(withIdentifier: "VIPERView") as! VIPERView
        
        let presenter: VIPERPresenterProtocol & VIPERInteractorOutputProtocol = VIPERPresenter()
        
        let interactor: VIPERInteractorInputProtocol = VIPERInteractor()
        let APIDataManager: VIPERAPIDataManagerInputProtocol = VIPERAPIDataManager()
        let localDataManager: VIPERLocalDataManagerInputProtocol = VIPERLocalDataManager()
        let wireFrame: VIPERWireFrameProtocol = VIPERWireFrame()
        
        // Connecting
        view.presenter = presenter
        presenter.view = view
        presenter.wireFrame = wireFrame
        presenter.interactor = interactor
        interactor.presenter = presenter
        interactor.APIDataManager = APIDataManager
        interactor.localDatamanager = localDataManager
        
        return view
    }
    
    static var mainStoryboard: UIStoryboard {
        if UIDevice.current.userInterfaceIdiom == .phone {
            return UIStoryboard(name: "Main", bundle: nil)
        }else{
            return UIStoryboard(name: "Main", bundle: nil)
        }
    }
}
