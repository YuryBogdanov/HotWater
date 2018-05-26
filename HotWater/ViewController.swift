//
//  ViewController.swift
//  HotWater
//
//  Created by Oleg Shupulin on 23.05.2018.
//  Copyright © 2018 Oleg Shupulin. All rights reserved.
//

import UIKit
import Alamofire
import SearchTextField
import FSCalendar

class ViewController: UIViewController {
    
    static let baseURL = "https://www.mos.ru/otvet-hotwater/suggest/"

    @IBOutlet weak var searchTextField: SearchTextField!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupTextField()
    }
    
//    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
//        //
//        //    }
//        //
//        //    func textField(_ textField: UITextField,
//        //                   shouldChangeCharactersIn range: NSRange,
//        //                   replacementString string: String) -> Bool {
//
//        guard
//            let text = textField.text,
//            let nsSearchText = searchText.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) else {
//                assertionFailure("encoding should be")
//                return true
//        }
//
//        let searchText = nsSearchText as String
//        let url = baseURL + searchText
//
//        Alamofire.request(url).responseHotWaters { [weak self] response in
//            guard
//                let strongSelf = self,
//                let hotWaters = response.result.value
//                else { return }
//
//            let adressSuggests = hotWaters.map { $0.address }
//            searchTextField.filterStrings(adressSuggests)
//        }
//
//        return true
//    }

    private func setupTextField() {
        searchTextField.startVisibleWithoutInteraction = true
        searchTextField.delegate = self
        searchTextField.placeholder = "Введите адресс дома"
//        // Set data source
//        let countries = localCountries()
//        countryTextField.filterStrings(countries)
    }
    
//    private func searchRequest(with adressString: String) {
//
//    }
}




// MARK: - UITextFieldDelegate

extension ViewController: UITextFieldDelegate {
    

}

