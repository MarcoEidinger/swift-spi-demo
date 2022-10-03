// @_spiOnly import CryptoKit // requires Swift 5.8

public struct ShoppingCartItem {
    public init() {}
}

public struct ShoppingCart {
    public init() {}

    @_spi_available(watchOS 9, *)
    @available(watchOS, unavailable)
    @available(tvOS, unavailable)
    public private(set) var items = [ShoppingCartItem]()

    public func payCash() {}

    @_spi(PayPal) public func payWithPayPal() {}
    @_spi(Bitcoin) public func payWithBitcoin() {}
}

@_spi(PayPal) public struct PayPalProvider {
    public init() {}
}
