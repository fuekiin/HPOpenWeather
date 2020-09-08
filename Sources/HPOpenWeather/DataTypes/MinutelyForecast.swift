import Foundation

public struct MinutelyForecast: MinutelyWeatherResponse {

    public let timestamp: Date
    public let precipitation: Double?

    enum CodingKeys: String, CodingKey {
        case precipitation
        case timestamp = "dt"
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        timestamp = try container.decode(Date.self, forKey: .timestamp)
        precipitation = try container.decodeIfPresent(Double.self, forKey: .precipitation) ?? nil
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(timestamp, forKey: .timestamp)
        try container.encode(precipitation, forKey: .precipitation)
    }

}
