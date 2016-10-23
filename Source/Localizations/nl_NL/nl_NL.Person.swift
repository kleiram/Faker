// nl_NL.Person.swift
//
// Copyright (c) 2014–2015 Apostle (http://apostle.nl)
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.

import Foundation

extension nl_NL {
    open class Person {
        open class Provider : Faker.Person.Provider {
            open func titles() -> [String] {
                return [ "mr.", "dr.", "ir.", "drs", "bacc.", "kand.", "dr.h.c.", "prof.", "ds.", "ing.", "bc." ]
            }
            
            override open func lastNames() -> [String] {
                return "de Jong,Jansen,de Vries,van de Berg,van den Berg,van der Berg,van Dijk,Bakker,Janssen,Visser,Smit,Meijer,Meyer,de Boer,Mulder,de Groot,Bos,Vos,Peters,Hendriks,van Leeuwen,Dekker,Brouwer,de Wit,Dijkstra,Smits,de Graaf,van der Meer,van der Linden,Kok,Jacobs,de Haan,Vermeulen,van den Heuvel,van de Veen,van der Veen,van den Broek,de Bruijn,de Bruyn,de Bruin,van der Heijden,van der Heyden,Schouten,van Beek,Willems,van Vliet,van de Ven,van der Ven,Hoekstra,Maas,Verhoeven,Koster,van Dam,van de Wal,van der Wal,Prins,Blom,Huisman,Peeters,de Jonge,Kuipers,van Veen,Post,Kuiper,Veenstra,Kramer,van de Brink,van den Brink,Scholten,van Wijk,Postma,Martens,Vink,de Ruiter,Timmermans,Groen,Gerritsen,Jonker,van Loon,Boer,van de Velde,van den Velde,van der Velde,van de Velden,van den Velden,van der Velden,Willemsen,Smeets,de Lange,de Vos,Bosch,van Dongen,Schipper,de Koning,van der Laan,Koning,Driessen,van Doorn,Hermans,Evers,van den Bosch,van der Meulen,Hofman,Bosman,Wolters,Sanders,van der Horst,Mol,Kuijpers,Molenaar,van de Pol,van den Pol,van der Pol,de Leeuw,Verbeek".split(",")
            }
            
            override open func maleNameFormats() -> [String] {
                return [
                    "\(Faker.Person.maleFirstName()) \(Faker.Person.lastName())",
                    "\(Faker.Person.maleFirstName()) \(Faker.Person.lastName())",
                    "\(Faker.Person.maleFirstName()) \(Faker.Person.lastName())",
                    "\(Faker.Person.maleTitle()) \(Faker.Person.maleFirstName()) \(Faker.Person.lastName())",
                ]
            }
            
            override open func femaleNameFormats() -> [String] {
                return [
                    "\(Faker.Person.femaleFirstName()) \(Faker.Person.lastName())",
                    "\(Faker.Person.femaleFirstName()) \(Faker.Person.lastName())",
                    "\(Faker.Person.femaleFirstName()) \(Faker.Person.lastName())",
                    "\(Faker.Person.femaleTitle()) \(Faker.Person.femaleFirstName()) \(Faker.Person.lastName())",
                ]
            }
            
            override open func maleTitles() -> [String] {
                return titles()
            }
            
