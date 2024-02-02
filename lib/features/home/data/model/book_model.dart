import 'dart:convert';
BookModel bookModelFromJson(String str) => BookModel.fromJson(json.decode(str));
String bookModelToJson(BookModel data) => json.encode(data.toJson());
class BookModel {
  BookModel({
      this.kind, 
      this.id, 
      this.etag, 
      this.selfLink, 
      required this.volumeInfo,
      this.saleInfo, 
      this.accessInfo,});

  BookModel.fromJson(dynamic json) {
    kind = json['kind'];
    id = json['id'];
    etag = json['etag'];
    selfLink = json['selfLink'];
    volumeInfo =  VolumeInfo.fromJson(json['volumeInfo']) ;
    saleInfo = json['saleInfo'] != null ? SaleInfo.fromJson(json['saleInfo']) : null;
    accessInfo = json['accessInfo'] != null ? AccessInfo.fromJson(json['accessInfo']) : null;
  }
  String? kind;
  String? id;
  String? etag;
  String? selfLink;
  late VolumeInfo volumeInfo;
  SaleInfo? saleInfo;
  AccessInfo? accessInfo;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['kind'] = kind;
    map['id'] = id;
    map['etag'] = etag;
    map['selfLink'] = selfLink;

      map['volumeInfo'] = volumeInfo.toJson();

    if (saleInfo != null) {
      map['saleInfo'] = saleInfo?.toJson();
    }
    if (accessInfo != null) {
      map['accessInfo'] = accessInfo?.toJson();
    }
    return map;
  }

}

AccessInfo accessInfoFromJson(String str) => AccessInfo.fromJson(json.decode(str));
String accessInfoToJson(AccessInfo data) => json.encode(data.toJson());
class AccessInfo {
  AccessInfo({
      this.country, 
      this.viewability, 
      this.embeddable, 
      this.publicDomain, 
      this.textToSpeechPermission, 
      this.epub, 
      this.pdf, 
      this.webReaderLink, 
      this.accessViewStatus, 
      this.quoteSharingAllowed,});

  AccessInfo.fromJson(dynamic json) {
    country = json['country'];
    viewability = json['viewability'];
    embeddable = json['embeddable'];
    publicDomain = json['publicDomain'];
    textToSpeechPermission = json['textToSpeechPermission'];
    epub = json['epub'] != null ? Epub.fromJson(json['epub']) : null;
    pdf = json['pdf'] != null ? Pdf.fromJson(json['pdf']) : null;
    webReaderLink = json['webReaderLink'];
    accessViewStatus = json['accessViewStatus'];
    quoteSharingAllowed = json['quoteSharingAllowed'];
  }
  String? country;
  String? viewability;
  bool? embeddable;
  bool? publicDomain;
  String? textToSpeechPermission;
  Epub? epub;
  Pdf? pdf;
  String? webReaderLink;
  String? accessViewStatus;
  bool? quoteSharingAllowed;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['country'] = country;
    map['viewability'] = viewability;
    map['embeddable'] = embeddable;
    map['publicDomain'] = publicDomain;
    map['textToSpeechPermission'] = textToSpeechPermission;
    if (epub != null) {
      map['epub'] = epub?.toJson();
    }
    if (pdf != null) {
      map['pdf'] = pdf?.toJson();
    }
    map['webReaderLink'] = webReaderLink;
    map['accessViewStatus'] = accessViewStatus;
    map['quoteSharingAllowed'] = quoteSharingAllowed;
    return map;
  }

}

Pdf pdfFromJson(String str) => Pdf.fromJson(json.decode(str));
String pdfToJson(Pdf data) => json.encode(data.toJson());
class Pdf {
  Pdf({
      this.isAvailable, 
      this.acsTokenLink,});

  Pdf.fromJson(dynamic json) {
    isAvailable = json['isAvailable'];
    acsTokenLink = json['acsTokenLink'];
  }
  bool? isAvailable;
  String? acsTokenLink;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['isAvailable'] = isAvailable;
    map['acsTokenLink'] = acsTokenLink;
    return map;
  }

}

Epub epubFromJson(String str) => Epub.fromJson(json.decode(str));
String epubToJson(Epub data) => json.encode(data.toJson());
class Epub {
  Epub({
      this.isAvailable,});

  Epub.fromJson(dynamic json) {
    isAvailable = json['isAvailable'];
  }
  bool? isAvailable;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['isAvailable'] = isAvailable;
    return map;
  }

}

