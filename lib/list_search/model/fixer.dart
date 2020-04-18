class Fixer {
  bool success;
  int timestamp;
  String base;
  String date;
  Rates rates;

  Fixer({this.success, this.timestamp, this.base, this.date, this.rates});

  Fixer.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    timestamp = json['timestamp'];
    base = json['base'];
    date = json['date'];
    rates = json['rates'] != null ? new Rates.fromJson(json['rates']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this.success;
    data['timestamp'] = this.timestamp;
    data['base'] = this.base;
    data['date'] = this.date;
    if (this.rates != null) {
      data['rates'] = this.rates.toJson();
    }
    return data;
  }
}

class RatesModel {
  final String key;
  final double value;

  RatesModel(this.key, this.value);
}

class Rates {
  String key;
  double aED;
  double aFN;
  double aLL;
  double aMD;
  double aNG;
  double aOA;
  double aRS;
  double aUD;
  double aWG;
  double aZN;
  double bAM;
  double bBD;
  double bDT;
  double bGN;
  double bHD;
  double bIF;
  double bMD;
  double bND;
  double bOB;
  double bRL;
  double bSD;
  double bTC;
  double bTN;
  double bWP;
  double bYN;
  double bYR;
  double bZD;
  double cAD;
  double cDF;
  double cHF;
  double cLF;
  double cLP;
  double cNY;
  double cOP;
  double cRC;
  double cUC;
  double cUP;
  double cVE;
  double cZK;
  double dJF;
  double dKK;
  double dOP;
  double dZD;
  double eGP;
  double eRN;
  double eTB;
  double eUR;
  double fJD;
  double fKP;
  double gBP;
  double gEL;
  double gGP;
  double gHS;
  double gIP;
  double gMD;
  double gNF;
  double gTQ;
  double gYD;
  double hKD;
  double hNL;
  double hRK;
  double hTG;
  double hUF;
  double iDR;
  double iLS;
  double iMP;
  double iNR;
  double iQD;
  double iRR;
  double iSK;
  double jEP;
  double jMD;
  double jOD;
  double jPY;
  double kES;
  double kGS;
  double kHR;
  double kMF;
  double kPW;
  double kRW;
  double kWD;
  double kYD;
  double kZT;
  double lAK;
  double lBP;
  double lKR;
  double lRD;
  double lSL;
  double lTL;
  double lVL;
  double lYD;
  double mAD;
  double mDL;
  double mGA;
  double mKD;
  double mMK;
  double mNT;
  double mOP;
  double mRO;
  double mUR;
  double mVR;
  double mWK;
  double mXN;
  double mYR;
  double mZN;
  double nAD;
  double nGN;
  double nIO;
  double nOK;
  double nPR;
  double nZD;
  double oMR;
  double pAB;
  double pEN;
  double pGK;
  double pHP;
  double pKR;
  double pLN;
  double pYG;
  double qAR;
  double rON;
  double rSD;
  double rUB;
  double rWF;
  double sAR;
  double sBD;
  double sCR;
  double sDG;
  double sEK;
  double sGD;
  double sHP;
  double sLL;
  double sOS;
  double sRD;
  double sTD;
  double sVC;
  double sYP;
  double sZL;
  double tHB;
  double tJS;
  double tMT;
  double tND;
  double tOP;
  double tRY;
  double tTD;
  double tWD;
  double tZS;
  double uAH;
  double uGX;
  double uSD;
  double uYU;
  double uZS;
  double vEF;
  double vND;
  double vUV;
  double wST;
  double xAF;
  double xAG;
  double xAU;
  double xCD;
  double xDR;
  double xOF;
  double xPF;
  double yER;
  double zAR;
  double zMK;
  double zMW;
  double zWL;