            override open func maleFirstNames() -> [String] {
                return "Daan,Bram,Sem,Lucas,Milan,Levi,Luuk,Thijs,Jayden,Tim,Finn,Stijn,Thomas,Lars,Ruben,Jesse,Noah,Julian,Max,Liam,Mees,Sam,Sven,Gijs,Luca,Teun,Tijn,Siem,Mats,Jens,Benjamin,Adam,Ryan,Jan,Floris,David,Olivier,Cas,Tygo,Dylan,Ties,Tom,Pepijn,Daniël,Hugo,Thijmen,Dean,Boaz,Jasper,Nick,Willem,Roan,Dex,Niels,Guus,Stan,Koen,Mohamed,Joep,Johannes,Jurre,Pim,Niek,Robin,Bas,Rayan,Damian,Jelle,Noud,Pieter,Vince,Dani,Joris,Jason,Timo,Mick,Quinten,Joshua,Simon,Tobias,Kyan,Hidde,Mohammed,Jack,Quinn,Rens,Samuel,Alexander,Hendrik,Xavi,Joey,Fabian,Justin,Keano,Cornelis,Fedde,Casper,Morris,Mike,Nathan,Jacob,Mika,Owen,Abel,Emir,Sepp,Twan,Aiden,Jonathan,Muhammed,Job,Mason,Stef,Chris,Gerrit,Jesper,Lukas,Valentijn,Melle,Wessel,Jip,Luc,Rick,Sil,Loek,Dylano,Florian,Kevin,Jort,Julius,Daniel,Maarten,Matthijs,Jamie,Jelte,Tycho,Amir,Boris,Thijn,Sep,Wout,Sjoerd,Joël,Aron,Bart,James,Kai,Lorenzo,Raf,Lenn,Marijn,Sebastiaan,Senn,Jim,Brent,Rafael,Tijs,Imran,Nout,Thom,Aaron,Dirk,Oscar,Jay,Ravi,Ali,Sami,Kian,Wouter,Giovanni,Ian,Laurens,Leon,Milo,Kay,Alex,Amin,Jayson,Berat,Jules,Sander,Seth,Ben,Jonas,Jordy,Mathijs,Colin,Tijmen,Marinus,Wesley,Yusuf,Maurits,Bjorn,Bryan,Joost,Riley,Victor,Felix,Ibrahim,Luka,Bastiaan,Hamza,Mark,Arthur,Bradley,Dave,Rowan,Collin,Luke,Merijn,Vigo,Beau,Bilal,Jorn,Vincent,Matthias,Ayden,Maxim,Yassin,Dion,Jake,Kyano,Kick,Mustafa,Michael,Youssef,Elias,Naud,Senna,Brian,Jari,Mehmet,Micha,Stefan,Arie,Duuk,Zakaria,Ayoub,Faas,Olaf,Tristan,Mads,Berend,Mart,Sten,Ivan,Philip,Giel,Lex,Rik,Tyler".split(",")
            }
            
            override open func femaleTitles() -> [String] {
                return titles()
            }
            
            override open func femaleFirstNames() -> [String] {
                return "Emma,Sophie,Julia,Anna,Lisa,Isa,Eva,Saar,Lotte,Tess,Lynn,Fleur,Sara,Lieke,Noa,Fenna,Sarah,Mila,Sanne,Roos,Elin,Zoë,Evi,Maud,Jasmijn,Femke,Nina,Anne,Noor,Amy,Sofie,Olivia,Feline,Liv,Esmee,Nora,Iris,Lina,Luna,Naomi,Elise,Amber,Yara,Charlotte,Lana,Milou,Isabel,Isabella,Eline,Floor,Lara,Anouk,Fenne,Vera,Nikki,Loïs,Liz,Maria,Tessa,Jill,Laura,Puck,Sophia,Hannah,Evy,Lizzy,Fay,Veerle,Bente,Nienke,Linde,Romy,Senna,Isis,Bo,Sterre,Benthe,Lauren,Julie,Norah,Merel,Ilse,Marit,Nova,Rosalie,Lena,Fiene,Lise,Demi,Johanna,Suze,Vajèn,Ella,Mirthe,Lola,Indy,Emily,Kiki,Sofia,Isabelle,Myrthe,Yfke,Jade,Cato,Lize,Danique,Guusje,Elisa,Esmée,Elena,Rosa,Suus,Fien,Britt,Quinty,Robin,Hanna,Elisabeth,Silke,Pien,Amira,Elize,Faye,Hailey,Madelief,Aya,Louise,Meike,Elif,Jaylinn,Daphne,Lily,Liza,Juul,Lieve,Valerie,Josephine,Mara,Sam,Kate,Jolie,Phileine,Ise,Amélie,Cornelia,Dewi,Livia,Stella,Mia,Noortje,Ashley,Janne,Alicia,Ivy,Janna,Nynke,Kaylee,Lisanne,Azra,Maartje,Megan,Jet,Victoria,Kayleigh,Floortje,Chloë,Pleun,Alyssa,Jennifer,Mare,Renske,Aimée,Juliette,Kim,Fem,Mette,Dina,Tara,Michelle,Esther,Jenna,Lot,Elizabeth,Merle,Dana,Eliza,Karlijn,Bibi,Melissa,Yasmin,Annabel,Carlijn,Imke,Evie,Fabiënne,Linn,Zeynep,Kyra,Aylin,Zara,Lois,Zoey,Ceylin,Chloé,Joëlle,Joy,Noëlle,Féline,Yasmine,Evelien,Ize,Mirte,Ninthe,Ecrin,Kyara,Maya,Nisa,Leah,Maryam,Angelina,Catharina,Lindsey,Loes,Yinthe,Sienna,Adriana,Esila,Jente,Lizz,Lucy,Nadine,Selina,Fatima,Maaike,Aaliyah,Amina,Inaya,Selena,Frederique,Pippa,Puk,Sylvie,Annemijn,Helena,Jayda,Nadia,Amelia,Jinthe,Jolijn,Maja,Tirza".split(",")
            }
        }
    }
}
