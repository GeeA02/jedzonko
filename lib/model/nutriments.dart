import 'dart:convert';

class Nutriments {
  String? energy100g;

  String? energykj100g;

  String? energykcal100g;

  String? proteins100g;

  String? casein100g;

  String? serumproteins100g;

  String? nucleotides100g;

  String? carbohydrates100g;

  String? sugars100g;

  String? sucrose100g;

  String? glucose100g;

  String? fructose100g;

  String? lactose100g;

  String? maltose100g;

  String? maltodextrins100g;

  String? starch100g;

  String? polyols100g;

  String? fat100g;

  String? saturatedfat100g;

  String? butyricacid100g;

  String? caproicacid100g;

  String? caprylicacid100g;

  String? capricacid100g;

  String? lauricacid100g;

  String? myristicacid100g;

  String? palmiticacid100g;

  String? stearicacid100g;

  String? arachidicacid100g;

  String? behenicacid100g;

  String? lignocericacid100g;

  String? ceroticacid100g;

  String? montanicacid100g;

  String? melissicacid100g;

  String? monounsaturatedfat100g;

  String? polyunsaturatedfat100g;

  String? omega3fat100g;

  String? alphalinolenicacid100g;

  String? eicosapentaenoicacid100g;

  String? docosahexaenoicacid100g;

  String? omega6fat100g;

  String? linoleicacid100g;

  String? arachidonicacid100g;

  String? gammalinolenicacid100g;

  String? dihomogammalinolenicacid100g;

  String? omega9fat100g;

  String? oleicacid100g;

  String? elaidicacid100g;

  String? gondoicacid100g;

  String? meadacid100g;

  String? erucicacid100g;

  String? nervonicacid100g;

  String? transfat100g;

  String? cholesterol100g;

  String? fiber100g;

  String? sodium100g;

  String? alcohol100g;

  String? vitamina100g;

  String? vitamind100g;

  String? vitamine100g;

  String? vitamink100g;

  String? vitaminc100g;

  String? vitaminb1100g;

  String? vitaminb2100g;

  String? vitaminpp100g;

  String? vitaminb6100g;

  String? vitaminb9100g;

  String? vitaminb12100g;

  String? biotin100g;

  String? pantothenicacid100g;

  String? silica100g;

  String? bicarbonate100g;

  String? potassium100g;

  String? chloride100g;

  String? calcium100g;

  String? phosphorus100g;

  String? iron100g;

  String? magnesium100g;

  String? zinc100g;

  String? copper100g;

  String? manganese100g;

  String? fluoride100g;

  String? selenium100g;

  String? chromium100g;

  String? molybdenum100g;

  String? iodine100g;

  String? caffeine100g;

  String? taurine100g;

  String? ph100g;

  String? fruitsvegetablesnuts100g;
  Nutriments({
    this.energy100g,
    this.energykj100g,
    this.energykcal100g,
    this.proteins100g,
    this.casein100g,
    this.serumproteins100g,
    this.nucleotides100g,
    this.carbohydrates100g,
    this.sugars100g,
    this.sucrose100g,
    this.glucose100g,
    this.fructose100g,
    this.lactose100g,
    this.maltose100g,
    this.maltodextrins100g,
    this.starch100g,
    this.polyols100g,
    this.fat100g,
    this.saturatedfat100g,
    this.butyricacid100g,
    this.caproicacid100g,
    this.caprylicacid100g,
    this.capricacid100g,
    this.lauricacid100g,
    this.myristicacid100g,
    this.palmiticacid100g,
    this.stearicacid100g,
    this.arachidicacid100g,
    this.behenicacid100g,
    this.lignocericacid100g,
    this.ceroticacid100g,
    this.montanicacid100g,
    this.melissicacid100g,
    this.monounsaturatedfat100g,
    this.polyunsaturatedfat100g,
    this.omega3fat100g,
    this.alphalinolenicacid100g,
    this.eicosapentaenoicacid100g,
    this.docosahexaenoicacid100g,
    this.omega6fat100g,
    this.linoleicacid100g,
    this.arachidonicacid100g,
    this.gammalinolenicacid100g,
    this.dihomogammalinolenicacid100g,
    this.omega9fat100g,
    this.oleicacid100g,
    this.elaidicacid100g,
    this.gondoicacid100g,
    this.meadacid100g,
    this.erucicacid100g,
    this.nervonicacid100g,
    this.transfat100g,
    this.cholesterol100g,
    this.fiber100g,
    this.sodium100g,
    this.alcohol100g,
    this.vitamina100g,
    this.vitamind100g,
    this.vitamine100g,
    this.vitamink100g,
    this.vitaminc100g,
    this.vitaminb1100g,
    this.vitaminb2100g,
    this.vitaminpp100g,
    this.vitaminb6100g,
    this.vitaminb9100g,
    this.vitaminb12100g,
    this.biotin100g,
    this.pantothenicacid100g,
    this.silica100g,
    this.bicarbonate100g,
    this.potassium100g,
    this.chloride100g,
    this.calcium100g,
    this.phosphorus100g,
    this.iron100g,
    this.magnesium100g,
    this.zinc100g,
    this.copper100g,
    this.manganese100g,
    this.fluoride100g,
    this.selenium100g,
    this.chromium100g,
    this.molybdenum100g,
    this.iodine100g,
    this.caffeine100g,
    this.taurine100g,
    this.ph100g,
    this.fruitsvegetablesnuts100g,
  });


