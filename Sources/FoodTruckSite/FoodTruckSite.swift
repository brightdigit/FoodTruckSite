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
    case blog
  }
  
  public struct ItemMetadata : WebsiteItemMetadata {
    
  }
  
  public static func main() {
    try! FoodTruckSite().publish(using: [
      .copyResources()
    ])
  }
}
