//
//  Media.swift
//  Amir
//
//  Created by Map04 on 2021-04-06.
//

import Foundation
class Media {
    var name : String
    var image : String
    var publicationYear : Int
    var authorOrDirectorOrSinger : String
    var description :String
    var urlAddress : String
    
    init(name : String , image : String , publicationYear : Int , authorOrDirectorOrSinger : String , description :String , urlAddress : String){
        self.name = name
        self.image = image
        self.publicationYear = publicationYear
        self.authorOrDirectorOrSinger = authorOrDirectorOrSinger
        self.description = description
        self.urlAddress = urlAddress
    }
    
    static func generateMediaList() -> [Media]{[Media(name: " Alice in Wonderland", image: "Alice", publicationYear: 2010, authorOrDirectorOrSinger: "Tim Burton", description: " is a 2010 American live-action/animated dark fantasy adventure film", urlAddress: "https://en.wikipedia.org/wiki/Alice_in_Wonderland_(2010_film)"),
                                                Media(name: " Pulp Fiction", image: "pulp fiction", publicationYear: 1994, authorOrDirectorOrSinger: "Quentin Tarantino", description: "Pulp Fiction is a 1994 American neo-noir black comedy crime film", urlAddress: "https://en.wikipedia.org/wiki/Pulp_Fiction"),Media(name: " Reservoir Dogs", image: "Reservoir Dogs", publicationYear: 1992, authorOrDirectorOrSinger: "Quentin Tarantino", description: "Reservoir Dogs is a 1992 American crime film ", urlAddress: "https://en.wikipedia.org/wiki/Reservoir_Dogs"),
                                                Media(name: " Let the Right One In", image: "Let the Right One In", publicationYear: 2008, authorOrDirectorOrSinger: "Tomas Alfredson", description: " is a 2008 Swedish romantic horror film", urlAddress: "https://en.wikipedia.org/wiki/Let_the_Right_One_In_(film)"),
                                                Media(name: " The SpongeBob SquarePants Movie", image: "The SpongeBob SquarePants Movie", publicationYear: 2004, authorOrDirectorOrSinger: "Stephen Hillenburg", description: "is a 2004 American live-action/animated adventure comedy film", urlAddress: "is a 2004 American live-action/animated adventure comedy film"),
                                                Media(name: " In and Out of Love", image: "In and Out of Love", publicationYear: 2008, authorOrDirectorOrSinger: "Armin van Buuren", description: "The single has been performed live by Sharon and Armin during the Armin Only: Imagine shows", urlAddress: "https://en.wikipedia.org/wiki/In_and_Out_of_Love_(Armin_van_Buuren_song)"),
                                                Media(name: " Wake Me Up When September Ends", image: "Wake Me Up When September Ends", publicationYear: 2003, authorOrDirectorOrSinger: "Green Day", description: "is an acoustic ballad[1] by American rock band Green Day", urlAddress: "https://en.wikipedia.org/wiki/Wake_Me_Up_When_September_Ends"),
                                                Media(name: " When You're Gone", image: "When You're Gone", publicationYear: 2007, authorOrDirectorOrSinger: "Avril Lavigne", description: "is about being with someone you love, and you have to say goodbye", urlAddress: "https://en.wikipedia.org/wiki/When_You%27re_Gone_(Avril_Lavigne_song)"),
                                                Media(name: " Paradoxx", image: "Paradoxx", publicationYear: 1998, authorOrDirectorOrSinger: "666", description: "one of a kind music but an old one", urlAddress: "https://en.wikipedia.org/wiki/666_(band)"),
                                                Media(name: "3", image: "3", publicationYear: 2009, authorOrDirectorOrSinger: "Britney Spears", description: "3 is an uptempo electropop song that features a heavy bassline and synthesizers", urlAddress: "https://en.wikipedia.org/wiki/3_(Britney_Spears_song)"),
                                                Media(name: " The Metamorphosis", image: "The Metamorphosis", publicationYear: 1915, authorOrDirectorOrSinger: "Franz Kafka", description: " tells the story of salesman Gregor Samsa who wakes one morning to find himself inexplicably transformed into a huge insect", urlAddress: "https://en.wikipedia.org/wiki/The_Metamorphosis"),
                                                Media(name: " The Alchemist", image: "The Alchemist", publicationYear: 1988, authorOrDirectorOrSinger: " Paulo Coelho", description: "The Alchemist follows a young Andalusian shepherd in his journey to the pyramids of Egypt, after having a recurring dream of finding a treasure there.", urlAddress: "https://en.wikipedia.org/wiki/The_Alchemist_(novel)"),
                                                Media(name: " Harry Potter and the Prisoner of Azkaban", image: "Harry Potter and the Prisoner of Azkaban", publicationYear: 1999, authorOrDirectorOrSinger: "J.K.Rowling", description: "is a fantasy novel written by British author", urlAddress: "https://en.wikipedia.org/wiki/Harry_Potter_and_the_Prisoner_of_Azkaban"),
                                                Media(name: " Operay-e-Rastakhiz-e-Mehr-e-Yaran ", image: "Mirzadeh Eshghi", publicationYear: 1920, authorOrDirectorOrSinger: "Mirzadeh Eshghi", description: "one of his book", urlAddress: "https://en.wikipedia.org/wiki/Mirzadeh_Eshghi"),
                                                Media(name: " Poems Divan", image: "Poems Divan", publicationYear: 1920, authorOrDirectorOrSinger: "Iraj Mirza", description: "collection of his poets", urlAddress: "https://en.wikipedia.org/wiki/Iraj_Mirza")]}
}
