class Document {
  List<Documents> documents;

  Document({this.documents});

  Document.fromJson(Map<String, dynamic> json) {
    if (json['documents'] != null) {
      documents = new List<Documents>();
      json['documents'].forEach((v) {
        documents.add(new Documents.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.documents != null) {
      data['documents'] = this.documents.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Documents {
  String name;
  Fields fields;
  String createTime;
  String updateTime;

  Documents({this.name, this.fields, this.createTime, this.updateTime});

  Documents.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    fields =
        json['fields'] != null ? new Fields.fromJson(json['fields']) : null;
    createTime = json['createTime'];
    updateTime = json['updateTime'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    if (this.fields != null) {
      data['fields'] = this.fields.toJson();
    }
    data['createTime'] = this.createTime;
    data['updateTime'] = this.updateTime;
    return data;
  }
}

class Fields {
  ImgUrl imgUrl;
  ImgUrl authorName;
  ImgUrl title;
  ImgUrl desc;

  Fields({this.imgUrl, this.authorName, this.title, this.desc});

  Fields.fromJson(Map<String, dynamic> json) {
    imgUrl =
        json['imgUrl'] != null ? new ImgUrl.fromJson(json['imgUrl']) : null;
    authorName = json['authorName'] != null
        ? new ImgUrl.fromJson(json['authorName'])
        : null;
    title = json['title'] != null ? new ImgUrl.fromJson(json['title']) : null;
    desc = json['desc'] != null ? new ImgUrl.fromJson(json['desc']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.imgUrl != null) {
      data['imgUrl'] = this.imgUrl.toJson();
    }
    if (this.authorName != null) {
      data['authorName'] = this.authorName.toJson();
    }
    if (this.title != null) {
      data['title'] = this.title.toJson();
    }
    if (this.desc != null) {
      data['desc'] = this.desc.toJson();
    }
    return data;
  }
}

class ImgUrl {
  String stringValue;

  ImgUrl({this.stringValue});

  ImgUrl.fromJson(Map<String, dynamic> json) {
    stringValue = json['stringValue'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['stringValue'] = this.stringValue;
    return data;
  }
}
