-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 02, 2020 at 07:57 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bookshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `bookID` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(20) NOT NULL,
  `imgSrc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `imgAlt` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `priceSite` int(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`bookID`, `name`, `description`, `price`, `imgSrc`, `imgAlt`, `priceSite`) VALUES
(1, 'Malavita', 'Roman koji je inspirisao Martina Skorsezea, Lika Besona i Roberta de Nira da snime najzabavniji film o Mafiji do sada!Možda čovek može napustiti Mafiju, ali Mafija nikada neće napustiti njega.Američka porodica se nastanjuje u Šolonu na Avru, u Normandiji. Sve je naizgled uobičajeno. Fred, otac, tvrdi da je istoričar koji priprema knjigu o iskrcavanju. Megi, majka, volontira u jednom dobrotvornom udruženju i briljantno sprema roštilj. Bel, ćerka, časno nosi svoje ime. I najzad, bez Vorena, sina, ništa ne može da se obavi i svima je potrebna njegova pomoć. A ne smemo zaboraviti ni veoma diskretnog psa po imenu Malavita. Sve u svemu, porodica poput drugih. Osim što porodica Blejk ni u kom slučaju nije onakva kakvom želi da se prikaže jer otac nije pisac već bivši šef njujorškog mafijaškog klana koga prate agenti FBI-ja.Život Blejkovih, pod stalnom pretnjom odmazde, pretvoren je u niz bežanja, laži i besmislenih situacija. Sada će Fred, Megi, Bel i Voren pokušati, svako na svoj način, da pronađu smisao svog postojanja u ovom nezanimljivom malom gradu. Sve do dana kada im Don Mimino, vođa pet porodica u Njujorku, neočekivano ulazi u trag... Jedno je sigurno: ako se Blejkovi dosele u vaš kraj, bežite glavom bez obzira.', 750, 'public/images/books/1.jpg', 'malavita', 700),
(2, 'Jedan hitac', 'Roman po kojem je snimljen svetski filmski hit Džek Ričer.„Sjajno, neukrotivo… nestvarno, čisto zlato. Ova knjiga vas prosto naelektriše… A čitav serijal od vas napravi zavisnika.“ New York TimesŠest hitaca. Petoro mrtvih. Teror je zavladao jednim provincijskim gradom. Ali policija je sve rešila u roku od nekoliko sati: sve je kristalno jasno i lako. Sve osim jednog. Optuženi izjavljuje: Uhvatili ste pogrešnog čoveka. A potom kaže: Dovedite mi Ričera.I zaista, bivši vojni istražitelj Džek Ričer dolazi. Kakav događaj iz prošlosti povezuje ovog očigledno psihopatu s bivšim vojnim policajcem koji sad luta zemljom? Ričer je uveren da nešto nije u redu – i kristalno jasan, lak slučaj puca i raspada se na komade.', 800, 'public/images/books/2.jpg', 'jedan hitac', 750),
(3, 'Divljaci', 'Knjiga godine po izboru Entertainment Weeklya, New York Timesa i Chichago Sun-Timesa.\r\nTriler koji ruši sva dosadašnja pravila i postavlja standarde za dvadeset prvi vek.\r\nBen – humanitarac i borac za zaštitu životne sredine i njegov drug Čon – bivši marinac i živa mašina za ubijanje, vode uspešan posao uzgajanja i prodaje hibridne marihuane bogatoj klijenteli. Njihovu sreću upotpunjuje O, opsesivna kupoholičarka i zajednička devojka.\r\nIdila traje sve dok meksički narkokartel, primoran da se širi, ne reši da preuzme svu trgovinu drogom u Kaliforniji. Ben i Čon su spremni da napuste igru, ali pod sopstvenim uslovima koji, naravno, nisu ono što im „nude“ ljudi iz kartela Baha.\r\nKada kartel bude oteo O da bi urazumeo momke potpaliće fitilj neočekivano razorne eksplozije.', 1000, 'public/images/books/3.jpg', 'divljaci', 850),
(4, 'Plamen na istoku', 'Godine 225. rimski Imperijum rastegnut je do pucanja, njegova vlast i moć dovode se u sumnju uzduž i popreko svih njegovih teritorija i duž svake njegove granice. No možda najsmrtonosnija pretnja vreba sa istoka, iz Persije, gde se zlokobno pomaljaju okupljene vojske sasanidskog carstva. Zabačena i odsečena utvrda Areta posmatra vojsku preko pustoline i iščekuje neizbežni napad. Jedan jedini čovek je poslat da pripremi odbranu ovog usamljenog grada – jedan jedini čovek da podupre ruševne zidove nekadašnjeg nesalomivog simbola rimske moći – čovek čije samo ime znači rat, Marko Klodije Balista. Potpuno sam, Balista je pozvan da okupi vojne snage i smogne hrabrosti da prvi nepokolebljivo stane pred najvećeg neprijatelja s kojim se Imperijum ikada suočio.    „Hari briljantno rekonstruiše život Starog sveta, a posebno njegovu vojnu tehnologiju, i uvija ga u snažnu priču čije su teme u više pogleda klasične.', 750, 'public/images/books/4.jpg', 'plamen', 700),
(5, 'Potraga za lasicom', 'Džefri Šejfer: čovek koji nikad ne gubi, spreman je da zaigra igru nad igrama s najvećim ulogom.\r\nAleks Kros: viši inspektor odeljenja za krvne delikte, rešen je da bez obzira na posledice raskrinka čoveka koga zove Lasica, prvoosumnjičenog za niz ubistava koja su mu zabranili da istražuje.\r\nDžejms Paterson je u Potrazi za Lasicom stvorio zastrašujućeg zlikovca kog će svaki čitalac videti u senkama kad ugasi svetlo, nežnu ljubavnu priču, zaplet koji bez prestanka izaziva vrhunsku napetost i uzbuđenje.', 900, 'public/images/books/5.jpg', 'lasica', 800),
(6, 'Četiri kiše', 'Prateći istoriju dve porodice u bezbrižno vreme raspusta i letovanja, Ljubica Arsić u svom novom romanu postupkom smenjivanja naratora prati periode formiranja svojih junaka, i istovremeno diskretno evocira jednu proteklu epohu i nestalu zemlju. Melanholično i duhovito, autorka dočarava sva uzbuđenja i radosti, često i nevesele ishode i mladalačke muke koji prate odrastanje Senke, Milice i Paška, u ono doba detinjstva i prvih ljubavi kada se bude nepoznate strasti, zanosi, opažanja sveta oko sebe i sebe u svetu.\r\n\r\nU romanu jedan glas pripada i Lenki Dunđerskoj, rano preminuloj lepotici u koju je Laza Kostić bio zaljubljen i kojoj je posvetio čuvenu pesmu Santa Maria della Salute. Njen devojački dnevnik, koji se našao u rukama jednog junaka, skladno i nenametljivo umetnut je u tkivo romana, dodatno potvrđujući istinu o neprolaznim čarima mladosti koje su u svim vremenima iste.\r\n\r\nSuvereno poznavanje svih psiholoških nijansi ženskih likova u romanu i na ovom primeru potvrđuje da se o „ženskom pismu“ može govoriti samo uslovno, kao o svojevrsnom konstruktu koji svojom pukom rodnom karakteristikom ne može zameniti autentično i vrhunsko književno delo, u kakvo bez ostatka spada „mediteranski“ roman Četiri kiše.', 630, 'public/images/books/6.jpg', 'četiri kiše', 600),
(7, 'Nož', 'Kultni roman o zločinu i praštanju, zabranjen pre 40 godina zbog „širenja nacionalne mržnje“.\r\nProgovarajući prvi put posle II svetskog rata bez ideoloških predznaka o zločinima četnika i muslimana i o paradoksima zajedničkog života pripadnika različitih nacija i vera u posleratnoj Jugoslaviji, Vuk Drašković izneće u svom romanu uzbudljivu priču o krizi identiteta, uz tezu, u vreme raspirivanja nacionalizama posle Titove smrti, da puko rođenje ne određuje čovekovu sudbinu i ne priprema ga za kasnija opredeljenja u životu, niti za pripadnost nekoj veri ili naciji, nego to zavisi od vaspitanja i okoline u kojoj se čovek formira.', 809, 'public/images/books/7.jpg', 'noz', 790),
(8, 'Svaštara', 'Pesme, crtice, odlomci, dokumenti\r\nŠTA SAM TO RADIO?\r\nProbijao sam led da bih mogao disati. Borio se protiv tuđe i svoje dosade. Pokušavao da se setim nečeg drugog. Izmišljao imena sopstvenim iskustvima i saznanjima. Igrao se, jer raditi ne volim. Bežao iz svog malog i siromašnog života. Udvarao se drugima. Grickao, bockao, kraduckao i živuckao.\r\nHteo sam da budem bolji pisac, ali nisam umeo.', 450, 'public/images/books/8.jpg', 'svastara', 430),
(9, 'Veliki pad', 'Veliki pad obuhvata jedan dan – od jutra do kasnih večernjih sati – u životu ostarelog glumca koji iz predgrađa metropole kreće u centar da mu predsednik države uruči prestižnu nagradu. Na tom putu sreće se sa beskućnicima i imigrantima, potom dolazi do napuštene pruge, gde ga policajci nakratko zaustavljaju zbog sumnje da je terorista. Ništa nije bolje ni kada kroči u samo srce grada u kojem su ljudi otuđeni i pod pogubnim uticajem savremene tehnologije.\r\nJunakova šetnja je delom hodočašće delom krstaški pohod ispunjen dubokim promišljanjem o svetu u kojem živimo.', 800, 'public/images/books/9.jpg', 'velikipad', 770),
(10, 'Čovek po imenu Uve', 'Upoznajte Uvea. On je džangrizalo – jedan od onih koji upiru prstom u ljude koji mu se ne dopadaju kao da su provalnici zatečeni pod njegovim prozorom. Svakog jutra Uve ide u inspekciju po naselju u kom živi. Premešta bicikle i proverava da li je đubre pravilno razvrstano – iako je već nekoliko godina prošlo otkako je razrešen dužnosti predsednika kućnog saveta. Ili otkako je „izvršen prevrat“, kako Uve govori o tome. Ljudi ga zovu „ogorčenim komšijom iz pakla“. Ali zar Uve mora da bude ogorčen samo zbog toga što ne šeta okolo sa osmehom zalepljenim na lice?', 1000, 'public/images/books/10.jpg', 'uve', 950),
(11, 'Svet po Garpu', 'Ovo je životopis T. S. Garpa – vanbračnog sina Dženi Filds – feministkinje koja je bila napredna za svoje vreme. Ovo je prikaz života i smrti čuvene majke i njenog zamalo čuvenog sina. Oni žive u svetu seksualnih ekstremnosti, pa čak i seksualnih ubistava. Ovo je roman pun „ludila i tuge“, a opet, mračni i nasilni događaji ove priče ne umanjuju osećaj katkad pomalo vulgarnog, a ponekad i robusnog humora.', 1300, 'public/images/books/11.jpg', 'garp', 1200),
(12, 'Lokijev ključ', 'Crvena Kraljica je postavila svoje figure na tablu...\r\nNakon mučne pustolovine i bezmalo pogibije, princa Džalana Kendeta surova zima primorala je da ostane daleko od raskoši svoje palate na jugu. A kako je Sever dom Džalanovog saputnika, ratnika Snorija ver Snagasona, i on je jednako željan da krenu što pre.\r\nJer viking je spreman da izazove sam Pakao kako bi vratio svoju ženu i decu u svet živih. Ima Lokijev ključ – sada još samo da pronađe prava vrata.\r\nDok svi čekaju da led raskravi svoje čeljusti, Mrtvi Kralj smera da se dočepa onoga što mu umalo nije palo šaka – ključa koji otvara sve na svetu – kako bi mrtvi mogli da se dignu iz grobova i konačno zavladaju. Ali niko ne bi smeo zaboraviti na Crvenu Kraljicu jer ona i dalje manipuliše kraljevima i pionima vodeći ih prema poslednjem činu koji priželjkuje...', 1500, 'public/images/books/12.jpg', 'loki', 1400),
(13, 'Bajka nad Bajkama', 'Epska fantastika prema motivima bajki i pesama na kojima su odrastale generacije.\r\nSenka je slepa, ali ima nemušti jezik i razume životinje. Progone je mračne sile, ali se, slučajnošću ili voljom bogova, oko nje okuplja i mala družina heroja s moćima koje prevazilaze ljudska ograničenja. Drevna mapa izvezena magičnim nitima krije tajne koje ovu devojčicu mogu dovesti do oružja potrebnog da se pobedi prastaro zlo, pre no što junaci budu nevoljno uvučeni u ratni vihor koji se neumitno nadvija.', 630, 'public/images/books/13.jpg', 'bajka', 600),
(14, 'Pustinjsko koplje', 'Nastavak romana Noć demona.\r\n„Piter V. Bret spada među moje omiljene pisce.“ Patrik Rotfus\r\nZa ljudski rod sunce je na zalasku. Noć sada pripada proždrljivim demonima, koji vrebaju sve malobrojnije stanovništvo, prinuđeno da se skriva iza napola zaboravljenih simbola moći. Legende govore o Izbavitelju: generalu koji je nekada davno ujedinio čitavo čovečanstvo i porazio demone. Je li je povratak Izbavitelja samo još jedan mit? Možda i nije.', 1300, 'public/images/books/14.jpg', 'koplje', 1200),
(15, 'Filozofija', 'Kratko, jasno, sveobuhvatno.\r\nAutor daje širok pregled mnogih oblasti filozofije i upućuje čitaoca u filozofiju izlaganjem konkretnih primera kroz analizu Platonovih, Hjumovih, Dekartovih, Darvinovih dela i tekstova budističkih i indijskih mislilaca. Podučava nas kako da čitamo i tumačimo filozofiju, a da ne pristanemo na to da samo ovladamo nekim opštim činjenicama. Razmatra filozofiju Istoka, evropsku tradiciju mišljenja, kao i smisao i značaj bavljenja filozofijom. Raspravlja o tome kako se filozofija koristi u interesu određenih grupa – sveštenstva, žena i političkih aktivista. U knjizi se dotiču važne teme iz oblasti etike, teorije saznanja i problemi sopstva i identiteta. Objašnjava se na koji način su različite oblasti filozofije povezane, te se istražuje i kontekst u kojem su se ljudi bavili i bave se filozofijom.', 500, 'public/images/books/15.jpg', 'filozofija', 480),
(16, 'Sreća', 'Sve što morate da znate o njoj i zašto nije najvažnija u životu.\r\nOčigledno je da nam teško polazi za rukom da jednostavno budemo srećni. Filozof i pisac bestselera Vilhelm Šmid govori o raznim vrstama sreće i o tome šta treba da uradimo da bismo im se približili. Pritom nam pokazuje kako duboko promišljanje o važnim životnim pitanjima može da nam pomogne u boljem savladavanju izazova svakodnevice. Za nas nije najvažnija puka sreća, nego pre svega naš odnos prema životu, umeće da prihvatimo i uspone i padove i naučimo da umom i čulima pronađemo smisao u svim našim iskustvima.', 500, 'public/images/books/16.jpg', 'sreca', 490),
(17, 'Ipak se okreće', 'Svako je nekada čuo ili pročitao ove rečenice. Ali u kakvom su istorijskom kontekstu izrečene? I ko ih je izgovorio?\r\nOva knjiga vas vodi na jedno drugačije putovanje kroz svetsku istoriju. Na osnovu 80 poznatih citata iz perioda koji obuhvata 2600 godina, ona priča o ključnim istorijskim trenucima i oživljava pojedine epohe od antike do naših dana. Šta je za Rimsko carstvo značila kocka koju je bacio Cezar, šta je za reformaciju značila Luterova izreka, šta su Kantove reči govorile o prosvećenosti ili Kenedijeve o hladnom ratu...', 600, 'public/images/books/17.jpg', 'okrece', 590),
(18, 'Seobe', 'Beskrajan, plavi krug. U njemu, zvezda.\r\nNegde mora biti lakšeg života, vedrine događaja, što se slivaju kao čisti i hladni, prijatni, penušavi slapovi. Odseliti se treba zato, otići nekuda, smiriti se negde, na nečem čistom, bistrom, glatkom kao što je površina dubokih, gorskih jezera. Živeti po svojoj volji, bez ove strašne zbrke, idući za svojim životom, za koji se beše rodio. Idući nečem vanrednom, što je, kao i nebo, osećao da sve pokriva.', 450, 'public/images/books/18.jpg', 'seobe', 440),
(19, 'Despot i žrtva', 'Nagrade „Meša Selimović“ i „Zlatni bestseler“ i nagrada Narodne biblioteke Srbije za najčitaniju knjigu.\r\nSmešten u vreme vladavine despota Đurđa Brankovića i njegove žene Jerine, u burno doba zidanja smederevske tvrđave i osmanskog osvajanja Balkana, Despot i žrtva je istovremeno istorijski roman o zidanju Smedereva i alegorija o tvrđavi koja odoleva nadmoćnim osvajačima.', 720, 'public/images/books/19.jpg', 'despot', 700),
(20, 'Deobe', 'Jedno od najznačajnijih dela srpske književnosti posle Drugog svetskog rata, Ćosićeve Deobe su izazvale veliku pažnju i čitalaca i kritike zbog svoje tematskog i formalnog iskoraka u odnosu na tadašnje književne tokove. Naizgled istorijska epopeja o ravnogorskom pokretu u Srbiji, roman je zapravo metafora o podelama u istoriji i tradiciji srpskog naroda, o sudaru revolucije i zločina, nacionalnog mita i južnoslovenskih ideala, partizana i četnika, seljačkog i građanskog... Osim tematskog preokreta u dotadašnjoj književnosti socijalističkog realizma, Deobe su se izdvojile i osobenom kompozicijom, razgranatim unutrašnjim monologom, višeglasjem kao govorom društvenih masa u ulozi glavnog junaka, interpolacijom dokumentarnog materijala, stilskom raznovrsnošću i leksičkim bogatstvom. Ovim romanom Ćosić je 1961. godine postao dobitnik druge Ninove nagrade.', 1800, 'public/images/books/20.jpg', 'deobe', 1750),
(21, 'Nečista krv', 'Predvodnik epohe moderne srpske proze i psihološkog romana.\r\nU priči o stradanju čuvene vranjanske lepotice Sofke, prvi put u našoj književnosti, spoljašnji svet se uspostavlja kao suptilni odraz čulne uznemirenosti, intimnih doživljaja, slutnji i podsvesnih zbivanja jedne žene – izuzetne koliko lepotom toliko i snažnom samosvešću. Prvi put žensko i muško telo, erotske žudnje i seksualna htenja dobijaju prvorazredni književni značaj, a likovi žestokog temperamenta, orijentalno egzotični, određeni arhaičnim jezikom i kulturom, rastrzani između svojih nagona i društveno nametnutog postojanja, postaju tragične univerzalne figure u kojima prepoznajemo večne protivrečnosti postojanja.', 450, 'public/images/books/21.jpg', 'necista', 440),
(22, 'Proces', 'Jozef K., perspektivni prokurista jedne velike banke, uhapšen je na svoj 30. rođendan, rano ujutro, čim je otvorio oči. Optužba nije poznata, baš kao ni to pred kojim se sudom vodi postupak i kakav će biti njegov tok. Jozefu K. saopštavaju da sud ne želi da remeti njegov uobičajeni način života, te da se on, u skladu s tim, slobodno može vratiti svakodnevnim aktivnostima. Međutim, K. se narednih dana i meseci sve više zapliće u nevidljivu mrežu svog procesa i nedokučivog suda koji ga je pokrenuo. Korak po korak, Jozef K. saznaje da „sve pripada sudu“.', 700, 'public/images/books/22.jpg', 'proces', 680),
(23, 'Blago cara Radovana', 'Svi ljudi znaju da ima u životu još uvek jedno zakopano blago za svakog od njih. Svi ljudi kopaju: svi ljudi od akcije, od poleta, od sile, od vere u život i u cilj, i od vere u neverovatno i u nemogućno. Svi traže i vape za carem tog večnog nespokojstva i večnog traganja. Svet bi nestao da nema tog cara, i oslepio bi da ne sija u pomrčini njegovo naslućeno blago...', 720, 'public/images/books/23.jpg', 'radovan', 700),
(24, 'Andjeosko drvo', 'Očaravajuća priča o porodičnim tajnama i zaboravljenoj prošlosti\r\nProšlo je trideset godina otkad je Greta otišla iz Marčmont Hola, velelepne kuće u brdima ruralnog Monmautšira. Ali sada se uoči Božića vraća na poziv svog starog prijatelja Dejvida Marčmonta. Zbog posledica tragične nesreće koja joj je izbrisala iz sećanje dve decenije života, ona i ne sluti kakve su u prošlosti bile njene veze sa tom kućom. A onda, šetajući zimskim predelom, slučajno naiđe na grob u šumi, sa izbledelim natpisom koji joj govori da je tu sahranjen jedan dečak…', 1200, 'public/images/books/24.jpg', 'drvo', 1100),
(25, 'Zov kivija', 'Početak XX veka. Glorija Martin, praunuka Gvinajre Makenzi – junakinje romana U zemlji belog oblaka –  provela je idilično detinjstvo na Kivord stejšnu, porodičnoj farmi ovaca. Kada su joj roditelji javili da je došlo vreme da postane „dama“ i pohađa internat u dalekoj Engleskoj, ona je prinuđena da napusti sve što voli, pa i svog zaštitnika Džeka Makenzija. Glorija nikako ne uspeva da se prilagodi strogom životu u britanskom internatu i obuzima je neutešan osećaj samoće. Kada shvati da roditelji ne nameravaju da je vrate na Novi Zeland, ona uzima sudbinu u svoje ruke i kreće na pustolovinu koja će joj zauvek promeniti život.', 1700, 'public/images/books/25.jpg', 'kivija', 1650),
(26, 'Harfa za Eli', 'Upoznajte Eli: Ona je savršeno srećna u svom domu i sa svojim mužem vodi miran život. Ili bar misli da je dovoljno srećna. I zato se iskreno iznenadi kada je privuče neobični stranac koji će joj dati nesvakidašnji poklon – i otvoriti joj novi pogled na svet.\r\nUpoznajte Dena: On misli da mu je samo je potrebno da ima dovoljno mesta i vremena da pravi harfe. Ali nikako ne očekuje da Eli – u čarapama boje trešnje – uskovitla njegov život, unoseći gomilu iznenađenja i promena u njegovu uredno organizovanu svakodnevicu.', 900, 'public/images/books/26.jpg', 'harfa', 850),
(27, 'Ne nauditi', 'Kako se oseća čovek kada drži nečiji život u svojim rukama, kada skalpelom zaseče tamo gde se stvaraju misli, osećanja, gde se nalaze razum i svest? Kako da živite sa posledicama operacije koja je nekome trebalo da spasi život, a sve ide naopako?\r\nSa izuzetnim saosećanjem i iskrenošću vodeći britanski neurohirurg Henri Marš otkriva radost zbog uspeha, duboko emotivne trijumfe, zastrašujuće katastrofe, gorko žaljenje i trenutke crnog humora koji karakterišu život neurohirurga. Ne nauditi pruža nezaboravan uvid u bezbrojne ljudske drame koje se odvijaju u odnosu lekar – pacijent. Pre svega, to je lekcija o potrebi za nadom kada se suočavamo sa najtežim odlukama u životu', 800, 'public/images/books/27.jpg', 'nauditi', 780),
(28, 'Tajna uspešne dece', 'Zbog čega pojedina deca postižu uspeh, a druga doživljavaju neuspeh?\r\nSvaku priču o detinjstvu i uspehu uglavnom dovodimo u vezu s inteligencijom: uspevaju ona deca koja imaju dobar rezultat na testovima, od prijemnog za vrtić do testa SAT.\r\nAli u knjizi Tajna uspešne dece Pol Taf pokazuje da su za uspeh mnogo bitniji kvaliteti koji se odnose na karakter: istrajnost, radoznalost, savesnost, optimizam i samokontrola.', 700, 'public/images/books/28.jpg', 'tajna', 690),
(29, 'Jungova mapa duše', '„Jungova mapa duše iznedrila se iz kurseva koje sam godinama držao na Institutu K. G. Jung u Čikagu. Za mene je bio izazov da dam pregled najvažnijih aspekata Jungove teorije psihe, i to bez pojednostavljivanja, ali i bez dodatnog usložnjavanja. Knjiga je namenjena početnicima, da ih uvede u analitičku psihologiju, kao i onima koji su sa njom već upoznati, ali nemaju jasnu sliku. Danas se ova knjiga naširoko koristi kao priručnik. Nadam se da je ljudi mogu čitati i samo čistog zadovoljstva radi.', 850, 'public/images/books/29.jpg', 'jung', 840),
(30, 'Tamna reka', 'U Putniku, Džon Dvanaest Jastrebova predstavio je čitaocima jedan surov svet inspirisan savremenom tehnologijom koja nadgleda naše živote. Izloženo neprekidnom nadzoru „Ogromne mašine“, usavršene računarske mreže kojom upravlja grupa nemilosrdnih, po imenu Bratstvo, društvo je uglavnom nesvesno sopstvenog zatočeništva. Gejbrijel i Majkl Korigan, braća koja su odgajana „izvan Mreže“, nedavno su spoznali da su Putnici, potomci nestalih pripadnika vekovima stare praotačke loze proroka, sposobnih da se otiskuju u različite predele svesti i podučavaju ljude da se opiru kontroli. Vlast, međutim, različito utiče na braću. Na samom kraju Putnika, Gejbrijel okleva pod teretom odgovornosti. Majkl koristi tu priliku – i pridružuje se neprijatelju.\r\nRadnja Tamne reke otpočinje u gradu Njujorku, jednom zaprepašćujućom vešću. Gejbrijelov otac, koji je nestao pre mnogo godina, po svemu sudeći je još živ, uhvaćen u zamku negde u Evropi. Gejbrijel i njegova harlekinska zaštitnica Maja odlučuju da odmah pobegnu iz Njujorka i pronađu davno izgubljenog Putnika. Istovremeno, Majkl izdaje naredbu Bratstvu – grupi nemilosrdnih koji love Gejbrijela – da započnu sa sveobuhvatnom potragom. Gejbrijel žudi da pronađe svog oca i zaštiti ga; Majkl pak ima za cilj da uništi čoveka čije postojanje preti da ugrozi njegovu tek stečenu moć. Potera kreće od podzemnih tunela Njujorka i Londona, preko ruševina skrivenih ispod temelja Rima i Berlina, pa sve do udaljenog dela Afrike za koji kažu da u sebi čuva jedno od najvećih blaga istorije. Kako se priča približava svom jezivom kraju, Maja mora da odluči hoće li sve staviti na kocku ne bi li spasla Gejbrijela.\r\nČudesan povratak među mesta i ljude koji su tako bogato oslikani u Putniku, Tamna reka je prepuna neizvesnosti koja će vas prikovati za stolicu, i prožeta vizijom sveta u kojem nada i sloboda tek što nisu potpuno iščezle.', 890, 'public/images/books/30.jpg', '', 790),
(31, 'Osinje gnezdo', 'Da li su mošti Svetog Save zaista spaljene na Vračaru?\r\n\r\nMit o lomači na Vračaru traje već četiri veka, kult svetitelja još i duže. Radovi na izgradnji Hrama Svetog Save uveliko se privode kraju. I šta sad?! Zamisli da se pojavi nešto što bi sve to obesmislilo. I šta bi na to rekla obična pastva?! Vekovima nam pričate jedno, a sad nešto posve drugo. Šta je istina? I čega još sve ima lažnog u vašim propovedima? Bilo bi nezgodno, zar ne?\r\nArheolog Jovan Gligorijević je poginuo u saobraćajnoj nesreći. Pošto je bio na tragu nečeg epohalnog, njegov brat Goran i bivša devojka Vesna misle da je u pitanju ubistvo. Potraga za istinom vodiće ih do zaprepašćujućih otkrića i opasnih susreta, a dovešće ih i do aktera manje poznatog toka istorije... Da li se može tvrditi da nijedan patrijarh SPC u prošlom veku nije umro prirodnom smrću? Zašto vekovima postoje kantulovci, tajno bratstvo unutar SPC?\r\nIzuzetnom erudicijom i širokim potezima, uz veštu naraciju i mnoštvo likova, Vlada Arsić stvara jedinstveni triler, čija srž preispituje mit o moštima Svetog Save i postavlja mnoga pitanja u vezi sa našom sudbinom.', 800, 'public/images/books/31.jpg', 'osinje gnezdo', 700),
(32, 'Provincijalac', 'I onda, kad najzad ščepate to za čim ste jurili celoga zivota, opet niste srećni! Vaša prošlost, vaše detinjstvo, vaša draga provincija, na kraju krajeva, vući će vas i provlačiti iz dana u dan sve neodoljivije, pa ćete ostatak života protratiti na to da pronalazite preživele, proslavljate godišnjice mature, ili da, kao duhovi, obilazite solitere i samoposluge tražeći mesto na kome je nekada stajala vaša kuća!\r\nNiko N. Herceg, uspešni tridesetsedmogodišnji televizijski reporter, zaronio je sedmog avgusta 1974. godine u blizini ostrva Saplun, u potrazi za potonulim brodom o kojem je snimao emisiju, a izronio istog dana 1947. godine na drugom mestu, na naizgled nepoznatoj, jadranskoj plaži. U susretu sa samim sobom kao desetogodišnjim dečakom, Niko postaje svedok svog detinjstva, života u Sarajevu, školskih dana u gimnaziji, sopstvene prve ljubavi... Onoliko koliko su Foliranti priča o Kaporovim studentskim danima kasnih pedesetih u Beogradu, toliko je Provincijalac knjiga koja evocira sećanja na detinjstvo u Sarajevu, gde je autor proveo prve godine svog života.\r\nProvincijalac je roman o uspehu i porazu, o zlu i dobroti, o večnosti i smrti, ali i o strasti sa kojom gazimo kroz život.', 700, 'public/images/books/32.jpg', 'provincijalac', 650),
(33, 'Komo', 'Ljudi su i inače, stalno i oduvek, napuštali ovu zemlju. Ja sam otišao samo na mesec dana… Nismo bili od onih koji su imali novca za putovanja, i zato smo pili do duboko u noć.\r\n„Iz stranice u stranicu ove izuzetne kontemplativne proze pripovedač osobenim senzibilitetom uvlači čitaoca u jedinstvenu atmosferu svog boravka na jezeru Komo u podnožju Alpa. Prekrasan roman, intimna hronika jednog nepokajanog ljubitelja kapljice koji nalazi reči da to iskaže.“ Le Démocrate vernonnais\r\n„Nesklon masivnim pripovedačkim eksperimentima koliko i razmetanju figurama, Valjarević uspeva da svoj stil oneobiči do one mere u kojoj on postaje prepoznatljiv, različit, autentičan, i – iskren… Junak Koma dokazuje da se i pored boravka u velikom svetu, koji mu namenjuje ulogu javnog pisca, može sačuvati intima koja ga vodi ili u prirodu, ili u podnožje, u selo, među lokalne meštane, odnosno ka slici kao načinu alternativne, nejezičke komunikacije.“ Slobodan Vladušić\r\n„U svojim minimalističkim, a istodobno lirskim prozama Srđan Valjarević nemilosrdan je prema sebi, a obziran i dobronamjeran spram drugih i svijeta. Njegove knjige autentično su pismo, na granici dnevničkog i autofikcionalnog, promišljane kao u cinéma vérité stilu, ispisane razuđenom rečenicom, gdje se naoko jednostavnim dokumentiranjem običnosti stvara moćna literatura.“ Fenomeni', 850, 'public/images/books/33.jpg', 'komo', 800),
(34, 'Pertle', '„Nije sigurno da li Starnone stoji iza pseudonima Elene Ferante, ali jeste da Pertle nadilaze njene romane.“ Guardian\r\n\r\n„Ako si zaboravio, poštovani gospodine, podsetiću te: ja sam tvoja žena.“ Ovako počinje Vandino pismo mužu koji je otišao od kuće, prepustivši je buri nemoćnog besa i pitanjima bez odgovora.\r\n\r\nVenčali su se mladi, bili su nezavisni, ali se onda svet oko njih promenio. Porodični život je postao opterećenje.\r\n\r\nZato je on sada u Rimu, zaljubljen u ljupku neznanku s kojom su dani uvek veseli, a ona je ostala s decom u Napulju da sagledava njihov sve hladniji odnos.\r\n\r\nŠta smo spremni da žrtvujemo da se ne bismo osećali kao da smo u klopci? I šta gubimo kad odlučimo da se vratimo? Jer ništa nije radikalnije od napuštanja porodice i ništa nije čvršće od nevidljivih spona koje vezuju ljude. Ponekad je dovoljan neki gotovo beznačajan postupak da ono što smo pokušali da zaboravimo ponovo ispliva na površinu.\r\n\r\nDomeniko Starnone nam poklanja dirljivu i vrlo snažnu priču o bekstvu, povratku i svim promašajima, onim koji nam deluju neprebrodivo i onim koji nas prate celog života.\r\n\r\n„Sjajna i oštra poput slomljenog kristala, emocijama nabijena priča o ljubavi, porodici i posledicama koje snosimo kada pod pritiskom životne rutine olako donesemo pogrešne odluke.“ Guardian', 600, 'public/images/books/34.jpg', 'pertle', 550),
(35, 'Druga strana', 'Druga strana Alfreda Kubina smatra se jednim od prvih romana u istoriji svetske književnosti koji su uveli distopijsku viziju sveta. Alfred Kubin, koga još nazivaju „Kafkom pre Kafke“, svojim opisom imaginarne Zemlje snova u koju je smeštena radnja romana oštro je kritikovao Austrougarsku monarhiju i gotovo predvideo Prvi svetski rat.\r\n\r\nObjavljen 1909. sa autorovim ilustracijama, koje ćete naći u ovom izdanju, roman Druga strana je uticao kako na književnost nemačkog nadrealizma, kojoj je Kubin prethodio, tako i na umetnike okupljene oko Plavog jahača, čijem krugu je i autor pripadao.\r\n \r\n***\r\n \r\nEdicija „Feniks“ je nastala da bi savremenoj publici učinila dostupnim dela novootkrivenih klasika svetske književnosti kao i zaboravljena dela već priznatih pisaca. Čitaoci će imati priliku da se prvi put upoznaju sa nekim od najvećih dometa svetske književnosti i uživaju u čarima prvoklasne literature.', 800, 'public/images/books/35.jpg', 'druga strana', 730),
(36, 'Soba čuda', 'Neočekivan, dirljiv, zabavan i pomalo sulud pokušaj majke da probudi sina iz kome tako što ostvaruje njegove snove.\r\n\r\nLuj ima dvanaest godina. Dok tog jutra pokušava da kaže Telmi, svojoj majci, kako se prvi put zaljubio, primeti da ona misli na nešto drugo, najverovatnije na posao. Ljut i razočaran, prelazi ulicu jureći na skejtbordu. Kamion naleće na njega u punoj brzini.\r\n\r\nPrognoza je mračna. Ako za četiri nedelje ne bude nikakvog poboljšanja, Luju će isključiti veštačka pluća. Kad se vrati kući iz bolnice, očajna Telma pronalazi beležnicu ispod sinovljevog dušeka. U njoj je spisak svih njegovih „čuda“, to jest iskustava koja bi želeo da doživi.\r\n\r\nTelma donosi odluku: ostvariće umesto njega ta „čuda“, jedno po jedno. Ali nije tako lako ostvariti snove jednog tinejdžera...\r\n\r\nRoman u koji su se izdavači širom sveta zaljubili na prvi pogled i koji je stigao u dvadeset zemalja pre nego što je objavljen u Francuskoj.\r\n\r\n„Otkud ovoliko oduševljenje? Zato što je priča odlična, a rezultat univerzalan, razgaljuje i budi emocije.“ Elle.fr\r\n\r\n„Knjiga koja spaja generacije, roman o adolescenciji, dečjim snovima, razbijanju roditeljskih iluzija, potrebi da se uživa u sadašnjem trenutku.“ Télé 7 jours\r\n\r\n„Dirljiva knjiga koja će vam uliti mnogo nade.“ France 2\r\n\r\n„Ova knjiga je čudesna!“ Sud-Ouest\r\n\r\n„Himna ljubavi i oda životu. Zabavna, tragikomična priča koja će vas razgaliti!“ Carrefour Savoirs\r\n\r\n„Pravi mali dragulj.“ Femme Actuelle', 700, 'public/images/books/36.jpg', 'soba', 650),
(38, 'Crno krilo', 'Kapetan Galharou se pomirio s tim da će do kraja života juriti dezertere, izbegavati stvorenja koja vrebaju u Jadu, slušati tužno zavijanje rascepljenog neba i pijančiti dok se ne obeznani. Međutim, tetovaža vrane na njegovoj ruci oživljava ga i šalje na opasan zadatak. Jedna Tkalja fozgenske svetlosti otkrila je nedoslednosti u Redu eterskih inženjera zbog kojih je budućnost Dometa ugrožena. Samo ona može da protumači drevne formule što kriju tajnu jedinog oružja koje može uništiti Duboke kraljeve. Dodžarsko kraljevstvo se ponovo diglo na noge i horde osakaćenih ratnika spremaju napad na valengradske zidine...\r\n\r\nRoman Crno krilo Eda Makdonalda jeste mračna fantazija o odbrojanim danima jednog naroda. Ljudi se udružuju s vračevima, bore protiv čarobnjaka, kao i protiv izdajnika u sopstvenim redovima. Neobična stvorenja tame im povremeno pomažu, ali ta pomoć ima visoku cenu. Uprkos tome, glavni junak pokušava da se iskupi za davne greške iako je svestan da je verovatno prekasno za sve. Vrana širi crna krila već na prvoj stranici i uvlači čitaoca u nestvaran svet vradžbina, borbi i pohlepe, ali i izuzetne lepote, tananosti i hrabrosti, svet kojem je nemoguće odoleti.\r\n\r\n„Ed Makdonald je napisao mračan, sirov, spektakularan roman.“ Faith Hunter\r\n\r\n„Originalno, prepuno akcije i povremeno neverovatno smešno.“ Morning Star\r\n\r\n„Veoma upečatljiv prvi roman, čitaoce će oduševiti ovaj maštovit svet i odlična karakterizacija likova.“ SFF World', 1100, 'public/images/books/37.jpg', 'crno krilo', 990),
(39, 'Junaci', 'Ljudi pričaju da je Crni Dau pobio više ljudi nego zima i da se na presto Severa popeo uz brdo od lobanja. Kralj Saveza, poznat kao ljubomoran sused, neće ga mirno posmatrati kako se penje još više. Naređenja su izdata i vojske sporo gaze kroz severnjačko blato. Hiljade ljudi se kreće, iz mnogih pravaca, ka zaboravljenom krugu od kamenova, na bezvrednom brdu, u beznačajnoj dolini, a svi sa sobom nose mnogo oštrog oružja.\r\n\r\nBremer dan Gorst, osramoćeni majstor mačevalac, zakleo se da će na bojnom polju sprati ljagu sa svog imena. Opsednut je iskupljenjem i ozbiljno navučen na nasilje, tako da uopšte ne haje koliko će se krvi pritom proliti. Pa makar bila i njegova.\r\n\r\nKraljevića Kaldera čast ne zanima, a još ga manje zanima da zbog nje pogine. On želi samo moć, i izgovoriće svaku laž, upotrebiće svaki trik i izdaće svakog prijatelja samo da je se domogne. I samo da ne mora sam za nju da se bori.\r\n\r\nKarnden Grlo, poslednji častan čovek na Severu, posle života provedenog u vojevanju nema ništa sem nateklog kolena i tankih živaca. Jedva da ga je uopšte briga ko će pobediti, on samo želi da se ponese časno. Hoće li, međutim, uopšte moći da odredi šta je časno a šta nije u svetu koji gori svuda oko njega?\r\n\r\nTokom tri krvava dana bitke odlučiće se sudbina čitavog Severa. Međutim, pošto na obe strane vladaju spletke, glupost, surevnjivost i ljubomora, verovatno neće prevagnuti ni hrabriji a ni jači...', 1600, 'public/images/books/38.jpg', 'junaci', 1500),
(40, 'Skitalac', 'Svi Skitaočevi nagoni vrištali su na njega da ne prihvati posao od Kaima Okrutnog, čoveka koji je koštao života čitave narode. No Skitalac ih je prenebregao. Ubio je koga je trebalo da ubije. Još dok je odlazio po zlato, znao je da ga je Kaim izdao.\r\nSada su Mračno bratstvo i kerovi haosa progonili njega, a Kaimova vojska zaratila je s Drenajem, rešena da ubije svakog muškarca, ženu i dete. Drenajske vojnike na kraju je čekao neizbežan poraz; uskoro će zavladati haos.\r\nTada je neobičan starac saopštio Skitaocu kako postoji jedan jedini način da se ishod rata preokrene: sam Skitalac mora da donese legendarni bronzani oklop iz skrovišta u dalekim zemljama kojima hode seni. Biće progonjen. Svakako ne može uspeti. No starac mu je naložio da ipak pokuša – naložio mu je to u ime svog sina, kralja, koga je usmrtio jedan plaćeni ubica...\r\nSkitalac nipošto nije ličio na junaka – jer bio je izdajnik, krvnik, kraljeubica...', 900, 'public/images/books/39.jpg', 'skitalac', 850),
(41, 'Kapija filozofa', 'Mnoga klasična filozofska dela, na primer Kantova Kritika čistog uma ili Ničeova knjiga Tako je govorio Zaratustra, spadaju u opšteljudsku kulturnu baštinu i ispunjavaju police biblioteka širom sveta, a ipak ih mnogi nikada nisu pročitali.\r\n\r\nFilozof Robert Cimer prihvatio se nimalo lakog zadatka da nam ta dela „protumači“ kako bi svima pružio priliku da ih razumeju. On kratkim prikazima šesnaest ključnih dela istorije filozofije, počev od Platonove Države pa do Teorije pravednosti Džona Rolsa, pomaže čitaocu da zakorači u te misaone tvorevine. Cimer nam objašnjava suštinske ideje izložene u svakom od tih dela, opisuje kako su nastala, kao i njihovo mesto i ulogu u okviru filozofske tradicije, i sve to povezuje sa životom i mišljenjem samog pisca. Zahvaljujući tome, ovo je obrazovno i spoznajno, ali i zabavno filozofsko putovanje!\r\n\r\nTeške knjige u lakom pakovanju.\r\n\r\nKratak pregled šesnaest ključnih dela istorije filozofije:\r\n\r\nPlaton: Država | Avgustin: Ispovesti | Makjaveli: Vladalac | Montenj: Eseji | Dekart: Rasprava o metodi | Paskal: Misli | Lok: Dve rasprave o vladi | Kant: Kritika čistog uma | Šopenhauer: Svet kao volja i predstava | Kjerkegor: Ili–ili | Marks: Kapital | Niče: Tako je govorio Zaratustra | Vitgenštajn: Tractatus logico-philosophicus | Hajdeger: Bitak i vreme | Poper: Otvoreno društvo i njegovi neprijatelji | Rols: Teorija pravednosti.', 1000, 'public/images/books/40.jpg', 'kapija filozofa', 950),
(42, 'Promeni svet!', 'Ratovi su se vratili. Glad i beda su čak i u Evropi ponovo deo svakodnevice. Prvi put u svojoj istoriji svet raspolaže resursima koji mogu da poraze glad, epidemije i tiraniju. Pa ipak, borba za raspoloživa dobra nečovečno se nastavlja, svirepije nego ikada.\r\n\r\nŽan Cigler, jedan od najznačajnijih svetskih sociologa koji već decenijama osuđuje nepravdu i ugnjetavanje, u ovoj knjizi postavlja suštinsko pitanje: zašto čovek u zapadnom potrošačkom društvu ne uspeva da zbaci lance koji ga sputavaju da slobodno misli i dela?\r\n\r\nSvetski poredak u kojem živimo je nečovečan. Jedan procenat najbogatijih ljudi danas poseduje isto onoliko imovine koliko i svi ostali stanovnici Zemlje. Cigler nas poziva da promenimo svet i doprinesemo stvaranju socijalnog poretka koji se ne zasniva na tiraniji i izrabljivanju.\r\n', 900, 'public/images/books/41.jpg', 'promeni svet', 880),
(43, 'Radikalnost ljubavi', 'Horvatova Radikalnost ljubavi polazi od teze da revolucija i ljubav imaju nešto zajedničko: kao što nije dovoljno okupirati trg ili postaviti barikadu, tako nije dovoljno ni samo flertovati ili često menjati partnere. Kako bismo spoznali „radikalnost ljubavi“, potrebno je nešto više. Biti veran ideji revolucije ili ljubavi znači pre svega izgraditi novi svet, a kroz izgradnju novog sveta otvara se i mogućnost za izgradnju nas samih. I obrnuto: tek ako sebe izgradimo kao drugačije i bolje ljude, možemo graditi drugačiji i bolji svet, i u revoluciji, i u ljubavi.\r\n\r\nOsvrćući se na seksualnu emancipaciju u vreme Oktobarske revolucije i kasniju represiju, na Če Gevarinu dilemu između ljubavi i revolucionarne požrtvovanosti, te na period ’68 (od komuna do terorističkih organizacija) – Srećko Horvat nam pruža mogući odgovor na pitanje zašto su se najradikalniji revolucionari, poput Lenjina i Čea, plašili radikalnosti ljubavi.', 600, 'public/images/books/42.jpg', 'radikalnost ljubavi', 560),
(44, 'Sablje i utopije', 'Čini mi se da je moj odnos prema Peruu više preljubnički nego bračni: dakle, prožet ljubomorom, strašću i besom. Svesno se borim protiv svih vrsta „nacionalizama“, nečeg što mi se čini jednom od velikih mana ljudskog roda koja je služila kao alibi za najgore krivotvorenje.\r\n\r\nMario Vargas Ljosa je jedan od najboljih poznavalaca latinoameričke kulture i politike. Svojim intelektualnim i političkim zalaganjem celog života se trudio da tu stvarnost promeni, učini je boljom.\r\n\r\nNo njegovi stavovi nisu uvek bili isti. Kako je Vargas Ljosa došao do toga da brani liberalna politička načela? Kakav je njegov stav prema latinoameričkoj stvarnosti? Koje opasnosti i nade nazire za svoj kontinent? Kakav su oblik poprimile njegove ideje i njegov angažman? Izbor ogleda u ovoj knjizi nastoji da odgovori na ova pitanja. Osim što odražavaju autorov intelektualni put, u njima se razmatraju sva velika zbivanja koja su obeležila noviju istoriju Latinske Amerike.\r\n\r\nTematski složeni ogledi ilustruju bitke koje je Vargas Ljosa vodio za slobodu, od njegovog otvorenog suprotstavljanja diktaturama, njegovih nada a potom razočaranja u revolucije, njegove kritike nacionalizma, populizma i korupcije, do otkrića liberalnih ideja, njegove bezrezervne odbrane demokratskog ustrojstva i strasti prema latinskoameričkoj književnosti i umetnosti.', 1500, 'public/images/books/43.jpg', 'sablje i utopije', 1450),
(45, 'Crna ruka', 'Istinita priča o najsmrtonosnijem tajnom udruženju u istoriji Amerike.\r\n\r\nUzbudljiva priča o kriminalu, predrasudama, žrtvovanju i časti u Americi na početku XX veka.\r\n\r\nU leto 1903. talas podmuklih zločina izazvao je paniku prvo u Njujorku, pa zatim u čitavoj Americi. Decu italijanskih doseljenika otimaju, a brojne žrtve nemilosrdno ubijaju. Bombe dižu u vazduh stambene zgrade. Sudije, senatori, bogati industrijalci, svi dobijaju pisma u kojima im se preti strašnom smrću. Jedini znak raspoznavanja počinilaca bio je simbol Crne ruke.\r\n\r\nIzmeđu američke javnosti i bezakonja Crne ruke stajao je Džozef Petrosino. Čovek koga su zvali italijanski Šerlok Holms bio je beskompromisni i talentovani detektiv i majstor prerušavanja. Kako su zločini postajali sve bizarniji, Petrosino i njegov odred, sačinjen isključivo od Italijana, pokušavali su da razbiju to tajno kriminalno društvo pre nego što mržnja prema svim doseljenicima ne eskalira u katastrofu.', 1000, 'public/images/books/44.jpg', 'crna ruka', 900),
(46, 'Putevi svile', 'Polako ali sigurno smer kretanja sveta se menja; Zemljina kugla proteklih pet stoleća okretala se oko svoje ose ka Zapadu, a sada se okreće ka Istoku... Vekovima se za slavom i bogatstvom tragalo na Zapadu – u Novom svetu dveju Amerika. Danas ljude željne novca i pustolovina mami Istok. Nekadašnja glavna pozornica sveta koja se prostire od Bliskog istoka preko srednje Azije do duboko u Kinu i Indiju ponovo se uzdiže, ovladava svetskom politikom, privredom i kulturom – i oblikuje savremeni svet. A upravo tu je nastala sama civilizacija, upravo tu su se najveće svetske religije rodile i ukorenile.\r\n\r\nPutevi svile nisu bili egzotični niz puteva, nego mreže koje su povezivale kontinente i okeane. Po toj mreži putovale su ideje, roba, bolesti i smrt. Tu su se carstva osvajala – i gubila. Frankopanovo delo, plod dugogodišnjih istraživanja, temeljno menja sliku koju imamo o istoriji sveta.', 1600, 'public/images/books/45.jpg', 'putevi svile', 1550),
(47, 'Autobiografija', '„Što sam više upoznavao život, i što sam bliže upoznavao ljude, sve sam se slađe smejao.“\r\n\r\nRetki su naši književnici koji su u formi autobiografije pisali o vlastitom životu, a samo je najveći srpski komediograf u svom životopisu tretirao sebe kao junaka komedije.\r\n\r\nČinjenice o rođenju, školskim danima, ženidbi i ulasku u svet odraslih postaju građa za urnebesne zaplete, neočekivane obrte, komediju situacije, ispunjenu razdraganim, dobronamernim humorom. Stranice posvećene školovanju, po kojima se Autobiografija najviše pamti, obavezna su lektira za sve generacije. Uživljavajući se u ulogu deteta, u svojevrsnom katalogu školskih predmeta, kroz vic, anegdotu i parodiju, Nušić pruža satiričnu istoriju nesklada između dečjeg poimanja sveta i krutosti škole, koja učenika ne sprema za neminovni sudar sa stvarnim svetom. U očuđenom doživljaju takve stvarnosti prepoznavaće se buduće generacije, sve do naših dana.\r\n\r\nA nesvakidašnja autobiografija ima i takav epilog. U intervjuu koji vode novinar i pokojni Branislav Nušić, pisac crnohumorno zaključuje, ispostaviće se i ne bez razloga: „A kada se bude čulo da sam umro, vi ćete videti, svet mi to neće verovati. Ja sam toliko puta terao šalu sa ovim svetom da će, verovatno, i tom prilikom mnogi misliti da je to samo neka nova šala.“', 500, 'public/images/books/46.jpg', 'autobiografija', 470),
(48, 'Hajduci', '– Mogu li ja da odem u hajduke pa da otud, iz planine, napišem pismo načelniku: „Ako mi profesori poprave beleške, predaću se vlasti, a ako neće da mi poprave, ostaću i dalje hajduk.“ – Budalo jedna – reći će Čeda – pa kad si hajduk, šta će ti dobre beleške?\r\n\r\nSvakog četvrtka i nedelje grupica dečaka okuplja se pored hrastovog stabla na obali Dunava. Tu uživaju u dokolici, igraju se loptom, maštaju i izmišljaju različite priče umesto da rade domaće zadatke. Iz odbojnosti prema školi i obavezama rodiće se ideja da pobegnu od kuće i odmetnu se u hajduke. Ova nestašna avantura, puna zgoda i nezgoda, opametiće mlade hajduke i nasmejati čitaoce do suza.\r\n\r\nHajduci su jedan od prvih humorističkih romana za decu u srpskoj književnosti, a i dan-danas spadaju u najčitanija i najpopularnija dela kako ovog autora tako i domaće književnosti za decu.', 500, 'public/images/books/47.jpg', 'hajduci', 450),
(49, 'Alef', 'Videh Alef, sa svih strana, videh u Alefu Zemlju, i u Zemlji opet Alef i u Alefu Zemlju...\r\n\r\nDvojica hrišćanskih teologa vode žučnu raspravu o Svetom pismu. Vojnik tek na bojnom polju shvata ko je on zapravo. Mlada žena priprema perfidnu osvetu navodnom ubici svog oca. Muškarac u jednoj gostionici u Buenos Ajresu čeka na svog ubicu. Nacista se – bez trunčice griže savesti i nagoveštaja pokajanja – priseća vremena kada je bio čuvar u koncentracionom logoru.\r\n\r\nIako su priče u Alefu ispunjene filozofskim zagonetkama i gotovo natprirodnim neobičnostima, one nam dočaravaju izgrađenije ljudske karaktere, možda i više nego ostale Borhesove pripovedačke knjige. Čak se ni pitanja besmrtnosti, večnosti, vremena i beskonačnosti ne gube u čistoj apstrakciji, već zadiru u zaplet i sintaksu ispitujući granice jezika i izrecivosti.', 600, 'public/images/books/48.jpg', 'alef', 570),
(50, 'Kaktus', 'Čak i najbodljikaviji kaktus procveta…\r\nPun neočekivanih obrta i junaka koji će vam prirasti srcu, roman Kaktus je dirljiv i snažan podsetnik da postoje stvari koje se ne mogu objasniti samo logikom.\r\n\r\nZa Suzan Grin emocije samo komplikuju stvar i ne uklapaju se u njen savršeno uređen život. Ona ima stan idealan za jednu osobu, posao koji odgovara njenoj racionalnoj prirodi i „dogovor“ sa jednim muškarcem koji je ispunjava na intimnom planu. No kad iznenada ostane bez majke i sazna da će i sama postati majka, Suzan se ostvari njena najgora noćna mora – gubi kontrolu nad svojim životom. A kad sazna da je njena majka testamentom ostavila mnogo više njenom lenjom bratu nego njoj, Suzanin već poljuljani svet počinje da se ruši. Kako joj se porođaj bliži, a porodični problemi dosežu tačku usijanja, Suzan će podršku naći tamo gde je najmanje očekuje.\r\n', 1100, 'public/images/books/49.jpg', 'kaktus', 1090),
(51, 'Prava Valerija', 'Elizabet Benavent je svoj serijal prvobitno bila sama izdala na Amazonu, a kako je priča o Valeriji i njenim drugaricama ubrzo postala fenomen koji je iz dana u dan osvajao hiljade čitalaca, romani su se ubrzo našli i u izdanju brojnih evropskih izdavača. Sada kada je pred vama i poslednji nastavak obradujte sebe i proverite u čemu je tajna uspeha Sage o Valeriji.\r\n\r\nZaljubićeš se!\r\n\r\nValerija je s Brunom, ali zašto ne prestaje da misli na Viktora?\r\n\r\nMogu li Valerija, koja je rešila da ne pati, i iskreni Viktor biti prijatelji?\r\n\r\nValerija okleva, ćuti, uzdiše, oseća...\r\n\r\nValerija ne zna da će joj se život promeniti na predstojećoj proslavi njenog rođendana...\r\n\r\nA nije svesna ni toga da Lola, Nerea i Karmen tragaju za srećnim završecima svojih priča. Ili možda jeste?\r\n', 1200, 'public/images/books/50.jpg', 'prava valerija', 1150),
(52, 'Peščani sat', 'Koliko ti mesto može promeniti život?\r\n\r\n2014. Razborita Nora uvek je prihvatala svoje uspehe kao nešto prirodno, ali život odjednom počinje da joj se ruši. Izmučena anksioznošću i košmarima, shvata da je privlače dugačke plaže Tenbija, mestašceta u kom je bila samo jednom. Zajedno s jednom meštankom iznajmljuje predivnu vilu i polako počinje da se navikava na novi život. Ali Tenbi skriva tajnu i Nora će uskoro otkriti da ovaj gradić na obali mora ima moć da zaleči čak i najbolnije uspomene.\r\n\r\n1950. Od svoje jedanaeste godine Kloi dolazi u Tenbi svakog leta. Boravi kod rodbine i provodi duge, idilične dane na plaži. Svaka godina joj je ista, sve dok ne upozna zanosnog starijeg momka koji će je u trenu oboriti s nogu. Ali u noći prvog ljubavnog sastanka Kloi će doći do saznanja čije će je posledice možda i zauvek progoniti.\r\n\r\nPeščani sat je dirljiv roman o novim počecima i izmirenju, o pronalaženju ljubavi čak i onda kad se čini da je prekasno, o isceliteljskim moćima čarobnog gradića kraj mora.', 1200, 'public/images/books/51.jpg', 'peščani sat', 1100),
(53, 'Škola za špijune', 'Da li ste dovoljno bistri da budete agent KGB-a?\r\n\r\nNajbolji način da razvijete svoje mentalne sposobnosti.\r\n\r\nKada ljudi pomisle na reč špijun, najčešće zamišljaju različite visokotehnološke naprave, laserske olovke, brza kola, pištolje s prigušivačima i razorne eksplozije – ali najvažniji deo opreme koju ima svaki agent na ovom svetu je njegov mozak. Pamćenje je od vitalnog značaja za rad obaveštajaca. Potreba za potpunom tajnošću često ove operativce sprečava da bilo šta snimaju ili zapisuju, tako da oni moraju da se oslone isključivo na svoj mozak da bi zadržali i reprodukovali neverovatnu količinu informacija sa apsolutnom preciznošću.\r\n\r\nU ovoj knjizi ćemo vas naučiti kako da unapredite svoje pamćenje i izoštrite um pomoću niza vežbi razvijenih tokom mnogo godina, koje su korišćene za obuku najsposobnijih špijuna na svetu. Razvićete veštine testirane u najekstremnijim okruženjima i otključati sve šifre koje omogućuju punu sposobnost rada vašeg mozga.\r\n\r\nPrateći jednu obaveštajnu operaciju KGB-a, kroz mnoštvo zagonetki i logičkih zamki skrivenih u pravim dokumentima, konkretne zadatke svakog špijuna i vežbe uma koje koriste obaveštajne službe saznajte kako da unapredite svoje mentalne sposobnosti – moć zapažanja, snagu koncentracije, brzinu zaključivanja, snalaženje u prostoru i vrhunske operacije filtriranja i sistematizacije memorije.', 780, 'public/images/books/52.jpg', 'škola za špijune', 760);
INSERT INTO `book` (`bookID`, `name`, `description`, `price`, `imgSrc`, `imgAlt`, `priceSite`) VALUES
(54, 'Osnažite mozak', 'Kako da uvežbate, povratite i održite umne sposobnosti za 40 dana\r\n\r\nPrimetna razlika za samo 40 dana\r\n\r\nTvrdnja da „koristimo samo deset procenata mozga“ je zabluda, istina je da mozak mora da obrađuje mnogo informacija iz brojnih izvora te nije ni čudo što u stresnim trenucima osećamo mentalni zamor i anksioznost. Radeći vežbe i rešavajući zadatke iz ove knjige, naučićete kako da poboljšate moždane funkcije, saznaćete kako da ojačate umne sposobnosti dok se mozak „odmara“, kako da podstaknete sopstvenu kreativnost, obogatite svoj rečnik radi lakšeg razmišljanja, te kako da savladate reakcije mozga koje vam odmažu – i još mnogo toga.\r\n\r\nVremenski ograničene vežbe pružaju vam uvid u to kako napredujete oslanjajući se na tehnike iz knjige.\r\n\r\nKnjiga sadrži posebne mozgalice i ciljane zadatke za sveobuhvatni trening.\r\n\r\nBrojne efikasne tehnike razmišljanja će vam pomoći da povratite i održite umne sposobnosti.\r\n \r\nGaret Mur je autor međunarodnih bestselera iz oblasti vežbanja pamćenja i enigmatike za decu i odrasle, među kojima je i Od tačke do tačke – Ekstremni izazovi za bojenje. Njegove knjige su prodate u više miliona primeraka i prevedene su na više od trideset jezika.', 600, 'public/images/books/53.jpg', 'osnažite mozak', 500),
(55, 'Izlečenje', 'Knjiga godine New York Posta, Sunday Timesa, Economista.Naučne činjenice o moći duha nad telom.„Kako mozak može da nam pomogne da izlečimo svoje telo.“ Wall Street JournalIako prihvatamo da stres i teskoba mogu loše da deluju na naše zdravlje, ideja o „mislima koje leče“ povezuje se isključivo sa guruima novog doba i duhovnim isceliteljima. Poslednjih godina su naučnici iz različitih oblasti otkrili da naše misli, emocije i ubeđenja mogu olakšati bol, pomoći da rane zarastu, ublažiti infekcije i bolesti srca, pa čak i usporiti razvijanje simptoma side ili nekih vrsta raka.Autorka nas zato upoznaje s lekarima, pacijentima i istraživačima iz ovog novog sveta medicine. Oslanjajući se na najnovija dostignuća, Marčantova istražuje široko polje mogućnosti našeg duha da leči, naglašavajući i ograničenja koja postoje, ali i objašnjava kako to možemo da primenimo i u svom životu. Sa izrazitom jasnoćom i posvećenošću, Izlečenje ukazuje na mogući sistem medicine koja nas neće posmatrati samo kao tela koja treba lečiti već kao kompletna ljudska bića.', 1000, 'public/images/books/54.jpg', 'izlečenje', 950);

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cartID` int(11) NOT NULL,
  `amount` int(50) NOT NULL DEFAULT 0,
  `addedDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `userID` int(11) NOT NULL,
  `paymentID` int(11) DEFAULT NULL,
  `cbID` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`cartID`, `amount`, `addedDate`, `userID`, `paymentID`, `cbID`) VALUES
(540, 790, '2020-03-15 11:49:31', 55, NULL, 7),
(539, 790, '2020-03-15 11:49:31', 55, NULL, 7),
(534, 750, '2020-03-15 11:49:07', 55, NULL, 2);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `categoryID` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`categoryID`, `name`) VALUES
(1, 'Akcioni'),
(2, 'Domaći autori'),
(3, 'Drama'),
(4, 'Epska fantastika'),
(5, 'Filozofija'),
(6, 'Istorijski'),
(7, 'Klasici'),
(8, 'Ljubavni'),
(9, 'Psihologija');

-- --------------------------------------------------------

--
-- Table structure for table `category_book`
--

CREATE TABLE `category_book` (
  `cbID` int(11) NOT NULL,
  `categoryID` int(11) NOT NULL,
  `bookID` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_book`