SaleInfo saleInfoFromJson(String str) => SaleInfo.fromJson(json.decode(str));
String saleInfoToJson(SaleInfo data) => json.encode(data.toJson());
class SaleInfo {
  SaleInfo({
      this.country, 
      this.saleability, 
      this.isEbook, 

      this.retailPrice, 
      this.buyLink, 
      this.offers,});

  SaleInfo.fromJson(dynamic json) {
    country = json['country'];
    saleability = json['saleability'];
    isEbook = json['isEbook'];
    retailPrice = json['retailPrice'] != null ? RetailPrice.fromJson(json['retailPrice']) : null;
    buyLink = json['buyLink'];
    if (json['offers'] != null) {
      offers = [];
      json['offers'].forEach((v) {
        offers?.add(Offers.fromJson(v));
      });
    }
  }
  String? country;
  String? saleability;
  bool? isEbook;
  RetailPrice? retailPrice;
  String? buyLink;
  List<Offers>? offers;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['country'] = country;
    map['saleability'] = saleability;
    map['isEbook'] = isEbook;
    if (retailPrice != null) {
      map['retailPrice'] = retailPrice?.toJson();
    }
    map['buyLink'] = buyLink;
    if (offers != null) {
      map['offers'] = offers?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

Offers offersFromJson(String str) => Offers.fromJson(json.decode(str));
String offersToJson(Offers data) => json.encode(data.toJson());
class Offers {
  Offers({
      this.finskyOfferType,
      this.retailPrice, 
      this.giftable,});

  Offers.fromJson(dynamic json) {
    finskyOfferType = json['finskyOfferType'];
    retailPrice = json['retailPrice'] != null ? RetailPrice.fromJson(json['retailPrice']) : null;
    giftable = json['giftable'];
  }
  num? finskyOfferType;
  RetailPrice? retailPrice;
  bool? giftable;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['finskyOfferType'] = finskyOfferType;
    if (retailPrice != null) {
      map['retailPrice'] = retailPrice?.toJson();
    }
    map['giftable'] = giftable;
    return map;
  }

}

RetailPrice retailPriceFromJson(String str) => RetailPrice.fromJson(json.decode(str));
String retailPriceToJson(RetailPrice data) => json.encode(data.toJson());
class RetailPrice {
  RetailPrice({
      this.amountInMicros, 
      this.currencyCode,});

  RetailPrice.fromJson(dynamic json) {
    amountInMicros = json['amountInMicros'];
    currencyCode = json['currencyCode'];
  }
  num? amountInMicros;
  String? currencyCode;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['amountInMicros'] = amountInMicros;
    map['currencyCode'] = currencyCode;
    return map;
  }

}






VolumeInfo volumeInfoFromJson(String str) => VolumeInfo.fromJson(json.decode(str));
String volumeInfoToJson(VolumeInfo data) => json.encode(data.toJson());
class VolumeInfo {
  VolumeInfo({
      this.title, 
      this.subtitle, 
      this.authors, 
      this.publisher, 
      this.publishedDate, 
      this.description, 
      this.industryIdentifiers, 
      this.readingModes, 
      this.pageCount, 
      this.printType, 
      this.categories, 
      this.maturityRating, 
      this.allowAnonLogging, 
      this.contentVersion, 
      this.panelizationSummary, 
      this.imageLinks, 
      this.language, 
      this.previewLink, 
      this.infoLink, 
      this.canonicalVolumeLink,});

