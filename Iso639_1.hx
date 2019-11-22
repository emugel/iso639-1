import haxe.ds.Option;

/**
 * ISO 639-1 defines Two-letter Codes standard for the Representation of Names of Languages 
 * It has been confirmed in 2019.
 * This should be straightforward enough.
 */
class Iso639_1 {
    // data are cached there when data(), so no time is taken 
    // initializing a static var if unneeded.
    static var _data : Array<{ code:String, rtl:Bool, name:String, nativeName:String }>;

    public static function exists(code:String) : Bool {
        for (o in data()) { if (o.code == code) return true; }
        return false; 
    }

    public static function isRightToLeft(code:String) : Option<Bool> {
        for (o in data()) { if (o.code == code) return Some(o.rtl); }
        return None; 
    }

    public static function name(code:String) : Option<String> {
        for (o in data()) { if (o.code == code) return Some(o.name); }
        return None; 
    }

    public static function nativeName(code:String) : Option<String> {
        for (o in data()) { if (o.code == code) return Some(o.nativeName); }
        return None;
    }

    public static function data() : Array<{ code:String, rtl:Bool, name:String, nativeName:String }> 
        return _data != null ? _data : _data = [
            { code: "ab", rtl: false, name: "Abkhaz", nativeName:"аҧсуа" },
            { code: "aa", rtl: false, name: "Afar", nativeName:"Afaraf" },
            { code: "af", rtl: false, name: "Afrikaans", nativeName:"Afrikaans" },
            { code: "ak", rtl: false, name: "Akan", nativeName:"Akan" },
            { code: "sq", rtl: false, name: "Albanian", nativeName:"Shqip" },
            { code: "am", rtl: false, name: "Amharic", nativeName:"አማርኛ" },
            { code: "ar", rtl: true,  name: "Arabic", nativeName: "العربية" },
            { code: "an", rtl: false, name: "Aragonese", nativeName:"Aragonés" },
            { code: "hy", rtl: false, name: "Armenian", nativeName:"Հայերեն" },
            { code: "as", rtl: false, name: "Assamese", nativeName:"অসমীয়া" },
            { code: "av", rtl: false, name: "Avaric", nativeName:"авар мацӀ, магӀарул мацӀ" },
            { code: "ae", rtl: false, name: "Avestan", nativeName:"avesta" },
            { code: "ay", rtl: false, name: "Aymara", nativeName:"aymar aru" },
            { code: "az", rtl: false, name: "Azerbaijani", nativeName:"azərbaycan dili" },
            { code: "bm", rtl: false, name: "Bambara", nativeName:"bamanankan" },
            { code: "ba", rtl: false, name: "Bashkir", nativeName:"башҡорт теле" },
            { code: "eu", rtl: false, name: "Basque", nativeName:"euskara,euskera" },
            { code: "be", rtl: false, name: "Belarusian", nativeName:"Беларуская" },
            { code: "bn", rtl: false, name: "Bengali", nativeName:"বাংলা" },
            { code: "bh", rtl: false, name: "Bihari", nativeName:"भोजपुरी" },
            { code: "bi", rtl: false, name: "Bislama", nativeName:"Bislama" },
            { code: "bs", rtl: false, name: "Bosnian", nativeName:"bosanski jezik" },
            { code: "br", rtl: false, name: "Breton", nativeName:"brezhoneg" },
            { code: "bg", rtl: false, name: "Bulgarian", nativeName:"български език" },
            { code: "my", rtl: false, name: "Burmese", nativeName:"ဗမာစာ" },
            { code: "ca", rtl: false, name: "Catalan,Valencian", nativeName:"Català" },
            { code: "ch", rtl: false, name: "Chamorro", nativeName:"Chamoru" },
            { code: "ce", rtl: false, name: "Chechen", nativeName:"нохчийн мотт" },
            { code: "ny", rtl: false, name: "Chichewa,Chewa,Nyanja", nativeName:"chiCheŵa, chinyanja" },
            { code: "zh", rtl: false, name: "Chinese", nativeName:"中文,汉语,漢語" },
            { code: "cv", rtl: false, name: "Chuvash", nativeName:"чӑваш чӗлхи" },
            { code: "kw", rtl: false, name: "Cornish", nativeName:"Kernewek" },
            { code: "co", rtl: false, name: "Corsican", nativeName:"corsu" },
            { code: "cr", rtl: false, name: "Cree", nativeName:"ᓀᐦᐃᔭᐍᐏᐣ" },
            { code: "hr", rtl: false, name: "Croatian", nativeName:"hrvatski" },
            { code: "cs", rtl: false, name: "Czech", nativeName:"česky, čeština" },
            { code: "da", rtl: false, name: "Danish", nativeName:"dansk" },
            { code: "dv", rtl: true,  name: "Divehi,Dhivehi,Maldivian", nativeName:"ދިވެހި" },
            { code: "nl", rtl: false, name: "Dutch", nativeName:"Nederlands,Vlaams" },
            { code: "en", rtl: false, name: "English", nativeName:"English" },
            { code: "eo", rtl: false, name: "Esperanto", nativeName:"Esperanto" },
            { code: "et", rtl: false, name: "Estonian", nativeName:"eesti" },
            { code: "ee", rtl: false, name: "Ewe", nativeName:"Eʋegbe" },
            { code: "fo", rtl: false, name: "Faroese", nativeName:"føroyskt" },
            { code: "fj", rtl: false, name: "Fijian", nativeName:"vosa Vakaviti" },
            { code: "fi", rtl: false, name: "Finnish", nativeName:"suomi" },
            { code: "fr", rtl: false, name: "French", nativeName:"français" },
            { code: "ff", rtl: false, name: "Fula,Fulahr,Pulaarr,Pular", nativeName:"Fulfulde,Pulaar,Pular" },
            { code: "gl", rtl: false, name: "Galician", nativeName:"Galego" },
            { code: "ka", rtl: false, name: "Georgian", nativeName:"ქართული" },
            { code: "de", rtl: false, name: "German", nativeName:"Deutsch" },
            { code: "el", rtl: false, name: "Greek", nativeName:"Ελληνικά" },
            { code: "gn", rtl: false, name: "Guaraní", nativeName:"Avañeẽ" },
            { code: "gu", rtl: false, name: "Gujarati", nativeName:"ગુજરાતી" },
            { code: "ht", rtl: false, name: "Haitian,Haitian Creole", nativeName:"Kreyòl ayisyen" },
            { code: "ha", rtl: true,  name: "Hausa", nativeName:"هَوُسَ" },
            { code: "he", rtl: true,  name: "Hebrew", nativeName:"עברית‎"},
            { code: "hz", rtl: false, name: "Herero", nativeName:"Otjiherero" },
            { code: "hi", rtl: false, name: "Hindi", nativeName:"हिन्दी, हिंदी" },
            { code: "ho", rtl: false, name: "Hiri Motu", nativeName:"Hiri Motu" },
            { code: "hu", rtl: false, name: "Hungarian", nativeName:"Magyar" },
            { code: "ia", rtl: false, name: "Interlingua", nativeName:"Interlingua" },
            { code: "id", rtl: false, name: "Indonesian", nativeName:"Bahasa Indonesia" },
            { code: "ie", rtl: false, name: "Interlingue", nativeName:"Interlingue" },
            { code: "ga", rtl: false, name: "Irish", nativeName:"Gaeilge" },
            { code: "ig", rtl: false, name: "Igbo", nativeName:"Asụsụ Igbo" },
            { code: "ik", rtl: false, name: "Inupiaq", nativeName:"Iñupiaq,Iñupiatun" },
            { code: "io", rtl: false, name: "Ido", nativeName:"Ido" },
            { code: "is", rtl: false, name: "Icelandic", nativeName:"Íslenska" },
            { code: "it", rtl: false, name: "Italian", nativeName:"Italiano" },
            { code: "iu", rtl: false, name: "Inuktitut", nativeName:"ᐃᓄᒃᑎᑐᑦ" },
            { code: "ja", rtl: false, name: "Japanese", nativeName:"日本語 (にほんご／にっぽんご)" },
            { code: "jv", rtl: false, name: "Javanese", nativeName:"basa Jawa" },
            { code: "kl", rtl: false, name: "Kalaallisut,Greenlandic", nativeName:"kalaallisut" },
            { code: "kn", rtl: false, name: "Kannada", nativeName:"ಕನ್ನಡ" },
            { code: "kr", rtl: false, name: "Kanuri", nativeName:"Kanuri" },
            { code: "ks", rtl: true,  name: "Kashmiri", nativeName:"कश्मीरी"   },
            { code: "kk", rtl: false, name: "Kazakh", nativeName:"Қазақ тілі" },
            { code: "km", rtl: false, name: "Khmer", nativeName:"ភាសាខ្មែរ" },
            { code: "ki", rtl: false, name: "Kikuyu,Gikuyu", nativeName:"Gĩkũyũ" },
            { code: "rw", rtl: false, name: "Kinyarwanda", nativeName:"Ikinyarwanda" },
            { code: "ky", rtl: false, name: "Kirghiz,Kyrgyz", nativeName:"кыргыз тили" },
            { code: "kv", rtl: false, name: "Komi", nativeName:"коми кыв" },
            { code: "kg", rtl: false, name: "Kongo", nativeName:"KiKongo" },
            { code: "ko", rtl: false, name: "Korean", nativeName:"한국어" },
            { code: "ku", rtl: true,  name: "Kurdish", nativeName:"कश्मीरी"   },
            { code: "kj", rtl: false, name: "Kwanyama,Kuanyama", nativeName:"Kuanyama" },
            { code: "la", rtl: false, name: "Latin", nativeName:"latine" },
            { code: "lb", rtl: false, name: "Luxembourgish,Letzeburgesch", nativeName:"Lëtzebuergesch" },
            { code: "lg", rtl: false, name: "Luganda", nativeName:"Luganda" },
            { code: "li", rtl: false, name: "Limburgish,Limburgan,Limburger", nativeName:"Limburgs" },
            { code: "ln", rtl: false, name: "Lingala", nativeName:"Lingála" },
            { code: "lo", rtl: false, name: "Lao", nativeName:"ພາສາລາວ" },
            { code: "lt", rtl: false, name: "Lithuanian", nativeName:"lietuvių kalba" },
            { code: "lu", rtl: false, name: "Luba-Katanga", nativeName:"Kiluba" },
            { code: "lv", rtl: false, name: "Latvian", nativeName:"latviešu valoda" },
            { code: "gv", rtl: false, name: "Manx", nativeName:"Gaelg,Gailck" },
            { code: "mk", rtl: false, name: "Macedonian", nativeName:"македонски јазик" },
            { code: "mg", rtl: false, name: "Malagasy", nativeName:"Malagasy fiteny" },
            { code: "ml", rtl: false, name: "Malayalam", nativeName:"മലയാളം" },
            { code: "mt", rtl: false, name: "Maltese", nativeName:"Malti" },
            { code: "mi", rtl: false, name: "Maori", nativeName:"te reo Māori" },
            { code: "mr", rtl: false, name: "Marathi", nativeName:"मराठी" },
            { code: "mh", rtl: false, name: "Marshallese", nativeName:"Kajin M̧ajeļ" },
            { code: "mn", rtl: false, name: "Mongolian", nativeName:"монгол" },
            { code: "na", rtl: false, name: "Nauru", nativeName:"Ekakairũ Naoero" },
            { code: "nv", rtl: false, name: "Navajo,Navaho", nativeName:"Diné bizaad,Dinékʼehǰí" },
            { code: "nb", rtl: false, name: "Norwegian Bokmål", nativeName:"Norsk bokmål" },
            { code: "nd", rtl: false, name: "North Ndebele", nativeName:"isiNdebele" },
            { code: "ne", rtl: false, name: "Nepali", nativeName:"नेपाली" },
            { code: "ng", rtl: false, name: "Ndonga", nativeName:"Owambo" },
            { code: "nn", rtl: false, name: "Norwegian Nynorsk", nativeName:"Norsk nynorsk" },
            { code: "no", rtl: false, name: "Norwegian", nativeName:"Norsk" },
            { code: "ii", rtl: false, name: "Nuosu", nativeName:"ꆈꌠ꒿ Nuosuhxop" },
            { code: "nr", rtl: false, name: "South Ndebele", nativeName:"isiNdebele" },
            { code: "oc", rtl: false, name: "Occitan", nativeName:"Occitan" },
            { code: "oj", rtl: false, name: "Ojibwe,Ojibwa", nativeName:"ᐊᓂᔑᓈᐯᒧᐎᓐ" },
            { code: "cu", rtl: false, name: "Old Church Slavonic,Church Slavic,Church Slavonic,Old Bulgarian,Old Slavonic", nativeName:"ѩзыкъ словѣньскъ" },
            { code: "om", rtl: false, name: "Oromo", nativeName:"Afaan Oromoo" },
            { code: "or", rtl: false, name: "Oriya", nativeName:"ଓଡ଼ିଆ" },
            { code: "os", rtl: false, name: "Ossetian,Ossetic", nativeName:"ирон æвзаг" },
            { code: "pa", rtl: true,  name: "Panjabi,Punjabi", nativeName:"ਪੰਜਾਬੀ, پنجابی‎" },
            { code: "pi", rtl: false, name: "Pāli", nativeName:"पाऴि" },
            { code: "fa", rtl: true,  name: "Persian", nativeName:"فارسی" },
            { code: "pl", rtl: false, name: "Polish", nativeName:"polski" },
            { code: "ps", rtl: true,  name: "Pashto,Pushto", nativeName:"پښتو" },
            { code: "pt", rtl: false, name: "Portuguese", nativeName:"Português" },
            { code: "qu", rtl: false, name: "Quechua", nativeName:"Runa Simi,Kichwa" },
            { code: "rm", rtl: false, name: "Romansh", nativeName:"rumantsch grischun" },
            { code: "rn", rtl: false, name: "Kirundi", nativeName:"kiRundi" },
            { code: "ro", rtl: false, name: "Romanian,Moldavian,Moldovan", nativeName:"română" },
            { code: "ru", rtl: false, name: "Russian", nativeName:"русский язык" },
            { code: "sa", rtl: false, name: "Sanskrit", nativeName:"संस्कृतम्" },
            { code: "sc", rtl: false, name: "Sardinian", nativeName:"sardu" },
            { code: "sd", rtl: true,  name: "Sindhi", nativeName:"सिन्धी, سنڌي، سندھی‎" },
            { code: "se", rtl: false, name: "Northern Sami", nativeName:"Davvisámegiella" },
            { code: "sm", rtl: false, name: "Samoan", nativeName:"gagana faa Samoa" },
            { code: "sg", rtl: false, name: "Sango", nativeName:"yângâ tî sängö" },
            { code: "sr", rtl: false, name: "Serbian", nativeName:"српски језик" },
            { code: "gd", rtl: false, name: "Gaelic", nativeName:"Gàidhlig" },
            { code: "sn", rtl: false, name: "Shona", nativeName:"chiShona" },
            { code: "si", rtl: false, name: "Sinhala,Sinhalese", nativeName:"සිංහල" },
            { code: "sk", rtl: false, name: "Slovak", nativeName:"slovenčina" },
            { code: "sl", rtl: false, name: "Slovene", nativeName:"slovenščina" },
            { code: "so", rtl: false, name: "Somali", nativeName:"Soomaaliga,af Soomaali" },
            { code: "st", rtl: false, name: "Southern Sotho", nativeName:"Sesotho" },
            { code: "es", rtl: false, name: "Spanish,Castilian", nativeName:"español,castellano" },
            { code: "su", rtl: false, name: "Sundanese", nativeName:"Basa Sunda" },
            { code: "sw", rtl: false, name: "Swahili", nativeName:"Kiswahili" },
            { code: "ss", rtl: false, name: "Swati", nativeName:"SiSwati" },
            { code: "sv", rtl: false, name: "Swedish", nativeName:"svenska" },
            { code: "ta", rtl: false, name: "Tamil", nativeName:"தமிழ்" },
            { code: "te", rtl: false, name: "Telugu", nativeName:"తెలుగు" },
            { code: "tg", rtl: true,  name: "Tajik", nativeName:"тоҷикӣ, toğikī, تاجیکی‎" },
            { code: "th", rtl: false, name: "Thai", nativeName:"ไทย" },
            { code: "ti", rtl: false, name: "Tigrinya", nativeName:"ትግርኛ" },
            { code: "bo", rtl: false, name: "Tibetan Standard,Tibetan, Central", nativeName:"བོད་ཡིག" },
            { code: "tk", rtl: false, name: "Turkmen", nativeName:"Türkmen, Түркмен" },
            { code: "tl", rtl: false, name: "Tagalog", nativeName:"Wikang Tagalog, ᜏᜒᜃᜅ᜔ ᜆᜄᜎᜓᜄ᜔" },
            { code: "tn", rtl: false, name: "Tswana", nativeName:"Setswana" },
            { code: "to", rtl: false, name: "Tonga", nativeName:"faka Tonga" },
            { code: "tr", rtl: true,  name: "Turkish", nativeName:"Türkçe" },
            { code: "ts", rtl: false, name: "Tsonga", nativeName:"Xitsonga" },
            { code: "tt", rtl: false, name: "Tatar", nativeName:"татарча, tatarça, تاتارچا‎" },
            { code: "tw", rtl: false, name: "Twi", nativeName:"Twi" },
            { code: "ty", rtl: false, name: "Tahitian", nativeName:"Reo Tahiti" },
            { code: "ug", rtl: true,  name: "Uighur,Uyghur", nativeName:"Uyƣurqə, ئۇيغۇرچە‎" },
            { code: "uk", rtl: false, name: "Ukrainian", nativeName:"українська" },
            { code: "ur", rtl: true,  name: "Urdu", nativeName:"اردو" },
            { code: "uz", rtl: true,  name: "Uzbek", nativeName:"zbek,Ўзбек, أۇزبېك‎" },
            { code: "ve", rtl: false, name: "Venda", nativeName:"Tshivenḓa" },
            { code: "vi", rtl: false, name: "Vietnamese", nativeName:"Tiếng Việt" },
            { code: "vo", rtl: false, name: "Volapük", nativeName:"Volapük" },
            { code: "wa", rtl: false, name: "Walloon", nativeName:"Walon" },
            { code: "cy", rtl: false, name: "Welsh", nativeName:"Cymraeg" },
            { code: "wo", rtl: false, name: "Wolof", nativeName:"Wollof" },
            { code: "fy", rtl: false, name: "Western Frisian", nativeName:"Frysk" },
            { code: "xh", rtl: false, name: "Xhosa", nativeName:"isiXhosa" },
            { code: "yi", rtl: true,  name: "Yiddish", nativeName: "ייִדיש‎" },
            { code: "yo", rtl: false, name: "Yoruba", nativeName:"Yorùbá" },
            { code: "za", rtl: false, name: "Zhuang,Chuang", nativeName:"Saɯ cueŋƅ" }
    ];
}
