class Epub {
  bool? isAvailable;
  String? downloadLink;

  Epub({this.isAvailable, this.downloadLink});

  Epub.fromJson(Map<String, dynamic> json) {
    isAvailable = json['isAvailable'];
    downloadLink = json['downloadLink'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['isAvailable'] = this.isAvailable;
    data['downloadLink'] = this.downloadLink;
    return data;
  }
}