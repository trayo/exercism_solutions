import Foundation

class Gigasecond {
  var description: String
  
  init?(from: String) {
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss"
    
    let date = dateFormatter.date(from: from)
    
    let newDate = date?.addingTimeInterval(pow(10.0, 9.0))
    
    let result = dateFormatter.string(from: newDate!)
    
    self.description = result
  }
}