  Rates(
      {this.key,
      this.aED,
      this.aFN,
      this.aLL,
      this.aMD,
      this.aNG,
      this.aOA,
      this.aRS,
      this.aUD,
      this.aWG,
      this.aZN,
      this.bAM,
      this.bBD,
      this.bDT,
      this.bGN,
      this.bHD,
      this.bIF,
      this.bMD,
      this.bND,
      this.bOB,
      this.bRL,
      this.bSD,
      this.bTC,
      this.bTN,
      this.bWP,
      this.bYN,
      this.bYR,
      this.bZD,
      this.cAD,
      this.cDF,
      this.cHF,
      this.cLF,
      this.cLP,
      this.cNY,
      this.cOP,
      this.cRC,
      this.cUC,
      this.cUP,
      this.cVE,
      this.cZK,
      this.dJF,
      this.dKK,
      this.dOP,
      this.dZD,
      this.eGP,
      this.eRN,
      this.eTB,
      this.eUR,
      this.fJD,
      this.fKP,
      this.gBP,
      this.gEL,
      this.gGP,
      this.gHS,
      this.gIP,
      this.gMD,
      this.gNF,
      this.gTQ,
      this.gYD,
      this.hKD,
      this.hNL,
      this.hRK,
      this.hTG,
      this.hUF,
      this.iDR,
      this.iLS,
      this.iMP,
      this.iNR,
      this.iQD,
      this.iRR,
      this.iSK,
      this.jEP,
      this.jMD,
      this.jOD,
      this.jPY,
      this.kES,
      this.kGS,
      this.kHR,
      this.kMF,
      this.kPW,
      this.kRW,
      this.kWD,
      this.kYD,
      this.kZT,
      this.lAK,
      this.lBP,
      this.lKR,
      this.lRD,
      this.lSL,
      this.lTL,
      this.lVL,
      this.lYD,
      this.mAD,
      this.mDL,
      this.mGA,
      this.mKD,
      this.mMK,
      this.mNT,
      this.mOP,
      this.mRO,
      this.mUR,
      this.mVR,
      this.mWK,
      this.mXN,
      this.mYR,
      this.mZN,
      this.nAD,
      this.nGN,
      this.nIO,
      this.nOK,
      this.nPR,
      this.nZD,
      this.oMR,
      this.pAB,
      this.pEN,
      this.pGK,
      this.pHP,
      this.pKR,
      this.pLN,
      this.pYG,
      this.qAR,
      this.rON,
      this.rSD,
      this.rUB,
      this.rWF,
      this.sAR,
      this.sBD,
      this.sCR,
      this.sDG,
      this.sEK,
      this.sGD,
      this.sHP,
      this.sLL,
      this.sOS,
      this.sRD,
      this.sTD,
      this.sVC,
      this.sYP,
      this.sZL,
      this.tHB,
      this.tJS,
      this.tMT,
      this.tND,
      this.tOP,
      this.tRY,
      this.tTD,
      this.tWD,
      this.tZS,
      this.uAH,
      this.uGX,
      this.uSD,
      this.uYU,
      this.uZS,
      this.vEF,
      this.vND,
      this.vUV,
      this.wST,
      this.xAF,
      this.xAG,
      this.xAU,
      this.xCD,
      this.xDR,
      this.xOF,
      this.xPF,
      this.yER,
      this.zAR,
      this.zMK,
      this.zMW,
      this.zWL});

