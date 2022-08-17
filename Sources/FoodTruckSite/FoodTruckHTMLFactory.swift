//
//  File.swift
//  
//
//  Created by Leo Dion on 8/17/22.
//

import Publish
import Plot

public struct FoodTruckHTMLFactory : HTMLFactory {
  public func makeIndexHTML(for index: Publish.Index, context: Publish.PublishingContext<FoodTruckSite>) throws -> Plot.HTML {
    HTML {
      index.content.body.body
    }
  }
  
  public func makeSectionHTML(for section: Publish.Section<FoodTruckSite>, context: Publish.PublishingContext<FoodTruckSite>) throws -> Plot.HTML {
    HTML {
      section.content.body.body
    }
  }
  
  public func makeItemHTML(for item: Publish.Item<FoodTruckSite>, context: Publish.PublishingContext<FoodTruckSite>) throws -> Plot.HTML {
    HTML {
      item.content.body.body
    }
  }
  
  public func makePageHTML(for page: Publish.Page, context: Publish.PublishingContext<FoodTruckSite>) throws -> Plot.HTML {
    HTML {
      page.content.body.body
    }
  }
  
  public func makeTagListHTML(for page: Publish.TagListPage, context: Publish.PublishingContext<FoodTruckSite>) throws -> Plot.HTML? {
    return nil
  }
  
  public func makeTagDetailsHTML(for page: Publish.TagDetailsPage, context: Publish.PublishingContext<FoodTruckSite>) throws -> Plot.HTML? {
    return nil
  }
  
  public typealias Site = FoodTruckSite
  
  
}
