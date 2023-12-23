class BeerModel {
  int? id;
  String? name;
  String? tagline;
  String? firstBrewed;
  String? description;
  String? imageUrl;
  Volume? volume;
  BoilVolume? boilVolume;
  Method? method;
  List<String>? foodPairing;
  String? brewersTips;
  String? contributedBy;

  BeerModel(
      {this.id,
      this.name,
      this.tagline,
      this.firstBrewed,
      this.description,
      this.imageUrl,
      this.volume,
      this.boilVolume,
      this.method,
      this.foodPairing,
      this.brewersTips,
      this.contributedBy});

  BeerModel.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    name = json["name"];
    tagline = json["tagline"];
    firstBrewed = json["first_brewed"];
    description = json["description"];
    imageUrl = json["image_url"];
    volume = json["volume"] == null ? null : Volume.fromJson(json["volume"]);
    boilVolume = json["boil_volume"] == null
        ? null
        : BoilVolume.fromJson(json["boil_volume"]);
    method = json["method"] == null ? null : Method.fromJson(json["method"]);
    foodPairing = json["food_pairing"] == null
        ? null
        : List<String>.from(json["food_pairing"]);
    brewersTips = json["brewers_tips"];
    contributedBy = json["contributed_by"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    _data["name"] = name;
    _data["tagline"] = tagline;
    _data["first_brewed"] = firstBrewed;
    _data["description"] = description;
    _data["image_url"] = imageUrl;
    if (volume != null) {
      _data["volume"] = volume?.toJson();
    }
    if (boilVolume != null) {
      _data["boil_volume"] = boilVolume?.toJson();
    }
    if (method != null) {
      _data["method"] = method?.toJson();
    }
    if (foodPairing != null) {
      _data["food_pairing"] = foodPairing;
    }
    _data["brewers_tips"] = brewersTips;
    _data["contributed_by"] = contributedBy;
    return _data;
  }
}

class Method {
  List<MashTemp>? mashTemp;
  Fermentation? fermentation;
  String? twist;

  Method({this.mashTemp, this.fermentation, this.twist});

  Method.fromJson(Map<String, dynamic> json) {
    mashTemp = json["mash_temp"] == null
        ? null
        : (json["mash_temp"] as List).map((e) => MashTemp.fromJson(e)).toList();
    fermentation = json["fermentation"] == null
        ? null
        : Fermentation.fromJson(json["fermentation"]);
    twist = json["twist"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if (mashTemp != null) {
      _data["mash_temp"] = mashTemp?.map((e) => e.toJson()).toList();
    }
    if (fermentation != null) {
      _data["fermentation"] = fermentation?.toJson();
    }
    _data["twist"] = twist;
    return _data;
  }
}

class Fermentation {
  Temp1? temp;

  Fermentation({this.temp});

  Fermentation.fromJson(Map<String, dynamic> json) {
    temp = json["temp"] == null ? null : Temp1.fromJson(json["temp"]);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if (temp != null) {
      _data["temp"] = temp?.toJson();
    }
    return _data;
  }
}

class Temp1 {
  int? value;
  String? unit;

  Temp1({this.value, this.unit});

  Temp1.fromJson(Map<String, dynamic> json) {
    value = json["value"];
    unit = json["unit"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["value"] = value;
    _data["unit"] = unit;
    return _data;
  }
}

class MashTemp {
  Temp? temp;
  int? duration;

  MashTemp({this.temp, this.duration});

  MashTemp.fromJson(Map<String, dynamic> json) {
    temp = json["temp"] == null ? null : Temp.fromJson(json["temp"]);
    duration = json["duration"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if (temp != null) {
      _data["temp"] = temp?.toJson();
    }
    _data["duration"] = duration;
    return _data;
  }
}

class Temp {
  int? value;
  String? unit;

  Temp({this.value, this.unit});

  Temp.fromJson(Map<String, dynamic> json) {
    value = json["value"];
    unit = json["unit"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["value"] = value;
    _data["unit"] = unit;
    return _data;
  }
}

class BoilVolume {
  int? value;
  String? unit;

  BoilVolume({this.value, this.unit});

  BoilVolume.fromJson(Map<String, dynamic> json) {
    value = json["value"];
    unit = json["unit"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["value"] = value;
    _data["unit"] = unit;
    return _data;
  }
}

class Volume {
  int? value;
  String? unit;

  Volume({this.value, this.unit});

  Volume.fromJson(Map<String, dynamic> json) {
    value = json["value"];
    unit = json["unit"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["value"] = value;
    _data["unit"] = unit;
    return _data;
  }
}