  Rates.fromJson(Map<String, dynamic> json) {
    aED = json['AED'];
    aFN = json['AFN'];
    aLL = json['ALL'];
    aMD = json['AMD'];
    aNG = json['ANG'];
    aOA = json['AOA'];
    aRS = json['ARS'];
    aUD = json['AUD'];
    aWG = json['AWG'];
    aZN = json['AZN'];
    bAM = json['BAM'];
    bBD = json['BBD'];
    bDT = json['BDT'];
    bGN = json['BGN'];
    bHD = json['BHD'];
    bIF = json['BIF'];
    bMD = json['BMD'];
    bND = json['BND'];
    bOB = json['BOB'];
    bRL = json['BRL'];
    bSD = json['BSD'];
    bTC = json['BTC'];
    bTN = json['BTN'];
    bWP = json['BWP'];
    bYN = json['BYN'];
    bYR = json['BYR'];
    bZD = json['BZD'];
    cAD = json['CAD'];
    cDF = json['CDF'];
    cHF = json['CHF'];
    cLF = json['CLF'];
    cLP = json['CLP'];
    cNY = json['CNY'];
    cOP = json['COP'];
    cRC = json['CRC'];
    cUC = json['CUC'];
    cUP = json['CUP'];
    cVE = json['CVE'];
    cZK = json['CZK'];
    dJF = json['DJF'];
    dKK = json['DKK'];
    dOP = json['DOP'];
    dZD = json['DZD'];
    eGP = json['EGP'];
    eRN = json['ERN'];
    eTB = json['ETB'];
    eUR = (json['EUR'] as int).toDouble();
    fJD = json['FJD'];
    fKP = json['FKP'];
    gBP = json['GBP'];
    gEL = json['GEL'];
    gGP = json['GGP'];
    gHS = json['GHS'];
    gIP = json['GIP'];
    gMD = json['GMD'];
    gNF = json['GNF'];
    gTQ = json['GTQ'];
    gYD = json['GYD'];
    hKD = json['HKD'];
    hNL = json['HNL'];
    hRK = json['HRK'];
    hTG = json['HTG'];
    hUF = json['HUF'];
    iDR = json['IDR'];
    iLS = json['ILS'];
    iMP = json['IMP'];
    iNR = json['INR'];
    iQD = json['IQD'];
    iRR = json['IRR'];
    iSK = json['ISK'];
    jEP = json['JEP'];
    jMD = json['JMD'];
    jOD = json['JOD'];
    jPY = json['JPY'];
    kES = json['KES'];
    kGS = json['KGS'];
    kHR = json['KHR'];
    kMF = json['KMF'];
    kPW = json['KPW'];
    kRW = json['KRW'];
    kWD = json['KWD'];
    kYD = json['KYD'];
    kZT = json['KZT'];
    lAK = json['LAK'];
    lBP = json['LBP'];
    lKR = json['LKR'];
    lRD = json['LRD'];
    lSL = json['LSL'];
    lTL = json['LTL'];
    lVL = json['LVL'];
    lYD = json['LYD'];
    mAD = json['MAD'];
    mDL = json['MDL'];
    mGA = json['MGA'];
    mKD = json['MKD'];
    mMK = json['MMK'];
    mNT = json['MNT'];
    mOP = json['MOP'];
    mRO = json['MRO'];
    mUR = json['MUR'];
    mVR = json['MVR'];
    mWK = json['MWK'];
    mXN = json['MXN'];
    mYR = json['MYR'];
    mZN = json['MZN'];
    nAD = json['NAD'];
    nGN = json['NGN'];
    nIO = json['NIO'];
    nOK = json['NOK'];
    nPR = json['NPR'];
    nZD = json['NZD'];
    oMR = json['OMR'];
    pAB = json['PAB'];
    pEN = json['PEN'];
    pGK = json['PGK'];
    pHP = json['PHP'];
    pKR = json['PKR'];
    pLN = json['PLN'];
    pYG = json['PYG'];
    qAR = json['QAR'];
    rON = json['RON'];
    rSD = json['RSD'];
    rUB = json['RUB'];
    rWF = json['RWF'];
    sAR = json['SAR'];
    sBD = json['SBD'];
    sCR = json['SCR'];
    sDG = json['SDG'];
    sEK = json['SEK'];
    sGD = json['SGD'];
    sHP = json['SHP'];
    sLL = json['SLL'];
    sOS = json['SOS'];
    sRD = json['SRD'];
    sTD = json['STD'];
    sVC = json['SVC'];
    sYP = json['SYP'];
    sZL = json['SZL'];
    tHB = json['THB'];
    tJS = json['TJS'];
    tMT = json['TMT'];
    tND = json['TND'];
    tOP = json['TOP'];
    tRY = json['TRY'];
    tTD = json['TTD'];
    tWD = json['TWD'];
    tZS = json['TZS'];
    uAH = json['UAH'];
    uGX = json['UGX'];
    uSD = json['USD'];
    uYU = json['UYU'];
    uZS = json['UZS'];
    vEF = json['VEF'];
    vND = json['VND'];
    vUV = json['VUV'];
    wST = json['WST'];
    xAF = json['XAF'];
    xAG = json['XAG'];
    xAU = json['XAU'];
    xCD = json['XCD'];
    xDR = json['XDR'];
    xOF = json['XOF'];
    xPF = json['XPF'];
    yER = json['YER'];
    zAR = json['ZAR'];
    zMK = json['ZMK'];
    zMW = json['ZMW'];
    zWL = json['ZWL'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, double> data = new Map<String, double>();
    data['AED'] = this.aED;
    data['AFN'] = this.aFN;
    data['ALL'] = this.aLL;
    data['AMD'] = this.aMD;
    data['ANG'] = this.aNG;
    data['AOA'] = this.aOA;
    data['ARS'] = this.aRS;
    data['AUD'] = this.aUD;
    data['AWG'] = this.aWG;
    data['AZN'] = this.aZN;
    data['BAM'] = this.bAM;
    data['BBD'] = this.bBD;
    data['BDT'] = this.bDT;
    data['BGN'] = this.bGN;
    data['BHD'] = this.bHD;
    data['BIF'] = this.bIF;
    data['BMD'] = this.bMD;
    data['BND'] = this.bND;
    data['BOB'] = this.bOB;
    data['BRL'] = this.bRL;
    data['BSD'] = this.bSD;
    data['BTC'] = this.bTC;
    data['BTN'] = this.bTN;
    data['BWP'] = this.bWP;
    data['BYN'] = this.bYN;
    data['BYR'] = this.bYR;
    data['BZD'] = this.bZD;
    data['CAD'] = this.cAD;
    data['CDF'] = this.cDF;
    data['CHF'] = this.cHF;
    data['CLF'] = this.cLF;
    data['CLP'] = this.cLP;
    data['CNY'] = this.cNY;
    data['COP'] = this.cOP;
    data['CRC'] = this.cRC;
    data['CUC'] = this.cUC;
    data['CUP'] = this.cUP;
    data['CVE'] = this.cVE;
    data['CZK'] = this.cZK;
    data['DJF'] = this.dJF;
    data['DKK'] = this.dKK;
    data['DOP'] = this.dOP;
    data['DZD'] = this.dZD;
    data['EGP'] = this.eGP;
    data['ERN'] = this.eRN;
    data['ETB'] = this.eTB;
    data['EUR'] = this.eUR;
    data['FJD'] = this.fJD;
    data['FKP'] = this.fKP;
    data['GBP'] = this.gBP;
    data['GEL'] = this.gEL;
    data['GGP'] = this.gGP;
    data['GHS'] = this.gHS;
    data['GIP'] = this.gIP;
    data['GMD'] = this.gMD;
    data['GNF'] = this.gNF;
    data['GTQ'] = this.gTQ;
    data['GYD'] = this.gYD;
    data['HKD'] = this.hKD;
    data['HNL'] = this.hNL;
    data['HRK'] = this.hRK;
    data['HTG'] = this.hTG;
    data['HUF'] = this.hUF;
    data['IDR'] = this.iDR;
    data['ILS'] = this.iLS;
    data['IMP'] = this.iMP;
    data['INR'] = this.iNR;
    data['IQD'] = this.iQD;
    data['IRR'] = this.iRR;
    data['ISK'] = this.iSK;
    data['JEP'] = this.jEP;
    data['JMD'] = this.jMD;
    data['JOD'] = this.jOD;
    data['JPY'] = this.jPY;
    data['KES'] = this.kES;
    data['KGS'] = this.kGS;
    data['KHR'] = this.kHR;
    data['KMF'] = this.kMF;
    data['KPW'] = this.kPW;
    data['KRW'] = this.kRW;
    data['KWD'] = this.kWD;
    data['KYD'] = this.kYD;
    data['KZT'] = this.kZT;
    data['LAK'] = this.lAK;
    data['LBP'] = this.lBP;
    data['LKR'] = this.lKR;
    data['LRD'] = this.lRD;
    data['LSL'] = this.lSL;
    data['LTL'] = this.lTL;
    data['LVL'] = this.lVL;
    data['LYD'] = this.lYD;
    data['MAD'] = this.mAD;
    data['MDL'] = this.mDL;
    data['MGA'] = this.mGA;
    data['MKD'] = this.mKD;
    data['MMK'] = this.mMK;
    data['MNT'] = this.mNT;
    data['MOP'] = this.mOP;
    data['MRO'] = this.mRO;
    data['MUR'] = this.mUR;
    data['MVR'] = this.mVR;
    data['MWK'] = this.mWK;
    data['MXN'] = this.mXN;
    data['MYR'] = this.mYR;
    data['MZN'] = this.mZN;
    data['NAD'] = this.nAD;
    data['NGN'] = this.nGN;
    data['NIO'] = this.nIO;
    data['NOK'] = this.nOK;
    data['NPR'] = this.nPR;
    data['NZD'] = this.nZD;
    data['OMR'] = this.oMR;
    data['PAB'] = this.pAB;
    data['PEN'] = this.pEN;
    data['PGK'] = this.pGK;
    data['PHP'] = this.pHP;
    data['PKR'] = this.pKR;
    data['PLN'] = this.pLN;
    data['PYG'] = this.pYG;
    data['QAR'] = this.qAR;
    data['RON'] = this.rON;
    data['RSD'] = this.rSD;
    data['RUB'] = this.rUB;
    data['RWF'] = this.rWF;
    data['SAR'] = this.sAR;
    data['SBD'] = this.sBD;
    data['SCR'] = this.sCR;
    data['SDG'] = this.sDG;
    data['SEK'] = this.sEK;
    data['SGD'] = this.sGD;
    data['SHP'] = this.sHP;
    data['SLL'] = this.sLL;
    data['SOS'] = this.sOS;
    data['SRD'] = this.sRD;
    data['STD'] = this.sTD;
    data['SVC'] = this.sVC;
    data['SYP'] = this.sYP;
    data['SZL'] = this.sZL;
    data['THB'] = this.tHB;
    data['TJS'] = this.tJS;
    data['TMT'] = this.tMT;
    data['TND'] = this.tND;
    data['TOP'] = this.tOP;
    data['TRY'] = this.tRY;
    data['TTD'] = this.tTD;
    data['TWD'] = this.tWD;
    data['TZS'] = this.tZS;
    data['UAH'] = this.uAH;
    data['UGX'] = this.uGX;
    data['USD'] = this.uSD;
    data['UYU'] = this.uYU;
    data['UZS'] = this.uZS;
    data['VEF'] = this.vEF;
    data['VND'] = this.vND;
    data['VUV'] = this.vUV;
    data['WST'] = this.wST;
    data['XAF'] = this.xAF;
    data['XAG'] = this.xAG;
    data['XAU'] = this.xAU;
    data['XCD'] = this.xCD;
    data['XDR'] = this.xDR;
    data['XOF'] = this.xOF;
    data['XPF'] = this.xPF;
    data['YER'] = this.yER;
    data['ZAR'] = this.zAR;
    data['ZMK'] = this.zMK;
    data['ZMW'] = this.zMW;
    data['ZWL'] = this.zWL;
    return data;
  }
}
