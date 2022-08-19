import Foundation
import Publish
import Plot

@main
public struct FoodTruckSite : Website {
  public let url: URL = URL(string: "https://foodtrucks.site")!
  public let name: String = "Food Truck"
  public let description: String = "Website dedicated to Food Trucks"
  public let language = Language.english
  public let imagePath : Path? = "images/logo.png"
  
  
  public enum SectionID : String, WebsiteSectionID {
    case events
    case donuts
    case trucks
  }
  
  public struct ItemMetadata : WebsiteItemMetadata {
    let id : Int?
    let dough : String?
    let glaze : String?
    let topping : String?
    let address: String?
    let latitude : String?
    let longitude: String?
    let city : String?
    let state : String?
    let postalCode : String?
    let cuisine : String?
  }
  
  public static func main() {
    try! FoodTruckSite().publish(using: [
      .addMarkdownFiles(),
      .copyResources(),
      .generateHTML(withTheme: .foundation, indentation: .spaces(2)),
    ])
  }
}
