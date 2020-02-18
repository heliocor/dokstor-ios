//
//  ViewController.swift
//  DKSDK
//
//  Created by Marc Flores on 04/10/2019.
//  Copyright © 2019 Heliocor. All rights reserved.
//

import UIKit
import DokstorSDK

class ViewController: UIViewController {
    
    @IBAction func didTapPassportNFC(_ sender: Any) {
        DokstorSDK.shared.nfcPassportCapture(onBoardListener)
    }
    
    @IBAction func didTapIdCardNFC(_ sender: Any) {
        DokstorSDK.shared.nfcIdCardCapture(onBoardListener)
    }
    
    @IBAction func didTapOnBoardProcess(_ sender: Any) {
        DokstorSDK.shared.startOnBoardProcess(onBoardListener)
    }
    
    @IBAction func passportCapture(_ sender: Any) {
        DokstorSDK.shared.passportCapture(onBoardListener)
    }
    
    @IBAction func idCardCapture(_ sender: Any) {
        DokstorSDK.shared.idCardCapture(onBoardListener)
    }
    
    @IBAction func dlCapture(_ sender: Any) {
        DokstorSDK.shared.drivingLicenceCapture(onBoardListener)
    }
    
    @IBAction func selfieCompare(_ sender: Any) {
        DokstorSDK.shared.selfieCompareCapture(onBoardListener, template: #imageLiteral(resourceName: "example_dl"))
    }
    
    @IBAction func addressCapture(_ sender: Any) {
        DokstorSDK.shared.personalAddressCapture(onBoardListener, name: "Angel", surname: "Marquez Hurtado")
    }

    //MARK : - Fileprivate
    
    let onBoardListener = OnBoardProcessBase({ passport, error in
        print(passport)
    }, onIDCardCaptured: { idCard, error in
        print(idCard)
    }, onSelfieCaptured: { selfie, error in
        print(selfie)
    }, onDrivingLicenceCaptured: { dl, error in
        print(dl)
    }, onDataCapturedResponse: { userData, error in
        print(userData)
    }, onPersonalAddressCaptured: { address, error in
        print(address)
    },onCompleted: { hresponse, error in
        print(hresponse)
    })
}
