class ParameterModel {
  bool exportKeyToId;
  String key;
  String key2;
  String title;
  DateTime creationTime;
  String additional;
  String additionalEn;

  ParameterModel(this.exportKeyToId, this.key, this.key2, this.title, this.additional, this.additionalEn,
      this.creationTime);

  factory ParameterModel.fromJSON(
      bool exportKeyToId, String key, dynamic jsonData) {
    return ParameterModel(
        exportKeyToId,
        key,
        jsonData['key2'] as String,
        jsonData['title'] as String,
        jsonData['additional'] as String,
        jsonData['additionalEn'] as String,
        DateTime.fromMicrosecondsSinceEpoch(
            jsonData['creationTime'].microsecondsSinceEpoch),
        );
  }

  factory ParameterModel.fromJSONWithIdToKey(
      bool exportKeyToId, String key, dynamic jsonData) {
    return ParameterModel(
      exportKeyToId,
      jsonData['id'] as String,
      jsonData['key2'] as String,
      jsonData['title'] as String,
      jsonData['additional'] as String,
      jsonData['additionalEn'] as String,
      DateTime.fromMicrosecondsSinceEpoch(
          jsonData['creationTime'].microsecondsSinceEpoch),
      
    );
  }

  Map<String, dynamic> toJson() => {
        if (exportKeyToId) 'id': key,
        'key2': key2,
        'title': title,
        'additional': additional,
        'additionalEn': additionalEn,
        'creationTime': creationTime
      };

  Map<String, dynamic> toJsonWithExportKeyToId() => {
        'id': key,
        'key2': key2,
        'title': title,
        'additional': additional,
        'additionalEn': additionalEn,
        'creationTime': creationTime,
      };

  clone(ParameterModel parameterModel) {
    exportKeyToId = parameterModel.exportKeyToId;
    key = parameterModel.key;
    key2 = parameterModel.key2;
    title = parameterModel.title;
    additional = parameterModel.additional;
    additionalEn = parameterModel.additionalEn;
    creationTime = parameterModel.creationTime;
  }
}