--

INSERT INTO `category_book` (`cbID`, `categoryID`, `bookID`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 1, 5),
(6, 2, 6),
(7, 2, 7),
(8, 2, 8),
(9, 3, 9),
(10, 3, 10),
(11, 3, 11),
(12, 4, 12),
(13, 4, 13),
(14, 4, 14),
(15, 5, 15),
(16, 5, 16),
(17, 5, 17),
(18, 6, 18),
(19, 6, 19),
(20, 6, 20),
(21, 7, 21),
(22, 7, 22),
(23, 7, 23),
(24, 8, 24),
(25, 8, 25),
(26, 8, 26),
(27, 9, 27),
(28, 9, 28),
(29, 9, 29),
(30, 1, 30),
(32, 2, 31),
(33, 2, 32),
(34, 2, 33),
(35, 3, 34),
(36, 3, 35),
(37, 3, 36),
(38, 4, 38),
(39, 4, 39),
(40, 4, 40),
(41, 5, 41),
(42, 5, 42),
(43, 5, 43),
(44, 6, 44),
(45, 6, 45),
(46, 6, 46),
(47, 7, 47),
(48, 7, 48),
(49, 7, 49),
(50, 8, 50),
(51, 8, 51),
(52, 8, 52),
(53, 9, 53),
(54, 9, 54),
(55, 9, 55);

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `contactID` int(11) NOT NULL,
  `fullName` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`contactID`, `fullName`, `email`, `content`) VALUES
