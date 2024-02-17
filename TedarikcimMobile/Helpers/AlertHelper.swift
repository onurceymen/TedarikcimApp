//
//  AlertHelper.swift
//  TedarikcimMobile
//
//  Created by Onur Coskun on 17.02.2024.
//

import Foundation
import UIKit

public class AlertHelper
{
    static func fileNotFound(in viewController : UIViewController)
    {
        let alert = UIAlertController(title: "Hata", message: "Dosya bulunamadı.", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Tamam", style: .default, handler: nil))
        viewController.present(alert, animated: true, completion: nil)
    }
    
    
    /*
     let alert = UIAlertController(title: "Hata", message: "İşlem başarısız oldu.", preferredStyle: .alert)
     alert.addAction(UIAlertAction(title: "Tamam", style: .default, handler: nil))
     self.present(alert, animated: true, completion: nil)
     
     let alert = UIAlertController(title: "Hata", message: "Bağlantı hatası.", preferredStyle: .alert)
     alert.addAction(UIAlertAction(title: "Tamam", style: .default, handler: nil))
     self.present(alert, animated: true, completion: nil)
     
     let alert = UIAlertController(title: "Hata", message: "Kullanıcı doğrulaması başarısız.", preferredStyle: .alert)
     alert.addAction(UIAlertAction(title: "Tamam", style: .default, handler: nil))
     self.present(alert, animated: true, completion: nil)

     let alert = UIAlertController(title: "Hata", message: "Geçersiz giriş.", preferredStyle: .alert)
     alert.addAction(UIAlertAction(title: "Tamam", style: .default, handler: nil))
     self.present(alert, animated: true, completion: nil)
     
     let alert = UIAlertController(title: "Hata", message: "Geçersiz giriş.", preferredStyle: .alert)
     alert.addAction(UIAlertAction(title: "Tamam", style: .default, handler: nil))
     self.present(alert, animated: true, completion: nil)
     
     let alert = UIAlertController(title: "Uyarı", message: "Eksik bilgi.", preferredStyle: .alert)
     alert.addAction(UIAlertAction(title: "Tamam", style: .default, handler: nil))
     self.present(alert, animated: true, completion: nil)
     
     let alert = UIAlertController(title: "Uyarı", message: "İzin reddedildi.", preferredStyle: .alert)
     alert.addAction(UIAlertAction(title: "Tamam", style: .default, handler: nil))
     self.present(alert, animated: true, completion: nil)
     
     let alert = UIAlertController(title: "Uyarı", message: "Geçersiz veri.", preferredStyle: .alert)
     alert.addAction(UIAlertAction(title: "Tamam", style: .default, handler: nil))
     self.present(alert, animated: true, completion: nil)
     
     let alert = UIAlertController(title: "Uyarı", message: "Bağlantı zaman aşımına uğradı.", preferredStyle: .alert)
     alert.addAction(UIAlertAction(title: "Tamam", style: .default, handler: nil))
     self.present(alert, animated: true, completion: nil)
     
     let alert = UIAlertController(title: "Hata", message: "Bilinmeyen bir hata oluştu.", preferredStyle: .alert)
     alert.addAction(UIAlertAction(title: "Tamam", style: .default, handler: nil))
     self.present(alert, animated: true, completion: nil)

     */
    
    
    
    
    
}