  VolumeInfo.fromJson(dynamic json) {
    title = json['title'];
    subtitle = json['subtitle'];
    authors = json['authors'] != null ? json['authors'].cast<String>() : [];
    publisher = json['publisher'];
    publishedDate = json['publishedDate'];
    description = json['description'];
    if (json['industryIdentifiers'] != null) {
      industryIdentifiers = [];
      json['industryIdentifiers'].forEach((v) {
        industryIdentifiers?.add(IndustryIdentifiers.fromJson(v));
      });
    }
    readingModes = json['readingModes'] != null ? ReadingModes.fromJson(json['readingModes']) : null;
    pageCount = json['pageCount'];
    printType = json['printType'];
    categories = json['categories'] != null ? json['categories'].cast<String>() : [];
    maturityRating = json['maturityRating'];
    allowAnonLogging = json['allowAnonLogging'];
    contentVersion = json['contentVersion'];
    panelizationSummary = json['panelizationSummary'] != null ? PanelizationSummary.fromJson(json['panelizationSummary']) : null;
    imageLinks = json['imageLinks'] != null ? ImageLinks.fromJson(json['imageLinks']) : null;
    language = json['language'];
    previewLink = json['previewLink'];
    infoLink = json['infoLink'];
    canonicalVolumeLink = json['canonicalVolumeLink'];
  }
  String? title;
  String? subtitle;
  List<String>? authors;
  String? publisher;
  String? publishedDate;
  String? description;
  List<IndustryIdentifiers>? industryIdentifiers;
  ReadingModes? readingModes;
  num? pageCount;
  String? printType;
  List<String>? categories;
  String? maturityRating;
  bool? allowAnonLogging;
  String? contentVersion;
  PanelizationSummary? panelizationSummary;
  ImageLinks? imageLinks;
  String? language;
  String? previewLink;
  String? infoLink;
  String? canonicalVolumeLink;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['title'] = title;
    map['subtitle'] = subtitle;
    map['authors'] = authors;
    map['publisher'] = publisher;
    map['publishedDate'] = publishedDate;
    map['description'] = description;
    if (industryIdentifiers != null) {
      map['industryIdentifiers'] = industryIdentifiers?.map((v) => v.toJson()).toList();
    }
    if (readingModes != null) {
      map['readingModes'] = readingModes?.toJson();
    }
    map['pageCount'] = pageCount;
    map['printType'] = printType;
    map['categories'] = categories;
    map['maturityRating'] = maturityRating;
    map['allowAnonLogging'] = allowAnonLogging;
    map['contentVersion'] = contentVersion;
    if (panelizationSummary != null) {
      map['panelizationSummary'] = panelizationSummary?.toJson();
    }
    if (imageLinks != null) {
      map['imageLinks'] = imageLinks?.toJson();
    }
    map['language'] = language;
    map['previewLink'] = previewLink;
    map['infoLink'] = infoLink;
    map['canonicalVolumeLink'] = canonicalVolumeLink;
    return map;
  }

}

ImageLinks imageLinksFromJson(String str) => ImageLinks.fromJson(json.decode(str));
String imageLinksToJson(ImageLinks data) => json.encode(data.toJson());
class ImageLinks {
  ImageLinks({
      this.smallThumbnail, 
      this.thumbnail,});

  ImageLinks.fromJson(dynamic json) {
    smallThumbnail = json['smallThumbnail'];
    thumbnail = json['thumbnail'];
  }
  String? smallThumbnail;
  String? thumbnail;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['smallThumbnail'] = smallThumbnail;
    map['thumbnail'] = thumbnail;
    return map;
  }

}

PanelizationSummary panelizationSummaryFromJson(String str) => PanelizationSummary.fromJson(json.decode(str));
String panelizationSummaryToJson(PanelizationSummary data) => json.encode(data.toJson());
class PanelizationSummary {
  PanelizationSummary({
      this.containsEpubBubbles, 
      this.containsImageBubbles,});

  PanelizationSummary.fromJson(dynamic json) {
    containsEpubBubbles = json['containsEpubBubbles'];
    containsImageBubbles = json['containsImageBubbles'];
  }
  bool? containsEpubBubbles;
  bool? containsImageBubbles;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['containsEpubBubbles'] = containsEpubBubbles;
    map['containsImageBubbles'] = containsImageBubbles;
    return map;
  }

}

ReadingModes readingModesFromJson(String str) => ReadingModes.fromJson(json.decode(str));
String readingModesToJson(ReadingModes data) => json.encode(data.toJson());
class ReadingModes {
  ReadingModes({
      this.text, 
      this.image,});

  ReadingModes.fromJson(dynamic json) {
    text = json['text'];
    image = json['image'];
  }
  bool? text;
  bool? image;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['text'] = text;
    map['image'] = image;
    return map;
  }

}

IndustryIdentifiers industryIdentifiersFromJson(String str) => IndustryIdentifiers.fromJson(json.decode(str));
String industryIdentifiersToJson(IndustryIdentifiers data) => json.encode(data.toJson());
class IndustryIdentifiers {
  IndustryIdentifiers({
      this.type, 
      this.identifier,});

  IndustryIdentifiers.fromJson(dynamic json) {
    type = json['type'];
    identifier = json['identifier'];
  }
  String? type;
  String? identifier;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['type'] = type;
    map['identifier'] = identifier;
    return map;
  }

}