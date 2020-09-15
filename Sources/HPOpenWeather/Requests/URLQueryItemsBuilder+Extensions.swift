import HPNetwork

extension URLQueryItemsBuilder {

    static let weatherBase: URLQueryItemsBuilder = {
        URLQueryItemsBuilder(host: "pro.openweathermap.org")
            .addingPathComponent("data")
            .addingPathComponent("2.5")
            .addingPathComponent("onecall")
    }()

}
