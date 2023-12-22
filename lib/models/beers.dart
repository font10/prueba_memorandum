class Beers {
  int? id;
  String? name;
  String? tagline;
  String? firstBrewed;
  String? description;
  String? imageUrl;
  double? abv;
  int? ibu;
  int? targetFg;
  int? targetOg;
  int? ebc;
  int? srm;
  double? ph;
  int? attenuationLevel;
  Map? volume;
  Map? boilVolume;
  Map? method;
  Map? ingredients;
  List<String>? foodPairing;
  String? brewersTips;
  String? contributedBy;

  Beers(
      {this.id,
      this.name,
      this.tagline,
      this.firstBrewed,
      this.description,
      this.imageUrl,
      this.abv,
      this.ibu,
      this.targetFg,
      this.targetOg,
      this.ebc,
      this.srm,
      this.ph,
      this.attenuationLevel,
      this.volume,
      this.boilVolume,
      this.method,
      this.ingredients,
      this.foodPairing,
      this.brewersTips,
      this.contributedBy});
}
