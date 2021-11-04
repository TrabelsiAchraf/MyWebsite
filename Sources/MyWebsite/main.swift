import Foundation
import Publish
import Plot

// This type acts as the configuration for your website.
struct MyWebsite: Website {
    enum SectionID: String, WebsiteSectionID {
        case home
        case resume
    }

    struct ItemMetadata: WebsiteItemMetadata {
        // Add any site-specific metadata that you want to use here.
    }

    // Update these properties to configure your website:
    var url = URL(string: "https://your-website-url.com")!
    var name = "Achraf Trabelsi"
    var description = "I am highly motivated, curious, with very good adaptability and a developed sense of relationship. I love anything relating to computers, programming and Tech in general. I’m on the pulse of the latest technology news. I am constantly scouring the Internet for the latest iOS news, apps, games, tips, tutorials, mobile devices and Apple Services."
    var language: Language { .english }
    var imagePath: Path? { nil }
}

// This will generate your website using the built-in Foundation theme:
try MyWebsite().publish(withTheme: .lacha)
