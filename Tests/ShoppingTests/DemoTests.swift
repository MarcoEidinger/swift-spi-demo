import XCTest

// import Shopping
// @_spi(PayPal) import Shopping
@_spi(PayPal) @_spi(Bitcoin) import Shopping

final class ShoppingTests: XCTestCase {
    func testAPI() throws {
        _ = ShoppingCart()
        XCTAssertNotNil("Works when using import Shopping")
    }

    func testSPI() throws {
        let s = ShoppingCart()
        s.payWithPayPal()

        XCTAssertNotNil("Works when using @_spi(PayPal) import Shopping")
    }

    func testMultipleSPI() throws {
        let s = ShoppingCart()
        s.payWithPayPal()
        s.payWithBitcoin()

        XCTAssertNotNil("Works when using @_spi(PayPal) @_spi(Bitcoin) import Shopping")
    }
}
