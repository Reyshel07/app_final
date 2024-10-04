import 'dart:convert';

ResposeNoti resposeNotiFromJson(String str) => ResposeNoti.fromJson(json.decode(str));

String resposeNotiToJson(ResposeNoti data) => json.encode(data.toJson());

class ResposeNoti {
    final String status;
    final int totalResults;
    final List<Result1> results1;
    final String nextPage;

    ResposeNoti({
        required this.status,
        required this.totalResults,
        required this.results1,
        required this.nextPage,
    });

    factory ResposeNoti.fromJson(Map<String, dynamic> json) => ResposeNoti(
        status: json["status"],
        totalResults: json["totalResults"],
        results1: List<Result1>.from(json["results"].map((x) => Result1.fromJson(x))),
        nextPage: json["nextPage"],
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "totalResults": totalResults,
        "results": List<dynamic>.from(results1.map((x) => x.toJson())),
        "nextPage": nextPage,
    };
}

class Result1 {
    final String articleId;
    final String title;
    final String link;
    final List<String>? keywords;
    final List<String>? creator;
    final dynamic videoUrl;
    final String? description;
    final Content content;
    final DateTime pubDate;
    final PubDateTz pubDateTz;
    final String imageUrl;
    final String sourceId;
    final int sourcePriority;
    final String sourceName;
    final String sourceUrl;
    final String sourceIcon;
    final String language;
    final List<String> country;
    final List<Category> category;
    final AiTag aiTag;
    final AiTag sentiment;
    final AiTag sentimentStats;
    final Ai aiRegion;
    final Ai aiOrg;
    final bool duplicate;

    Result1({
        required this.articleId,
        required this.title,
        required this.link,
        required this.keywords,
        required this.creator,
        required this.videoUrl,
        required this.description,
        required this.content,
        required this.pubDate,
        required this.pubDateTz,
        required this.imageUrl,
        required this.sourceId,
        required this.sourcePriority,
        required this.sourceName,
        required this.sourceUrl,
        required this.sourceIcon,
        required this.language,
        required this.country,
        required this.category,
        required this.aiTag,
        required this.sentiment,
        required this.sentimentStats,
        required this.aiRegion,
        required this.aiOrg,
        required this.duplicate,
    });

    factory Result1.fromJson(Map<String, dynamic> json) => Result1(
        articleId: json["article_id"],
        title: json["title"],
        link: json["link"],
        keywords: json["keywords"] == null ? [] : List<String>.from(json["keywords"]!.map((x) => x)),
        creator: json["creator"] == null ? [] : List<String>.from(json["creator"]!.map((x) => x)),
        videoUrl: json["video_url"],
        description: json["description"],
        content: contentValues.map[json["content"]]!,
        pubDate: DateTime.parse(json["pubDate"]),
        pubDateTz: pubDateTzValues.map[json["pubDateTZ"]]!,
        imageUrl: json["image_url"],
        sourceId: json["source_id"],
        sourcePriority: json["source_priority"],
        sourceName: json["source_name"],
        sourceUrl: json["source_url"],
        sourceIcon: json["source_icon"],
        language: json["language"],
        country: List<String>.from(json["country"].map((x) => x)),
        category: List<Category>.from(json["category"].map((x) => categoryValues.map[x]!)),
        aiTag: aiTagValues.map[json["ai_tag"]]!,
        sentiment: aiTagValues.map[json["sentiment"]]!,
        sentimentStats: aiTagValues.map[json["sentiment_stats"]]!,
        aiRegion: aiValues.map[json["ai_region"]]!,
        aiOrg: aiValues.map[json["ai_org"]]!,
        duplicate: json["duplicate"],
    );

    Map<String, dynamic> toJson() => {
        "article_id": articleId,
        "title": title,
        "link": link,
        "keywords": keywords == null ? [] : List<dynamic>.from(keywords!.map((x) => x)),
        "creator": creator == null ? [] : List<dynamic>.from(creator!.map((x) => x)),
        "video_url": videoUrl,
        "description": description,
        "content": contentValues.reverse[content],
        "pubDate": pubDate.toIso8601String(),
        "pubDateTZ": pubDateTzValues.reverse[pubDateTz],
        "image_url": imageUrl,
        "source_id": sourceId,
        "source_priority": sourcePriority,
        "source_name": sourceName,
        "source_url": sourceUrl,
        "source_icon": sourceIcon,
        "language": language,
        "country": List<dynamic>.from(country.map((x) => x)),
        "category": List<dynamic>.from(category.map((x) => categoryValues.reverse[x])),
        "ai_tag": aiTagValues.reverse[aiTag],
        "sentiment": aiTagValues.reverse[sentiment],
        "sentiment_stats": aiTagValues.reverse[sentimentStats],
        "ai_region": aiValues.reverse[aiRegion],
        "ai_org": aiValues.reverse[aiOrg],
        "duplicate": duplicate,
    };
}

enum Ai {
    ONLY_AVAILABLE_IN_CORPORATE_PLANS
}

final aiValues = EnumValues({
    "ONLY AVAILABLE IN CORPORATE PLANS": Ai.ONLY_AVAILABLE_IN_CORPORATE_PLANS
});

enum AiTag {
    ONLY_AVAILABLE_IN_PROFESSIONAL_AND_CORPORATE_PLANS
}

final aiTagValues = EnumValues({
    "ONLY AVAILABLE IN PROFESSIONAL AND CORPORATE PLANS": AiTag.ONLY_AVAILABLE_IN_PROFESSIONAL_AND_CORPORATE_PLANS
});

enum Category {
    ENTERTAINMENT,
    TOP
}

final categoryValues = EnumValues({
    "entertainment": Category.ENTERTAINMENT,
    "top": Category.TOP
});

enum Content {
    ONLY_AVAILABLE_IN_PAID_PLANS
}

final contentValues = EnumValues({
    "ONLY AVAILABLE IN PAID PLANS": Content.ONLY_AVAILABLE_IN_PAID_PLANS
});

enum PubDateTz {
    UTC
}

final pubDateTzValues = EnumValues({
    "UTC": PubDateTz.UTC
});

class EnumValues<T> {
    Map<String, T> map;
    late Map<T, String> reverseMap;

    EnumValues(this.map);

    Map<T, String> get reverse {
            reverseMap = map.map((k, v) => MapEntry(v, k));
            return reverseMap;
    }
}