  Nutriments copyWith({
    String? energy100g,
    String? energykj100g,
    String? energykcal100g,
    String? proteins100g,
    String? casein100g,
    String? serumproteins100g,
    String? nucleotides100g,
    String? carbohydrates100g,
    String? sugars100g,
    String? sucrose100g,
    String? glucose100g,
    String? fructose100g,
    String? lactose100g,
    String? maltose100g,
    String? maltodextrins100g,
    String? starch100g,
    String? polyols100g,
    String? fat100g,
    String? saturatedfat100g,
    String? butyricacid100g,
    String? caproicacid100g,
    String? caprylicacid100g,
    String? capricacid100g,
    String? lauricacid100g,
    String? myristicacid100g,
    String? palmiticacid100g,
    String? stearicacid100g,
    String? arachidicacid100g,
    String? behenicacid100g,
    String? lignocericacid100g,
    String? ceroticacid100g,
    String? montanicacid100g,
    String? melissicacid100g,
    String? monounsaturatedfat100g,
    String? polyunsaturatedfat100g,
    String? omega3fat100g,
    String? alphalinolenicacid100g,
    String? eicosapentaenoicacid100g,
    String? docosahexaenoicacid100g,
    String? omega6fat100g,
    String? linoleicacid100g,
    String? arachidonicacid100g,
    String? gammalinolenicacid100g,
    String? dihomogammalinolenicacid100g,
    String? omega9fat100g,
    String? oleicacid100g,
    String? elaidicacid100g,
    String? gondoicacid100g,
    String? meadacid100g,
    String? erucicacid100g,
    String? nervonicacid100g,
    String? transfat100g,
    String? cholesterol100g,
    String? fiber100g,
    String? sodium100g,
    String? alcohol100g,
    String? vitamina100g,
    String? vitamind100g,
    String? vitamine100g,
    String? vitamink100g,
    String? vitaminc100g,
    String? vitaminb1100g,
    String? vitaminb2100g,
    String? vitaminpp100g,
    String? vitaminb6100g,
    String? vitaminb9100g,
    String? vitaminb12100g,
    String? biotin100g,
    String? pantothenicacid100g,
    String? silica100g,
    String? bicarbonate100g,
    String? potassium100g,
    String? chloride100g,
    String? calcium100g,
    String? phosphorus100g,
    String? iron100g,
    String? magnesium100g,
    String? zinc100g,
    String? copper100g,
    String? manganese100g,
    String? fluoride100g,
    String? selenium100g,
    String? chromium100g,
    String? molybdenum100g,
    String? iodine100g,
    String? caffeine100g,
    String? taurine100g,
    String? ph100g,
    String? fruitsvegetablesnuts100g,
  }) {
    return Nutriments(
      energy100g: energy100g ?? this.energy100g,
      energykj100g: energykj100g ?? this.energykj100g,
      energykcal100g: energykcal100g ?? this.energykcal100g,
      proteins100g: proteins100g ?? this.proteins100g,
      casein100g: casein100g ?? this.casein100g,
      serumproteins100g: serumproteins100g ?? this.serumproteins100g,
      nucleotides100g: nucleotides100g ?? this.nucleotides100g,
      carbohydrates100g: carbohydrates100g ?? this.carbohydrates100g,
      sugars100g: sugars100g ?? this.sugars100g,
      sucrose100g: sucrose100g ?? this.sucrose100g,
      glucose100g: glucose100g ?? this.glucose100g,
      fructose100g: fructose100g ?? this.fructose100g,
      lactose100g: lactose100g ?? this.lactose100g,
      maltose100g: maltose100g ?? this.maltose100g,
      maltodextrins100g: maltodextrins100g ?? this.maltodextrins100g,
      starch100g: starch100g ?? this.starch100g,
      polyols100g: polyols100g ?? this.polyols100g,
      fat100g: fat100g ?? this.fat100g,
      saturatedfat100g: saturatedfat100g ?? this.saturatedfat100g,
      butyricacid100g: butyricacid100g ?? this.butyricacid100g,
      caproicacid100g: caproicacid100g ?? this.caproicacid100g,
      caprylicacid100g: caprylicacid100g ?? this.caprylicacid100g,
      capricacid100g: capricacid100g ?? this.capricacid100g,
      lauricacid100g: lauricacid100g ?? this.lauricacid100g,
      myristicacid100g: myristicacid100g ?? this.myristicacid100g,
      palmiticacid100g: palmiticacid100g ?? this.palmiticacid100g,
      stearicacid100g: stearicacid100g ?? this.stearicacid100g,
      arachidicacid100g: arachidicacid100g ?? this.arachidicacid100g,
      behenicacid100g: behenicacid100g ?? this.behenicacid100g,
      lignocericacid100g: lignocericacid100g ?? this.lignocericacid100g,
      ceroticacid100g: ceroticacid100g ?? this.ceroticacid100g,
      montanicacid100g: montanicacid100g ?? this.montanicacid100g,
      melissicacid100g: melissicacid100g ?? this.melissicacid100g,
      monounsaturatedfat100g: monounsaturatedfat100g ?? this.monounsaturatedfat100g,
      polyunsaturatedfat100g: polyunsaturatedfat100g ?? this.polyunsaturatedfat100g,
      omega3fat100g: omega3fat100g ?? this.omega3fat100g,
      alphalinolenicacid100g: alphalinolenicacid100g ?? this.alphalinolenicacid100g,
      eicosapentaenoicacid100g: eicosapentaenoicacid100g ?? this.eicosapentaenoicacid100g,
      docosahexaenoicacid100g: docosahexaenoicacid100g ?? this.docosahexaenoicacid100g,
      omega6fat100g: omega6fat100g ?? this.omega6fat100g,
      linoleicacid100g: linoleicacid100g ?? this.linoleicacid100g,
      arachidonicacid100g: arachidonicacid100g ?? this.arachidonicacid100g,
      gammalinolenicacid100g: gammalinolenicacid100g ?? this.gammalinolenicacid100g,
      dihomogammalinolenicacid100g: dihomogammalinolenicacid100g ?? this.dihomogammalinolenicacid100g,
      omega9fat100g: omega9fat100g ?? this.omega9fat100g,
      oleicacid100g: oleicacid100g ?? this.oleicacid100g,
      elaidicacid100g: elaidicacid100g ?? this.elaidicacid100g,
      gondoicacid100g: gondoicacid100g ?? this.gondoicacid100g,
      meadacid100g: meadacid100g ?? this.meadacid100g,
      erucicacid100g: erucicacid100g ?? this.erucicacid100g,
      nervonicacid100g: nervonicacid100g ?? this.nervonicacid100g,
      transfat100g: transfat100g ?? this.transfat100g,
      cholesterol100g: cholesterol100g ?? this.cholesterol100g,
      fiber100g: fiber100g ?? this.fiber100g,
      sodium100g: sodium100g ?? this.sodium100g,
      alcohol100g: alcohol100g ?? this.alcohol100g,
      vitamina100g: vitamina100g ?? this.vitamina100g,
      vitamind100g: vitamind100g ?? this.vitamind100g,
      vitamine100g: vitamine100g ?? this.vitamine100g,
      vitamink100g: vitamink100g ?? this.vitamink100g,
      vitaminc100g: vitaminc100g ?? this.vitaminc100g,
      vitaminb1100g: vitaminb1100g ?? this.vitaminb1100g,
      vitaminb2100g: vitaminb2100g ?? this.vitaminb2100g,
      vitaminpp100g: vitaminpp100g ?? this.vitaminpp100g,
      vitaminb6100g: vitaminb6100g ?? this.vitaminb6100g,
      vitaminb9100g: vitaminb9100g ?? this.vitaminb9100g,
      vitaminb12100g: vitaminb12100g ?? this.vitaminb12100g,
      biotin100g: biotin100g ?? this.biotin100g,
      pantothenicacid100g: pantothenicacid100g ?? this.pantothenicacid100g,
      silica100g: silica100g ?? this.silica100g,
      bicarbonate100g: bicarbonate100g ?? this.bicarbonate100g,
      potassium100g: potassium100g ?? this.potassium100g,
      chloride100g: chloride100g ?? this.chloride100g,
      calcium100g: calcium100g ?? this.calcium100g,
      phosphorus100g: phosphorus100g ?? this.phosphorus100g,
      iron100g: iron100g ?? this.iron100g,
      magnesium100g: magnesium100g ?? this.magnesium100g,
      zinc100g: zinc100g ?? this.zinc100g,
      copper100g: copper100g ?? this.copper100g,
      manganese100g: manganese100g ?? this.manganese100g,
      fluoride100g: fluoride100g ?? this.fluoride100g,
      selenium100g: selenium100g ?? this.selenium100g,
      chromium100g: chromium100g ?? this.chromium100g,
      molybdenum100g: molybdenum100g ?? this.molybdenum100g,
      iodine100g: iodine100g ?? this.iodine100g,
      caffeine100g: caffeine100g ?? this.caffeine100g,
      taurine100g: taurine100g ?? this.taurine100g,
      ph100g: ph100g ?? this.ph100g,
      fruitsvegetablesnuts100g: fruitsvegetablesnuts100g ?? this.fruitsvegetablesnuts100g,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'energy100g': energy100g,
      'energykj100g': energykj100g,
      'energykcal100g': energykcal100g,
      'proteins100g': proteins100g,
      'casein100g': casein100g,
      'serumproteins100g': serumproteins100g,
      'nucleotides100g': nucleotides100g,
      'carbohydrates100g': carbohydrates100g,
      'sugars100g': sugars100g,
      'sucrose100g': sucrose100g,
      'glucose100g': glucose100g,
      'fructose100g': fructose100g,
      'lactose100g': lactose100g,
      'maltose100g': maltose100g,
      'maltodextrins100g': maltodextrins100g,
      'starch100g': starch100g,
      'polyols100g': polyols100g,
      'fat100g': fat100g,
      'saturatedfat100g': saturatedfat100g,
      'butyricacid100g': butyricacid100g,
      'caproicacid100g': caproicacid100g,
      'caprylicacid100g': caprylicacid100g,
      'capricacid100g': capricacid100g,
      'lauricacid100g': lauricacid100g,
      'myristicacid100g': myristicacid100g,
      'palmiticacid100g': palmiticacid100g,
      'stearicacid100g': stearicacid100g,
      'arachidicacid100g': arachidicacid100g,
      'behenicacid100g': behenicacid100g,
      'lignocericacid100g': lignocericacid100g,
      'ceroticacid100g': ceroticacid100g,
      'montanicacid100g': montanicacid100g,
      'melissicacid100g': melissicacid100g,
      'monounsaturatedfat100g': monounsaturatedfat100g,
      'polyunsaturatedfat100g': polyunsaturatedfat100g,
      'omega3fat100g': omega3fat100g,
      'alphalinolenicacid100g': alphalinolenicacid100g,
      'eicosapentaenoicacid100g': eicosapentaenoicacid100g,
      'docosahexaenoicacid100g': docosahexaenoicacid100g,
      'omega6fat100g': omega6fat100g,
      'linoleicacid100g': linoleicacid100g,
      'arachidonicacid100g': arachidonicacid100g,
      'gammalinolenicacid100g': gammalinolenicacid100g,
      'dihomogammalinolenicacid100g': dihomogammalinolenicacid100g,
      'omega9fat100g': omega9fat100g,
      'oleicacid100g': oleicacid100g,
      'elaidicacid100g': elaidicacid100g,
      'gondoicacid100g': gondoicacid100g,
      'meadacid100g': meadacid100g,
      'erucicacid100g': erucicacid100g,
      'nervonicacid100g': nervonicacid100g,
      'transfat100g': transfat100g,
      'cholesterol100g': cholesterol100g,
      'fiber100g': fiber100g,
      'sodium100g': sodium100g,
      'alcohol100g': alcohol100g,
      'vitamina100g': vitamina100g,
      'vitamind100g': vitamind100g,
      'vitamine100g': vitamine100g,
      'vitamink100g': vitamink100g,
      'vitaminc100g': vitaminc100g,
      'vitaminb1100g': vitaminb1100g,
      'vitaminb2100g': vitaminb2100g,
      'vitaminpp100g': vitaminpp100g,
      'vitaminb6100g': vitaminb6100g,
      'vitaminb9100g': vitaminb9100g,
      'vitaminb12100g': vitaminb12100g,
      'biotin100g': biotin100g,
      'pantothenicacid100g': pantothenicacid100g,
      'silica100g': silica100g,
      'bicarbonate100g': bicarbonate100g,
      'potassium100g': potassium100g,
      'chloride100g': chloride100g,
      'calcium100g': calcium100g,
      'phosphorus100g': phosphorus100g,
      'iron100g': iron100g,
      'magnesium100g': magnesium100g,
      'zinc100g': zinc100g,
      'copper100g': copper100g,
      'manganese100g': manganese100g,
      'fluoride100g': fluoride100g,
      'selenium100g': selenium100g,
      'chromium100g': chromium100g,
      'molybdenum100g': molybdenum100g,
      'iodine100g': iodine100g,
      'caffeine100g': caffeine100g,
      'taurine100g': taurine100g,
      'ph100g': ph100g,
      'fruitsvegetablesnuts100g': fruitsvegetablesnuts100g,
    };
  }