(77, 'Jovana Jovic', 'ledusrb@gmail.com', 'radi'),
(93, 'Jovana Jovic', 'jovana@gmail.com', 'kontakt'),
(94, 'Ana Anic', 'ana@gmail.com', 'kontakt test');

-- --------------------------------------------------------

--
-- Table structure for table `gender`
--

CREATE TABLE `gender` (
  `genderID` int(11) NOT NULL,
  `gender` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gender`
--

INSERT INTO `gender` (`genderID`, `gender`) VALUES
(1, 'Muški'),
(2, 'Ženski');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `menuID` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `href` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`menuID`, `name`, `href`) VALUES
(1, 'Naslovna', 'home'),
(2, 'O autoru', 'about'),
(3, 'Kontakt', 'contact');

-- --------------------------------------------------------

--
-- Table structure for table `paymenttype`
--

CREATE TABLE `paymenttype` (
  `paymentID` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `paymenttype`
--

INSERT INTO `paymenttype` (`paymentID`, `name`) VALUES
(2, 'Keš'),
(1, 'Kreditna kartica');

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `roleID` int(11) NOT NULL,
  `role` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`roleID`, `role`) VALUES
(1, 'Administrator'),
(2, 'User');

-- --------------------------------------------------------

--
-- Table structure for table `socialnetwork`
--

CREATE TABLE `socialnetwork` (
  `socialID` int(11) NOT NULL,
  `link` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `socialnetwork`
--

INSERT INTO `socialnetwork` (`socialID`, `link`, `icon`) VALUES
(1, 'https://www.facebook.com', 'fab fa-facebook-square'),
(2, 'https://www.youtube.com', 'fab fa-youtube'),
(3, 'https://www.instagram.com', 'fab fa-instagram'),
(4, 'https://www.twitter.com', 'fab fa-twitter'),
(5, 'https://www.pinterest.com', 'fab fa-pinterest-square');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `userID` int(11) NOT NULL,
  `fullName` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(35) COLLATE utf8mb4_unicode_ci NOT NULL,
  `registerDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `active` int(11) DEFAULT 0,
  `token` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roleID` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userID`, `fullName`, `email`, `password`, `registerDate`, `active`, `token`, `roleID`) VALUES
