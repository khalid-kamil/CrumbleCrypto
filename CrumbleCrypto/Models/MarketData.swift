//
//  MarketData.swift
//  CrumbleCrypto
//
//  Created by Khalid Kamil on 22/12/2023.
//

import Foundation

// JSON Data:
/*
 URL: https://api.coingecko.com/api/v3/global

 JSON Response:
 {
   "data": {
     "active_cryptocurrencies": 11699,
     "upcoming_icos": 0,
     "ongoing_icos": 49,
     "ended_icos": 3376,
     "markets": 956,
     "total_market_cap": {
       "btc": 39719220.372110024,
       "eth": 751916084.7858418,
       "ltc": 24210999363.854145,
       "bch": 7323562817.4165125,
       "bnb": 6404727243.3796425,
       "eos": 2051519155944.712,
       "xrp": 2801136943328.7896,
       "xlm": 13852045788615.916,
       "link": 114335135738.30667,
       "dot": 215037114233.8493,
       "yfi": 205694494.33326644,
       "usd": 1734290702022.1926,
       "aed": 6368922459571.21,
       "ars": 1394740980567841.5,
       "aud": 2550248462963.1055,
       "bdt": 190032232866400.78,
       "bhd": 653834531825.1735,
       "bmd": 1734290702022.1926,
       "brl": 8474784944501.639,
       "cad": 2302590016423.6323,
       "chf": 1481786647261.2732,
       "clp": 1524580270333671,
       "cny": 12361677265873.77,
       "czk": 38654218024811.05,
       "dkk": 11736862620365.543,
       "eur": 1574116815655.529,
       "gbp": 1363450789790.1912,
       "gel": 4665241988439.701,
       "hkd": 13549406253153.695,
       "huf": 601923926367062.6,
       "idr": 26780285971206136,
       "ils": 6258488030538.527,
       "inr": 144215798331971.34,
       "jpy": 246498856418831.34,
       "krw": 2252488203327518.5,
       "kwd": 532855615324.21265,
       "lkr": 562622266405953.8,
       "mmk": 3636012304984731,
       "mxn": 29494488841871.33,
       "myr": 8033234531766.8125,
       "ngn": 1428508831071125,
       "nok": 17706388337005.266,
       "nzd": 2755049117674.2007,
       "php": 96216712123198.48,
       "pkr": 483590241962231.2,
       "pln": 6821182117391.017,
       "rub": 159174919313682.62,
       "sar": 6505223834424.533,
       "sek": 17424704841182.8,
       "sgd": 2296055209058.4116,
       "thb": 60023801196988.15,
       "try": 50665396874097.03,
       "twd": 53895686735683.27,
       "uah": 65117504906234.28,
       "vef": 173654527993.4822,
       "vnd": 42058720491795910,
       "zar": 31950837603354.85,
       "xdr": 1291481194237.6729,
       "xag": 70887190039.57085,
       "xau": 843732426.533797,
       "bits": 39719220372110.02,
       "sats": 3971922037211002.5
     },
     "total_volume": {
       "btc": 2687696.4467919865,
       "eth": 50880207.88000403,
       "ltc": 1638295423.5729625,
       "bch": 495566468.2695939,
       "bnb": 433391252.2308865,
       "eos": 138820971164.6307,
       "xrp": 189545659230.738,
       "xlm": 937331949068.292,
       "link": 7736761577.603986,
       "dot": 14551002825.336079,
       "yfi": 13918812.010026006,
       "usd": 117354945889.18098,
       "aed": 430968435536.1345,
       "ars": 94378498433458,
       "aud": 172568687605.8524,
       "bdt": 12858987469190.346,
       "bhd": 44243284020.0047,
       "bmd": 117354945889.18098,
       "brl": 573466678582.0713,
       "cad": 155810283977.93134,
       "chf": 100268652542.4458,
       "clp": 103164385832261.34,
       "cny": 836482583308.9032,
       "czk": 2615630504967.244,
       "dkk": 794202999598.4628,
       "eur": 106516395151.6939,
       "gbp": 92261172519.5892,
       "gel": 315684804441.89703,
       "hkd": 916853118001.1106,
       "huf": 40730628219274.2,
       "idr": 1812152372945993,
       "ils": 423495624646.74805,
       "inr": 9758708381403.156,
       "jpy": 16679937177225.768,
       "krw": 152420024456855.34,
       "kwd": 36056955059.61319,
       "lkr": 38071187000617.484,
       "mmk": 246039505837366.28,
       "mxn": 1995815429345.8062,
       "myr": 543588109358.6874,
       "ngn": 96663481143672.67,
       "nok": 1198145295225.9949,
       "nzd": 186427015810.95966,
       "php": 6510734925630.923,
       "pkr": 32723295242164.867,
       "pln": 461571671550.3836,
       "rub": 10770953232460.412,
       "sar": 440191595443.4567,
       "sek": 1179084504914.6729,
       "sgd": 155368090541.8208,
       "thb": 4061654677224.558,
       "try": 3428395771066.9033,
       "twd": 3646981093280.0723,
       "uah": 4406332373113.197,
       "vef": 11750750731.883696,
       "vnd": 2846004341560343.5,
       "zar": 2162030168116.381,
       "xdr": 87391176975.07986,
       "xag": 4796751975.680876,
       "xau": 57093181.17508657,
       "bits": 2687696446791.9863,
       "sats": 268769644679198.66
     },
     "market_cap_percentage": {
       "btc": 49.2908884356572,
       "eth": 15.942624360159469,
       "usdt": 5.244253196541002,
       "bnb": 2.402804142261893,
       "sol": 2.2836499295631274,
       "xrp": 1.932450056211769,
       "usdc": 1.4287728811923206,
       "ada": 1.2441618205450449,
       "steth": 1.214725442857442,
       "avax": 0.937578111855431
     },
     "market_cap_change_percentage_24h_usd": 0.6711582863571148,
     "updated_at": 1703243451
   }
 }
 */

struct GlobalData: Codable {
    let data: MarketData?
}

struct MarketData: Codable {
    let totalMarketCap, totalVolume, marketCapPercentage: [String: Double]
    let marketCapChangePercentage24HUsd: Double

    enum CodingKeys: String, CodingKey {
        case totalMarketCap = "total_market_cap"
        case totalVolume = "total_volume"
        case marketCapPercentage = "market_cap_percentage"
        case marketCapChangePercentage24HUsd = "market_cap_change_percentage_24h_usd"
    }

    var marketCap: String {
        if let item = totalMarketCap.first(where: { $0.key == "usd "}) {
            return "$" + item.value.formattedWithAbbreviations()
        }
        return ""
    }

    var volume: String {
        if let item = totalVolume.first(where: { $0.key == "usd" }) {
            return "$" + item.value.formattedWithAbbreviations()
        }
        return ""
    }

    var btcDominance: String {
        if let item = marketCapPercentage.first(where: { $0.key == "btc" }) {
            return item.value.asPercentString()
        }
        return ""
    }
}