  factory Nutriments.fromMap(Map<String, dynamic> map) {
    return Nutriments(
      energy100g: map['energy100g'],
      energykj100g: map['energykj100g'],
      energykcal100g: map['energykcal100g'],
      proteins100g: map['proteins100g'],
      casein100g: map['casein100g'],
      serumproteins100g: map['serumproteins100g'],
      nucleotides100g: map['nucleotides100g'],
      carbohydrates100g: map['carbohydrates100g'],
      sugars100g: map['sugars100g'],
      sucrose100g: map['sucrose100g'],
      glucose100g: map['glucose100g'],
      fructose100g: map['fructose100g'],
      lactose100g: map['lactose100g'],
      maltose100g: map['maltose100g'],
      maltodextrins100g: map['maltodextrins100g'],
      starch100g: map['starch100g'],
      polyols100g: map['polyols100g'],
      fat100g: map['fat100g'],
      saturatedfat100g: map['saturatedfat100g'],
      butyricacid100g: map['butyricacid100g'],
      caproicacid100g: map['caproicacid100g'],
      caprylicacid100g: map['caprylicacid100g'],
      capricacid100g: map['capricacid100g'],
      lauricacid100g: map['lauricacid100g'],
      myristicacid100g: map['myristicacid100g'],
      palmiticacid100g: map['palmiticacid100g'],
      stearicacid100g: map['stearicacid100g'],
      arachidicacid100g: map['arachidicacid100g'],
      behenicacid100g: map['behenicacid100g'],
      lignocericacid100g: map['lignocericacid100g'],
      ceroticacid100g: map['ceroticacid100g'],
      montanicacid100g: map['montanicacid100g'],
      melissicacid100g: map['melissicacid100g'],
      monounsaturatedfat100g: map['monounsaturatedfat100g'],
      polyunsaturatedfat100g: map['polyunsaturatedfat100g'],
      omega3fat100g: map['omega3fat100g'],
      alphalinolenicacid100g: map['alphalinolenicacid100g'],
      eicosapentaenoicacid100g: map['eicosapentaenoicacid100g'],
      docosahexaenoicacid100g: map['docosahexaenoicacid100g'],
      omega6fat100g: map['omega6fat100g'],
      linoleicacid100g: map['linoleicacid100g'],
      arachidonicacid100g: map['arachidonicacid100g'],
      gammalinolenicacid100g: map['gammalinolenicacid100g'],
      dihomogammalinolenicacid100g: map['dihomogammalinolenicacid100g'],
      omega9fat100g: map['omega9fat100g'],
      oleicacid100g: map['oleicacid100g'],
      elaidicacid100g: map['elaidicacid100g'],
      gondoicacid100g: map['gondoicacid100g'],
      meadacid100g: map['meadacid100g'],
      erucicacid100g: map['erucicacid100g'],
      nervonicacid100g: map['nervonicacid100g'],
      transfat100g: map['transfat100g'],
      cholesterol100g: map['cholesterol100g'],
      fiber100g: map['fiber100g'],
      sodium100g: map['sodium100g'],
      alcohol100g: map['alcohol100g'],
      vitamina100g: map['vitamina100g'],
      vitamind100g: map['vitamind100g'],
      vitamine100g: map['vitamine100g'],
      vitamink100g: map['vitamink100g'],
      vitaminc100g: map['vitaminc100g'],
      vitaminb1100g: map['vitaminb1100g'],
      vitaminb2100g: map['vitaminb2100g'],
      vitaminpp100g: map['vitaminpp100g'],
      vitaminb6100g: map['vitaminb6100g'],
      vitaminb9100g: map['vitaminb9100g'],
      vitaminb12100g: map['vitaminb12100g'],
      biotin100g: map['biotin100g'],
      pantothenicacid100g: map['pantothenicacid100g'],
      silica100g: map['silica100g'],
      bicarbonate100g: map['bicarbonate100g'],
      potassium100g: map['potassium100g'],
      chloride100g: map['chloride100g'],
      calcium100g: map['calcium100g'],
      phosphorus100g: map['phosphorus100g'],
      iron100g: map['iron100g'],
      magnesium100g: map['magnesium100g'],
      zinc100g: map['zinc100g'],
      copper100g: map['copper100g'],
      manganese100g: map['manganese100g'],
      fluoride100g: map['fluoride100g'],
      selenium100g: map['selenium100g'],
      chromium100g: map['chromium100g'],
      molybdenum100g: map['molybdenum100g'],
      iodine100g: map['iodine100g'],
      caffeine100g: map['caffeine100g'],
      taurine100g: map['taurine100g'],
      ph100g: map['ph100g'],
      fruitsvegetablesnuts100g: map['fruitsvegetablesnuts100g'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Nutriments.fromJson(String source) => Nutriments.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Nutriments(energy100g: $energy100g, energykj100g: $energykj100g, energykcal100g: $energykcal100g, proteins100g: $proteins100g, casein100g: $casein100g, serumproteins100g: $serumproteins100g, nucleotides100g: $nucleotides100g, carbohydrates100g: $carbohydrates100g, sugars100g: $sugars100g, sucrose100g: $sucrose100g, glucose100g: $glucose100g, fructose100g: $fructose100g, lactose100g: $lactose100g, maltose100g: $maltose100g, maltodextrins100g: $maltodextrins100g, starch100g: $starch100g, polyols100g: $polyols100g, fat100g: $fat100g, saturatedfat100g: $saturatedfat100g, butyricacid100g: $butyricacid100g, caproicacid100g: $caproicacid100g, caprylicacid100g: $caprylicacid100g, capricacid100g: $capricacid100g, lauricacid100g: $lauricacid100g, myristicacid100g: $myristicacid100g, palmiticacid100g: $palmiticacid100g, stearicacid100g: $stearicacid100g, arachidicacid100g: $arachidicacid100g, behenicacid100g: $behenicacid100g, lignocericacid100g: $lignocericacid100g, ceroticacid100g: $ceroticacid100g, montanicacid100g: $montanicacid100g, melissicacid100g: $melissicacid100g, monounsaturatedfat100g: $monounsaturatedfat100g, polyunsaturatedfat100g: $polyunsaturatedfat100g, omega3fat100g: $omega3fat100g, alphalinolenicacid100g: $alphalinolenicacid100g, eicosapentaenoicacid100g: $eicosapentaenoicacid100g, docosahexaenoicacid100g: $docosahexaenoicacid100g, omega6fat100g: $omega6fat100g, linoleicacid100g: $linoleicacid100g, arachidonicacid100g: $arachidonicacid100g, gammalinolenicacid100g: $gammalinolenicacid100g, dihomogammalinolenicacid100g: $dihomogammalinolenicacid100g, omega9fat100g: $omega9fat100g, oleicacid100g: $oleicacid100g, elaidicacid100g: $elaidicacid100g, gondoicacid100g: $gondoicacid100g, meadacid100g: $meadacid100g, erucicacid100g: $erucicacid100g, nervonicacid100g: $nervonicacid100g, transfat100g: $transfat100g, cholesterol100g: $cholesterol100g, fiber100g: $fiber100g, sodium100g: $sodium100g, alcohol100g: $alcohol100g, vitamina100g: $vitamina100g, vitamind100g: $vitamind100g, vitamine100g: $vitamine100g, vitamink100g: $vitamink100g, vitaminc100g: $vitaminc100g, vitaminb1100g: $vitaminb1100g, vitaminb2100g: $vitaminb2100g, vitaminpp100g: $vitaminpp100g, vitaminb6100g: $vitaminb6100g, vitaminb9100g: $vitaminb9100g, vitaminb12100g: $vitaminb12100g, biotin100g: $biotin100g, pantothenicacid100g: $pantothenicacid100g, silica100g: $silica100g, bicarbonate100g: $bicarbonate100g, potassium100g: $potassium100g, chloride100g: $chloride100g, calcium100g: $calcium100g, phosphorus100g: $phosphorus100g, iron100g: $iron100g, magnesium100g: $magnesium100g, zinc100g: $zinc100g, copper100g: $copper100g, manganese100g: $manganese100g, fluoride100g: $fluoride100g, selenium100g: $selenium100g, chromium100g: $chromium100g, molybdenum100g: $molybdenum100g, iodine100g: $iodine100g, caffeine100g: $caffeine100g, taurine100g: $taurine100g, ph100g: $ph100g, fruitsvegetablesnuts100g: $fruitsvegetablesnuts100g)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is Nutriments &&
      other.energy100g == energy100g &&
      other.energykj100g == energykj100g &&
      other.energykcal100g == energykcal100g &&
      other.proteins100g == proteins100g &&
      other.casein100g == casein100g &&
      other.serumproteins100g == serumproteins100g &&
      other.nucleotides100g == nucleotides100g &&
      other.carbohydrates100g == carbohydrates100g &&
      other.sugars100g == sugars100g &&
      other.sucrose100g == sucrose100g &&
      other.glucose100g == glucose100g &&
      other.fructose100g == fructose100g &&
      other.lactose100g == lactose100g &&
      other.maltose100g == maltose100g &&
      other.maltodextrins100g == maltodextrins100g &&
      other.starch100g == starch100g &&
      other.polyols100g == polyols100g &&
      other.fat100g == fat100g &&
      other.saturatedfat100g == saturatedfat100g &&
      other.butyricacid100g == butyricacid100g &&
      other.caproicacid100g == caproicacid100g &&
      other.caprylicacid100g == caprylicacid100g &&
      other.capricacid100g == capricacid100g &&
      other.lauricacid100g == lauricacid100g &&
      other.myristicacid100g == myristicacid100g &&
      other.palmiticacid100g == palmiticacid100g &&
      other.stearicacid100g == stearicacid100g &&
      other.arachidicacid100g == arachidicacid100g &&
      other.behenicacid100g == behenicacid100g &&
      other.lignocericacid100g == lignocericacid100g &&
      other.ceroticacid100g == ceroticacid100g &&
      other.montanicacid100g == montanicacid100g &&
      other.melissicacid100g == melissicacid100g &&
      other.monounsaturatedfat100g == monounsaturatedfat100g &&
      other.polyunsaturatedfat100g == polyunsaturatedfat100g &&
      other.omega3fat100g == omega3fat100g &&
      other.alphalinolenicacid100g == alphalinolenicacid100g &&
      other.eicosapentaenoicacid100g == eicosapentaenoicacid100g &&
      other.docosahexaenoicacid100g == docosahexaenoicacid100g &&
      other.omega6fat100g == omega6fat100g &&
      other.linoleicacid100g == linoleicacid100g &&
      other.arachidonicacid100g == arachidonicacid100g &&
      other.gammalinolenicacid100g == gammalinolenicacid100g &&
      other.dihomogammalinolenicacid100g == dihomogammalinolenicacid100g &&
      other.omega9fat100g == omega9fat100g &&
      other.oleicacid100g == oleicacid100g &&
      other.elaidicacid100g == elaidicacid100g &&
      other.gondoicacid100g == gondoicacid100g &&
      other.meadacid100g == meadacid100g &&
      other.erucicacid100g == erucicacid100g &&
      other.nervonicacid100g == nervonicacid100g &&
      other.transfat100g == transfat100g &&
      other.cholesterol100g == cholesterol100g &&
      other.fiber100g == fiber100g &&
      other.sodium100g == sodium100g &&
      other.alcohol100g == alcohol100g &&
      other.vitamina100g == vitamina100g &&
      other.vitamind100g == vitamind100g &&
      other.vitamine100g == vitamine100g &&
      other.vitamink100g == vitamink100g &&
      other.vitaminc100g == vitaminc100g &&
      other.vitaminb1100g == vitaminb1100g &&
      other.vitaminb2100g == vitaminb2100g &&
      other.vitaminpp100g == vitaminpp100g &&
      other.vitaminb6100g == vitaminb6100g &&
      other.vitaminb9100g == vitaminb9100g &&
      other.vitaminb12100g == vitaminb12100g &&
      other.biotin100g == biotin100g &&
      other.pantothenicacid100g == pantothenicacid100g &&
      other.silica100g == silica100g &&
      other.bicarbonate100g == bicarbonate100g &&
      other.potassium100g == potassium100g &&
      other.chloride100g == chloride100g &&
      other.calcium100g == calcium100g &&
      other.phosphorus100g == phosphorus100g &&
      other.iron100g == iron100g &&
      other.magnesium100g == magnesium100g &&
      other.zinc100g == zinc100g &&
      other.copper100g == copper100g &&
      other.manganese100g == manganese100g &&
      other.fluoride100g == fluoride100g &&
      other.selenium100g == selenium100g &&
      other.chromium100g == chromium100g &&
      other.molybdenum100g == molybdenum100g &&
      other.iodine100g == iodine100g &&
      other.caffeine100g == caffeine100g &&
      other.taurine100g == taurine100g &&
      other.ph100g == ph100g &&
      other.fruitsvegetablesnuts100g == fruitsvegetablesnuts100g;
  }

  @override
  int get hashCode {
    return energy100g.hashCode ^
      energykj100g.hashCode ^
      energykcal100g.hashCode ^
      proteins100g.hashCode ^
      casein100g.hashCode ^
      serumproteins100g.hashCode ^
      nucleotides100g.hashCode ^
      carbohydrates100g.hashCode ^
      sugars100g.hashCode ^
      sucrose100g.hashCode ^
      glucose100g.hashCode ^
      fructose100g.hashCode ^
      lactose100g.hashCode ^
      maltose100g.hashCode ^
      maltodextrins100g.hashCode ^
      starch100g.hashCode ^
      polyols100g.hashCode ^
      fat100g.hashCode ^
      saturatedfat100g.hashCode ^
      butyricacid100g.hashCode ^
      caproicacid100g.hashCode ^
      caprylicacid100g.hashCode ^
      capricacid100g.hashCode ^
      lauricacid100g.hashCode ^
      myristicacid100g.hashCode ^
      palmiticacid100g.hashCode ^
      stearicacid100g.hashCode ^
      arachidicacid100g.hashCode ^
      behenicacid100g.hashCode ^
      lignocericacid100g.hashCode ^
      ceroticacid100g.hashCode ^
      montanicacid100g.hashCode ^
      melissicacid100g.hashCode ^
      monounsaturatedfat100g.hashCode ^
      polyunsaturatedfat100g.hashCode ^
      omega3fat100g.hashCode ^
      alphalinolenicacid100g.hashCode ^
      eicosapentaenoicacid100g.hashCode ^
      docosahexaenoicacid100g.hashCode ^
      omega6fat100g.hashCode ^
      linoleicacid100g.hashCode ^
      arachidonicacid100g.hashCode ^
      gammalinolenicacid100g.hashCode ^
      dihomogammalinolenicacid100g.hashCode ^
      omega9fat100g.hashCode ^
      oleicacid100g.hashCode ^
      elaidicacid100g.hashCode ^
      gondoicacid100g.hashCode ^
      meadacid100g.hashCode ^
      erucicacid100g.hashCode ^
      nervonicacid100g.hashCode ^
      transfat100g.hashCode ^
      cholesterol100g.hashCode ^
      fiber100g.hashCode ^
      sodium100g.hashCode ^
      alcohol100g.hashCode ^
      vitamina100g.hashCode ^
      vitamind100g.hashCode ^
      vitamine100g.hashCode ^
      vitamink100g.hashCode ^
      vitaminc100g.hashCode ^
      vitaminb1100g.hashCode ^
      vitaminb2100g.hashCode ^
      vitaminpp100g.hashCode ^
      vitaminb6100g.hashCode ^
      vitaminb9100g.hashCode ^
      vitaminb12100g.hashCode ^
      biotin100g.hashCode ^
      pantothenicacid100g.hashCode ^
      silica100g.hashCode ^
      bicarbonate100g.hashCode ^
      potassium100g.hashCode ^
      chloride100g.hashCode ^
      calcium100g.hashCode ^
      phosphorus100g.hashCode ^
      iron100g.hashCode ^
      magnesium100g.hashCode ^
      zinc100g.hashCode ^
      copper100g.hashCode ^
      manganese100g.hashCode ^
      fluoride100g.hashCode ^
      selenium100g.hashCode ^
      chromium100g.hashCode ^
      molybdenum100g.hashCode ^
      iodine100g.hashCode ^
      caffeine100g.hashCode ^
      taurine100g.hashCode ^
      ph100g.hashCode ^
      fruitsvegetablesnuts100g.hashCode;
  }
}