(55, 'Ana Anic', 'ana@gmail.com', '5116f16d3399fcb6571f571d79f35f41', '2020-02-11 20:15:19', 1, '675917d54e8c02a4942b5ecf82807fb387cd6ec96d58c982f15ea36c76f4e87c7c52940c5486e26f9fa5a698a951c4dd90a7e53fd48c58d9d7d3e786', 2),
(56, 'Ivana Ivanic', 'ika@gmail.com', '8f38430f9d60b28e01fd3248dc025b2d', '2020-02-16 23:26:28', 1, 'c65e1a35b12f446724b84fce33a0c2564f89282205eed7fb16be8c17c931429b01ebaeaa82e71200d1ff93bdcd89fa05b3042a9f8e2225e81939e232', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`bookID`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cartID`),
  ADD KEY `paymentID` (`paymentID`),
  ADD KEY `cbID` (`cbID`),
  ADD KEY `userID` (`userID`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`categoryID`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `category_book`
--
ALTER TABLE `category_book`
  ADD PRIMARY KEY (`cbID`),
  ADD KEY `categoryID` (`categoryID`),
  ADD KEY `bookID` (`bookID`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`contactID`),
  ADD KEY `email` (`email`) USING BTREE;

--
-- Indexes for table `gender`
--
ALTER TABLE `gender`
  ADD PRIMARY KEY (`genderID`),
  ADD KEY `gender` (`gender`) USING BTREE;

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`menuID`);

--
-- Indexes for table `paymenttype`
--
ALTER TABLE `paymenttype`
  ADD PRIMARY KEY (`paymentID`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`roleID`),
  ADD UNIQUE KEY `role` (`role`),
  ADD KEY `role_2` (`role`);

--
-- Indexes for table `socialnetwork`
--
ALTER TABLE `socialnetwork`
  ADD PRIMARY KEY (`socialID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userID`),
  ADD UNIQUE KEY `email` (`email`) USING BTREE,
  ADD KEY `roleID` (`roleID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `bookID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6058;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cartID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=559;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `categoryID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `category_book`
--
ALTER TABLE `category_book`
  MODIFY `cbID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `contactID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT for table `gender`
--
ALTER TABLE `gender`
  MODIFY `genderID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `menuID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `paymenttype`
--
ALTER TABLE `paymenttype`
  MODIFY `paymentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `roleID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `socialnetwork`
--
ALTER TABLE `socialnetwork`
  MODIFY `socialID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `userID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
