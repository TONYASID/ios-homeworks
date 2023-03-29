import UIKit

/* Задача 1
 Вы главный архитектор в команде разработчиков.

 Ваша задача — разработать программное обеспечение (ПО) для дилерских центров по продаже автомобилей.

 Ваша цель — создать гибкое ПО. Оно должно подходить для любой марки авто, должно быть расширяемым и масштабируемым в дальнейшем, чтобы ваша компания могла выпускать обновления.

 Задача разделена на четыре части. В каждой из них нужно самостоятельно подумать, какой тип данных передать каждому свойству для комфортной работы, а также при необходимости добавить вспомогательные методы.

 Часть 1
 Сначала нужно описать машину минимальным набором параметров, используя протокол.

 Алгоритм выполнения
 Создайте протокол 'Car'.
 Добавьте в него свойства:
 'model' (только для чтения) — марка;
 'color' (только для чтения) — цвет;
 'buildDate' (только для чтения) — дата выпуска;
 'price' (чтение и запись)— цена авто;
 'accessories' (чтение и запись) — дополнительное оборудование: тонировка, сингнализация, спортивные диски;
 'isServiced' (чтение и запись) — сделана ли предпродажная подготовка. Обычно её делают в дилерских центрах перед постановкой машины в салон.
 
 Часть 2
 По аналогии с протоколом 'Car' нужно описать дилерский центр минимальным набором свойств и методов, используя протокол.

 Алгоритм выполнения
 Создайте протокол 'Dealership'.
 Добавьте свойства:
 'name' (только для чтения) — название дилерского центра (назвать по марке машины для упрощения);
 'showroomCapacity' (только для чтения) — максимальная вместимость автосалона по количеству машин;
 'stockCars' (массив, чтение и запись) — машины, находящиеся на парковке склада. Представим, что у парковки нет лимита по количеству машин;
 'showroomCars' (массив, чтение и запись) — машины, находящиеся в автосалоне;
 'cars' (массив, чтение) — хранит список всех машин в наличии.
 Добавьте методы:
 'offerAccesories(_ :)' — принимает массив акксесуаров в качестве параметра. Метод предлагает клиенту купить дополнительное оборудование;
 'presaleService(_ :)' — принимает машину в качестве параметра. Метод отправляет машину на предпродажную подготовку;
 'addToShowroom(_ :)' — также принимает машину в качестве параметра. Метод перегоняет машину с парковки склада в автосалон, при этом выполняет предпродажную подготовку;
 'sellCar(_ :)' — также принимает машину в качестве параметра. Метод продаёт машину из автосалона и проверяет, выполнена ли предпродажная подготовка. Если у машины отсутсвует дополнительное оборудование, нужно предложить клиенту его купить (представим, что клиент всегда соглашается и покупает;
 'orderCar()' — не принимает и не возвращает параметры. Метод делает заказ новой машины с завода, т. е. добавляет машину на парковку склада. Вы можете использовать как отдельный массив с машинами завода, так и попробовать генерировать машину со случайными характеристиками.
 Обратите внимание: каждый метод должен выводить в консоль информацию о машине и выполненном действии с ней.
 
 Часть 3
 Настало время добавить классы и структуры, реализующие созданные ранее протоколы.

 Алгоритм выполнения
 Используя структуры, создайте несколько машин разных марок — например, BMW, Honda, Audi, Lexus, Volvo. Все они должны реализовать протокол 'Car'.
 Используя классы, создайте пять различных дилерских центров — например, BMW, Honda, Audi, Lexus, Volvo. Все они должны реализовать протокол 'Dealership'. Каждому дилерскому центру добавьте машины на парковку и в автосалон — используйте те машины, которые создали ранее.
 Создайте массив, положите в него созданные дилерские центры. Пройдитесь по нему циклом и выведите в консоль слоган для каждого дилеского центра — слоган можно загуглить. Обратите внимание: используйте конструкцию приведения типа данных для решения этой задачи.

 Часть 4
 Работа с расширениями. Вам нужно добавить спецпредложение для машин прошлого года.

 Алгоритм выполнения
 Сделайте расширения для протокола 'Car'.
 Добавьте методы:
 'addEmergencyPack()' — не принимает никаких параметров. Метод добавляет аптечку и огнетушитель к дополнительному оборудованию машины;
 'makeSpecialOffer()' — не принимает никаких параметров. Метод проверяет дату выпуска авто: если год выпуска машины меньше текущего, нужно сделать скидку 15%, добавить аптечку и огнетушитель.
 Проверьте все машины в дилерском центре, возможно, они нуждаются в специальном предложении. Нужно помнить, что массивы — это структуры, и они изменяются, только если изменится состав этих элементов (См. copy-on-write).
 Если есть автомобили на складе, которые попадают под условия, нужно также сделать им специальное предложение перегнать их в автосалон.

 Задача 1
 Алгоритм выполнения
 Внесите изменения в метод 'makeSpecialOffer()' таким образом, чтобы он возвращал ошибку, если машина не соответствует требованиям акции.
 Если нет ошибки, сделайте для этой машины специальное предложение.
 Проверьте текущий список машин, чтобы при проверке генерировались ошибки. При необходимости внесите изменения.
 Обработайте ошибки.
 Задача 2
 Алгоритм выполнения
 Перейдите к той части кода, где вы выполняли задание: «Проверьте все машины в дилерском центре (склад + автосалон), возможно, они нуждаются в специальном предложении. Если есть машины со скидкой на складе, нужно перегнать их в автосалон».
 Аналогично первой задаче внесите изменения в код так, чтобы осуществлял возврат ошибки, если машина со скидкой уже находится в автосалоне. Если ошибки нет, нужно перегнать машину в автосалон.
 Проверьте текущий список машин, чтобы при проверке генерировались ошибки. При необходимости внесите изменения.
 Обработайте ошибки.*/

protocol Car {
    var model: String { get }
    var color: String { get }
    var buildDate: Int { get }
    var price: Double { get set }
    var accessories: [String] { get set }
    var isServiced: Bool { get set }
}

protocol Dealership {
//    var moto: String { get }
    var name: String { get }
    var showroomCapacity: Double { get }
    var stockCars: [CarModel] { get set }
    var showroomCars: [CarModel] { get set }
    var cars: [CarModel] { get }
    func offerAccesories(_ accessory: String, car : CarModel)
    func presaleService(_ car: CarModel)
    func addToShowroom(_ car: CarModel)
    func sellCar(_ car: CarModel)
    func orderCar()
}

struct CarModel: Car, Equatable {

    static func == (lhs: CarModel, rhs: CarModel) -> Bool {
        lhs.brand == rhs.brand &&
        lhs.model == rhs.model &&
        lhs.color == rhs.color &&
        lhs.buildDate == rhs.buildDate &&
        lhs.price == rhs.price
    }

    var brand: String
    var model: String
    var color: String
    var buildDate: Int
    let stopPrice: Double
    var price: Double
    var accessories: [String]
    var isServiced: Bool

    func description() -> String {
        brand + " " + model + " color " + color + " " + String(buildDate) + " year of born " + "coust " + String(price)
    }
}

let bmwX5 = CarModel(brand: "BMW", model: "X5", color: "Black", buildDate: 2023, stopPrice: 60000, price: 60000, accessories: ["toning", "sport rims", "car alarm"], isServiced: false)
let bmwX6 = CarModel(brand: "BMW", model: "X6", color: "White", buildDate: 2022, stopPrice: 65000, price: 65000, accessories: ["toning", "car alarm"], isServiced: true)
let hondaCRV = CarModel(brand: "Honda", model: "CRV", color: "Red", buildDate: 2023, stopPrice: 50000, price: 50000, accessories: ["toning", "car alarm"], isServiced: false)
let hondaHRV = CarModel(brand: "Honda", model: "HRV", color: "Blue", buildDate: 2022, stopPrice: 45000, price: 45000, accessories: [], isServiced: false)
let audiA6 = CarModel(brand: "Audi", model: "A6", color: "Silver", buildDate: 2023, stopPrice: 70000, price: 70000, accessories: ["toning", "sport rims", "car alarm"], isServiced: false)
let audiRZ = CarModel(brand: "Audi", model: "RZ", color: "Silver", buildDate: 2023, stopPrice: 69000, price: 69000, accessories: ["toning", "sport rims", "car alarm", "Fire", "first aid kit"], isServiced: false)
var audiZ5 = CarModel(brand: "Audi", model: "Z5", color: "Black", buildDate: 2022, stopPrice: 67000, price: 67000, accessories: [ "sport rims", "car alarm"], isServiced: false)
let audiS8 = CarModel(brand: "Audi", model: "S8", color: "Black", buildDate: 2022, stopPrice: 90000, price: 90000, accessories: [ "sport rims", "car alarm"], isServiced: false)
let lexusRX300 = CarModel(brand: "Lexus", model: "RX300", color: "White", buildDate: 2023, stopPrice: 100000, price: 100000, accessories: ["toning", "sport rims", "car alarm"], isServiced: false)
let lexusRX470 = CarModel(brand: "Lexus", model: "RX470", color: "Red", buildDate: 2022, stopPrice: 124000, price: 124000, accessories: ["toning", "sport rims", "car alarm"], isServiced: false)
let volvoS80 = CarModel(brand: "Volvo", model: "S80", color: "Black", buildDate: 2023, stopPrice: 95000, price: 95000, accessories: ["toning", "car alarm"], isServiced: false)
let volvoS90 = CarModel(brand: "Volvo", model: "S90", color: "Blue", buildDate: 2022, stopPrice: 113000, price: 113000, accessories: ["toning", "sport rims", "car alarm"], isServiced: false)

//class Dealer: Dealership, Equatable { Klass dly proverky polymorfisma
//
//    static func == (lhs: Dealer, rhs: Dealer) -> Bool {
//        lhs.name == rhs.name
//    }
//
//    var name: String
//    var moto: String
//    var showroomCapacity: Double
//    var stockCars: [CarModel]
//    var showroomCars: [CarModel]
//    var cars: [CarModel] {
//        stockCars + showroomCars
//    }
////    lazy var moto = "We are lords of rings!"
////   lazy var accessoriesDefolt = ["disks", "audio sistem", "signaling", "toning"]
//
//    init (name: String,
//          moto: String,
//          showroomCapacity: Double,
//          stockCars: [CarModel],
//          showroomCars: [CarModel]) {
//        self.name = name;
//        self.moto = moto;
//        self.showroomCapacity = showroomCapacity;
//        self.showroomCars = showroomCars;
//        self.stockCars = stockCars;
//    }
//
//    func offerAccesories(_ accessory: String, car: CarModel) {
//        if let i = stockCars.firstIndex(of: car) {
//            stockCars[i].accessories.append(accessory)
//            print("The \(car.description()) offer the accessory \(accessory)")
//        }
//        if let i = showroomCars.firstIndex(of: car) {
//            showroomCars[i].accessories.append(accessory)
//            print("The \(car.description()) offer the accessory \(accessory)")
//        }
//    }
//
//    func presaleService(_ car: CarModel) {
//        if let i = stockCars.firstIndex(where: {$0 == car}) {
//            if stockCars[i].isServiced {
//                print("The car \(car.description()) is alriedy serviced")
//            } else {
//                stockCars[i].isServiced == true // Не меняет на true
//                print("The car \(car.description()) is going to serviced")
//                DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
//                    print("The car \(car.description()) is serviced")
//                }
//            }
//        }
//    }
//    func addToShowroom(_ car: CarModel) {
//        if stockCars.isEmpty {
//            print("The stockCars is emty")
//        } else {
//            for _ in stockCars.indices.reversed() {
//                if let i = stockCars.firstIndex(where: {$0 == car}) {
//                    stockCars.remove(at: i)
//                    showroomCars.append(car)
//                    print("The \(car.description()) is delete from stockCars and add to showroom")
//                }
//            }
//        }
//    }
//
//    func sellCar(_ car: CarModel) {
//        showroomCars.isEmpty ? "There is not cars in showroom" : "The car \(car.description()) is sell soon"
//        offerAccesories
//        presaleService
//        for _ in showroomCars.indices.reversed() {
//            if let i = showroomCars.firstIndex(where: {$0 == car}) {
//                showroomCars.remove(at: i)
//                print("The car \(car.description()) is sell!")
//            } else {
//                print("The car \(car.description()) is not in showroom")
//            }
//        }
//    }
//    let brandOrderCar = ["Audi"]
//    let modelOrderCar = ["A6", "S8"]
//    let colorOrderCar = ["Black", "Red", "Whute", "Blue", "Yelloy", "Broun"]
//    let buildDateOrderCar = [2022, 2023]
//    let priceOrderCar = [40000.00, 50000.00, 60000.00, 70000.00, 80000.00, 90000.00]
//    let accessoriesOrderCar = ["toning", "sport rims", "car alarm", "audio sistem"]
//    let isServicedOrderCar = [false]
//
//    func orderCar() {
//        let orderCar = CarModel(brand: "Audi", model: modelOrderCar.randomElement() ?? "", color: colorOrderCar.randomElement() ?? "", buildDate: buildDateOrderCar.randomElement() ?? 2023, price: priceOrderCar.randomElement() ?? 50000, accessories: ["toning"], isServiced: isServicedOrderCar.randomElement() ?? false)
//        stockCars.append(orderCar)
//    }
//}

class AudiDealerShip: Dealership, Equatable {
    
    static func == (lhs: AudiDealerShip, rhs: AudiDealerShip) -> Bool {
        lhs.name == rhs.name
    }
    
    var name: String
    var showroomCapacity: Double
    var stockCars: [CarModel]
    var showroomCars: [CarModel]
    var cars: [CarModel] {
        stockCars + showroomCars
    }
    lazy var moto = "We are lords of rings!"
//   lazy var accessoriesDefolt = ["disks", "audio sistem", "signaling", "toning"]

    init (name: String,
          showroomCapacity: Double,
          stockCars: [CarModel],
          showroomCars: [CarModel]) {
        self.name = name;
        self.showroomCapacity = showroomCapacity;
        self.showroomCars = showroomCars;
        self.stockCars = stockCars;
    }
    
    func offerAccesories(_ accessory: String, car: CarModel) {
        if let i = stockCars.firstIndex(of: car) {
            stockCars[i].accessories.append(accessory)
            print("The \(car.description()) offer the accessory \(accessory)")
        }
        if let i = showroomCars.firstIndex(of: car) {
            showroomCars[i].accessories.append(accessory)
            print("The \(car.description()) offer the accessory \(accessory)")
        }
    }
    
    func presaleService(_ car: CarModel) {
        if let i = stockCars.firstIndex(where: {$0 == car}) {
            if stockCars[i].isServiced {
                print("The car \(car.description()) is alriedy serviced")
            } else {
                stockCars[i].isServiced = true
                print("The car \(car.description()) is going to serviced")
                DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                    print("The car \(car.description()) is serviced")
                }
            }
        }
    }
    func addToShowroom(_ car: CarModel) {
        if stockCars.isEmpty {
            print("The stockCars is emty")
        } else {
            for _ in stockCars.indices.reversed() {
                if let i = stockCars.firstIndex(where: {$0 == car}) {
                    stockCars.remove(at: i)
                    showroomCars.append(car)
                    print("The \(car.description()) is delete from stockCars and add to showroom")
                }
            }
        }
    }

    func sellCar(_ car: CarModel) {
        showroomCars.isEmpty ? "There is not cars in showroom" : "The car \(car.description()) is sell soon"
        offerAccesories
        presaleService
        for _ in showroomCars.indices.reversed() {
            if let i = showroomCars.firstIndex(where: {$0 == car}) {
                showroomCars.remove(at: i)
                print("The car \(car.description()) is sell!")
            } else {
                print("The car \(car.description()) is not in showroom")
            }
        }
    }
    let brandOrderCar = ["Audi"]
    let modelOrderCar = ["A6", "S8"]
    let colorOrderCar = ["Black", "Red", "Whute", "Blue", "Yelloy", "Broun"]
    let buildDateOrderCar = [2022, 2023]
    let priceOrderCar = [40000.00, 50000.00, 60000.00, 70000.00, 80000.00, 90000.00]
    let accessoriesOrderCar = ["toning", "sport rims", "car alarm", "audio sistem"]
    let isServicedOrderCar = [false]

    func orderCar() {
        let orderCar = CarModel(brand: "Audi", model: modelOrderCar.randomElement() ?? "", color: colorOrderCar.randomElement() ?? "", buildDate: buildDateOrderCar.randomElement() ?? 2023, stopPrice: 50000, price: priceOrderCar.randomElement() ?? 50000, accessories: ["toning"], isServiced: isServicedOrderCar.randomElement() ?? false)
        stockCars.append(orderCar)
    }
}

class VolvoDealerShip: Dealership, Equatable {
    
    static func == (lhs: VolvoDealerShip, rhs: VolvoDealerShip) -> Bool {
        lhs.name == rhs.name
    }
    
    var name: String
    var showroomCapacity: Double
    var stockCars: [CarModel]
    var showroomCars: [CarModel]
    var cars: [CarModel] {
        stockCars + showroomCars
    }
    lazy var moto = "We are safety!"
//   lazy var accessoriesDefolt = ["disks", "audio sistem", "signaling", "toning"]

    init (name: String,
          showroomCapacity: Double,
          stockCars: [CarModel],
          showroomCars: [CarModel]) {
        self.name = name;
        self.showroomCapacity = showroomCapacity;
        self.showroomCars = showroomCars;
        self.stockCars = stockCars;
    }
    
    func offerAccesories(_ accessory: String, car: CarModel) {
        if let i = stockCars.firstIndex(of: car) {
            stockCars[i].accessories.append(accessory)
            print("The \(car.description()) offer the accessory \(accessory)")
        }
        if let i = showroomCars.firstIndex(of: car) {
            showroomCars[i].accessories.append(accessory)
            print("The \(car.description()) offer the accessory \(accessory)")
        }
    }
    
    func presaleService(_ car: CarModel) {
        if let i = stockCars.firstIndex(where: {$0 == car}) {
            if stockCars[i].isServiced {
                print("The car \(car.description()) is alriedy serviced")
            } else {
                stockCars[i].isServiced = true
                print("The car \(car.description()) is going to serviced")
                DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                    print("The car \(car.description()) is serviced")
                }
            }
        }
    }
    func addToShowroom(_ car: CarModel) {
        if stockCars.isEmpty {
            print("The stockCars is emty")
        } else {
            for _ in stockCars.indices.reversed() {
                if let i = stockCars.firstIndex(where: {$0 == car}) {
                    stockCars.remove(at: i)
                    showroomCars.append(car)
                    print("The \(car.description()) is delete from stockCars and add to showroom")
                }
            }
        }
    }

    func sellCar(_ car: CarModel) {
        showroomCars.isEmpty ? "There is not cars in showroom" : "The car \(car.description()) is sell soon"
        offerAccesories
        presaleService
        for _ in showroomCars.indices.reversed() {
            if let i = showroomCars.firstIndex(where: {$0 == car}) {
                showroomCars.remove(at: i)
                print("The car \(car.description()) is sell!")
            } else {
                print("The car \(car.description()) is not in showroom")
            }
        }
    }
    let brandOrderCar = ["Volvo"]
    let modelOrderCar = ["S80", "S90"]
    let colorOrderCar = ["Black", "Red", "Whute", "Blue", "Yelloy", "Broun"]
    let buildDateOrderCar = [2022, 2023]
    let priceOrderCar = [40000.00, 50000.00, 60000.00, 70000.00, 80000.00, 90000.00]
    let accessoriesOrderCar = ["toning", "sport rims", "car alarm", "audio sistem"]
    let isServicedOrderCar = [false]

    func orderCar() {
        let orderCar = CarModel(brand: "Volvo", model: modelOrderCar.randomElement() ?? "", color: colorOrderCar.randomElement() ?? "", buildDate: buildDateOrderCar.randomElement() ?? 2023, stopPrice: 50000, price: priceOrderCar.randomElement() ?? 50000, accessories: ["toning"], isServiced: isServicedOrderCar.randomElement() ?? false)
        stockCars.append(orderCar)
    }
}

class LexusDealerShip: Dealership, Equatable {
    
    static func == (lhs: LexusDealerShip, rhs: LexusDealerShip) -> Bool {
        lhs.name == rhs.name
    }
    
    var name: String
    var showroomCapacity: Double
    var stockCars: [CarModel]
    var showroomCars: [CarModel]
    var cars: [CarModel] {
        stockCars + showroomCars
    }
    lazy var moto = "We are very expencive!"
//   lazy var accessoriesDefolt = ["disks", "audio sistem", "signaling", "toning"]

    init (name: String,
          showroomCapacity: Double,
          stockCars: [CarModel],
          showroomCars: [CarModel]) {
        self.name = name;
        self.showroomCapacity = showroomCapacity;
        self.showroomCars = showroomCars;
        self.stockCars = stockCars;
    }
    
    func offerAccesories(_ accessory: String, car: CarModel) {
        if let i = stockCars.firstIndex(of: car) {
            stockCars[i].accessories.append(accessory)
            print("The \(car.description()) offer the accessory \(accessory)")
        }
        if let i = showroomCars.firstIndex(of: car) {
            showroomCars[i].accessories.append(accessory)
            print("The \(car.description()) offer the accessory \(accessory)")
        }
    }
    
    func presaleService(_ car: CarModel) {
        if let i = stockCars.firstIndex(where: {$0 == car}) {
            if stockCars[i].isServiced {
                print("The car \(car.description()) is alriedy serviced")
            } else {
                stockCars[i].isServiced = true
                print("The car \(car.description()) is going to serviced")
                DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                    print("The car \(car.description()) is serviced")
                }
            }
        }
    }
    func addToShowroom(_ car: CarModel) {
        if stockCars.isEmpty {
            print("The stockCars is emty")
        } else {
            for _ in stockCars.indices.reversed() {
                if let i = stockCars.firstIndex(where: {$0 == car}) {
                    stockCars.remove(at: i)
                    showroomCars.append(car)
                    print("The \(car.description()) is delete from stockCars and add to showroom")
                }
            }
        }
    }

    func sellCar(_ car: CarModel) {
        showroomCars.isEmpty ? "There is not cars in showroom" : "The car \(car.description()) is sell soon"
        offerAccesories
        presaleService
        for _ in showroomCars.indices.reversed() {
            if let i = showroomCars.firstIndex(where: {$0 == car}) {
                showroomCars.remove(at: i)
                print("The car \(car.description()) is sell!")
            } else {
                print("The car \(car.description()) is not in showroom")
            }
        }
    }
    let brandOrderCar = ["Lexus"]
    let modelOrderCar = ["RX470", "RX300"]
    let colorOrderCar = ["Black", "Red", "Whute", "Blue", "Yelloy", "Broun"]
    let buildDateOrderCar = [2022, 2023]
    let priceOrderCar = [40000.00, 50000.00, 60000.00, 70000.00, 80000.00, 90000.00]
    let accessoriesOrderCar = ["toning", "sport rims", "car alarm", "audio sistem"]
    let isServicedOrderCar = [false]

    func orderCar() {
        let orderCar = CarModel(brand: "Lexus", model: modelOrderCar.randomElement() ?? "", color: colorOrderCar.randomElement() ?? "", buildDate: buildDateOrderCar.randomElement() ?? 2023, stopPrice: 50000, price: priceOrderCar.randomElement() ?? 50000, accessories: ["toning"], isServiced: isServicedOrderCar.randomElement() ?? false)
        stockCars.append(orderCar)
    }
}

class HondaDealerShip: Dealership, Equatable {
    
    static func == (lhs: HondaDealerShip, rhs: HondaDealerShip) -> Bool {
        lhs.name == rhs.name
    }
    
    var name: String
    var showroomCapacity: Double
    var stockCars: [CarModel]
    var showroomCars: [CarModel]
    var cars: [CarModel] {
        stockCars + showroomCars
    }
    lazy var moto = "We are yellow!"
//   lazy var accessoriesDefolt = ["disks", "audio sistem", "signaling", "toning"]

    init (name: String,
          showroomCapacity: Double,
          stockCars: [CarModel],
          showroomCars: [CarModel]) {
        self.name = name;
        self.showroomCapacity = showroomCapacity;
        self.showroomCars = showroomCars;
        self.stockCars = stockCars;
    }
    
    func offerAccesories(_ accessory: String, car: CarModel) {
        if let i = stockCars.firstIndex(of: car) {
            stockCars[i].accessories.append(accessory)
            print("The \(car.description()) offer the accessory \(accessory)")
        }
        if let i = showroomCars.firstIndex(of: car) {
            showroomCars[i].accessories.append(accessory)
            print("The \(car.description()) offer the accessory \(accessory)")
        }
    }
    
    func presaleService(_ car: CarModel) {
        if let i = stockCars.firstIndex(where: {$0 == car}) {
            if stockCars[i].isServiced {
                print("The car \(car.description()) is alriedy serviced")
            } else {
                stockCars[i].isServiced = true
                print("The car \(car.description()) is going to serviced")
                DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                    print("The car \(car.description()) is serviced")
                }
            }
        }
    }
    func addToShowroom(_ car: CarModel) {
        if stockCars.isEmpty {
            print("The stockCars is emty")
        } else {
            for _ in stockCars.indices.reversed() {
                if let i = stockCars.firstIndex(where: {$0 == car}) {
                    stockCars.remove(at: i)
                    showroomCars.append(car)
                    print("The \(car.description()) is delete from stockCars and add to showroom")
                }
            }
        }
    }

    func sellCar(_ car: CarModel) {
        showroomCars.isEmpty ? "There is not cars in showroom" : "The car \(car.description()) is sell soon"
        offerAccesories
        presaleService
        for _ in showroomCars.indices.reversed() {
            if let i = showroomCars.firstIndex(where: {$0 == car}) {
                showroomCars.remove(at: i)
                print("The car \(car.description()) is sell!")
            } else {
                print("The car \(car.description()) is not in showroom")
            }
        }
    }
    let brandOrderCar = ["Honda"]
    let modelOrderCar = ["CRV", "HRV"]
    let colorOrderCar = ["Black", "Red", "Whute", "Blue", "Yelloy", "Broun"]
    let buildDateOrderCar = [2022, 2023]
    let priceOrderCar = [40000.00, 50000.00, 60000.00, 70000.00, 80000.00, 90000.00]
    let accessoriesOrderCar = ["toning", "sport rims", "car alarm", "audio sistem"]
    let isServicedOrderCar = [false]

    func orderCar() {
        let orderCar = CarModel(brand: "Audi", model: modelOrderCar.randomElement() ?? "", color: colorOrderCar.randomElement() ?? "", buildDate: buildDateOrderCar.randomElement() ?? 2023, stopPrice: 50000, price: priceOrderCar.randomElement() ?? 50000, accessories: ["toning"], isServiced: isServicedOrderCar.randomElement() ?? false)
        stockCars.append(orderCar)
    }
}

class BMWDealerShip: Dealership, Equatable {
    
    static func == (lhs: BMWDealerShip, rhs: BMWDealerShip) -> Bool {
        lhs.name == rhs.name
    }
    
    var name: String
    var showroomCapacity: Double
    var stockCars: [CarModel]
    var showroomCars: [CarModel]
    var cars: [CarModel] {
        stockCars + showroomCars
    }
    lazy var moto = "Run!"
//   lazy var accessoriesDefolt = ["disks", "audio sistem", "signaling", "toning"]

    init (name: String,
          showroomCapacity: Double,
          stockCars: [CarModel],
          showroomCars: [CarModel]) {
        self.name = name;
        self.showroomCapacity = showroomCapacity;
        self.showroomCars = showroomCars;
        self.stockCars = stockCars;
    }
    
    func offerAccesories(_ accessory: String, car: CarModel) {
        if let i = stockCars.firstIndex(of: car) {
            stockCars[i].accessories.append(accessory)
            print("The \(car.description()) offer the accessory \(accessory)")// Работает
        }
        if let i = showroomCars.firstIndex(of: car) {
            showroomCars[i].accessories.append(accessory)
            print("The \(car.description()) offer the accessory \(accessory)")// Работает
        }
    }
    
    func presaleService(_ car: CarModel) {
        if let i = stockCars.firstIndex(where: {$0 == car}) {
            if stockCars[i].isServiced {
                print("The car \(car.description()) is alriedy serviced")
            } else {
                stockCars[i].isServiced = true
                print("The car \(car.description()) is going to serviced")
                DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                    print("The car \(car.description()) is serviced")
                }
            }
        }
    }
    func addToShowroom(_ car: CarModel) { // Работает
        if stockCars.isEmpty {
            print("The stockCars is emty")
        } else {
            for _ in stockCars.indices.reversed() {
                if let i = stockCars.firstIndex(where: {$0 == car}) {
                    stockCars.remove(at: i)
                    showroomCars.append(car)
                    print("The \(car.description()) is delete from stockCars and add to showroom")
                }
            }
        }
    }

    func sellCar(_ car: CarModel) { // Работает
        showroomCars.isEmpty ? "There is not cars in showroom" : "The car \(car.description()) is sell soon"
        offerAccesories
        presaleService
        for _ in showroomCars.indices.reversed() {
            if let i = showroomCars.firstIndex(where: {$0 == car}) {
                showroomCars.remove(at: i)
                print("The car \(car.description()) is sell!")
            } else {
                print("The car \(car.description()) is not in showroom")
            }
        }
    }
    let brandOrderCar = ["BMW"]
    let modelOrderCar = ["X6", "X7"]
    let colorOrderCar = ["Black", "Red", "Whute", "Blue", "Yelloy", "Broun"]
    let buildDateOrderCar = [2022, 2023]
    let priceOrderCar = [40000.00, 50000.00, 60000.00, 70000.00, 80000.00, 90000.00]
    let accessoriesOrderCar = ["toning", "sport rims", "car alarm", "audio sistem"]
    let isServicedOrderCar = [false]

    func orderCar() { // Работает
        let orderCar = CarModel(brand: "BMW", model: modelOrderCar.randomElement() ?? "", color: colorOrderCar.randomElement() ?? "", buildDate: buildDateOrderCar.randomElement() ?? 2023, stopPrice: 50000, price: priceOrderCar.randomElement() ?? 50000, accessories: ["toning"], isServiced: isServicedOrderCar.randomElement() ?? false)
        stockCars.append(orderCar)
    }
}
let bmwDeallership = BMWDealerShip(name: "BMW", showroomCapacity: 100, stockCars: [], showroomCars: [])
let hondaDeallership = HondaDealerShip(name: "Honda", showroomCapacity: 100, stockCars: [], showroomCars: [])
let lexusDeallership = LexusDealerShip(name: "Lexus", showroomCapacity: 100, stockCars: [], showroomCars: [])
let audiDeallership = AudiDealerShip(name: "Audi", showroomCapacity: 100, stockCars: [], showroomCars: [])
let volvoDeallership = VolvoDealerShip(name: "Volvo", showroomCapacity: 100, stockCars: [], showroomCars: [])

//let bmwDeallership = Dealer(name: "BMW", moto: "BMV", showroomCapacity: 100, stockCars: [], showroomCars: [])
//let hondaDeallership = Dealer(name: "Honda", moto: "Honda", showroomCapacity: 100, stockCars: [], showroomCars: [])
//let lexusDeallership = Dealer(name: "Lexus", moto: "Lexus", showroomCapacity: 100, stockCars: [], showroomCars: [])
//let audiDeallership = Dealer(name: "Audi", moto: "Audi", showroomCapacity: 100, stockCars: [], showroomCars: [])
//let volvoDeallership = Dealer(name: "Volvo", moto: "Volvo", showroomCapacity: 100, stockCars: [], showroomCars: [])

var dealerShipsArray: [Dealership] = []
dealerShipsArray.append(volvoDeallership)
dealerShipsArray.append(audiDeallership)
dealerShipsArray.append(lexusDeallership)
dealerShipsArray.append(hondaDeallership)
dealerShipsArray.append(bmwDeallership)


func showTheMoto() {
    for item in dealerShipsArray {
        if let audiDeallership = item as? AudiDealerShip {
            print("The moto of Audi is \(audiDeallership.moto)")
        } else if let volvoDeallership = item as? VolvoDealerShip {
            print("The moto of Volvo is \(volvoDeallership.moto)")
        } else if let lexusDealership = item as? LexusDealerShip {
            print("The moto of Lexus is \(lexusDealership.moto)")
        } else if let hondaDeallership = item as? HondaDealerShip {
            print("The moto of Honda is \(hondaDeallership.moto)")
        } else if let bmwDeallership = item as? BMWDealerShip {
            print("The moto of BMV is \(bmwDeallership.moto)")
        }
    }
}

showTheMoto()

//Часть 4
//Работа с расширениями. Вам нужно добавить спецпредложение для машин прошлого года.
//
//Алгоритм выполнения
//Сделайте расширения для протокола 'Car'.
//Добавьте методы:
//'addEmergencyPack()' — не принимает никаких параметров. Метод добавляет аптечку и огнетушитель к дополнительному оборудованию машины;
//'makeSpecialOffer()' — не принимает никаких параметров. Метод проверяет дату выпуска авто: если год выпуска машины меньше текущего, нужно сделать скидку 15%, добавить аптечку и огнетушитель.
//Проверьте все машины в дилерском центре, возможно, они нуждаются в специальном предложении. Нужно помнить, что массивы — это структуры, и они изменяются, только если изменится состав этих элементов (См. copy-on-write).
//Если есть автомобили на складе, которые попадают под условия, нужно также сделать им специальное предложение перегнать их в автосалон.

extension Car {
    mutating func addEmergencyPack() { // Работает для экземпляра машины
        accessories.append("Fire BIRE")
        accessories.append("aid of doom")
        print("The car has add EP")
    }
    func makeSpecialOffer() {
        
    }
}

enum PossibleErrors: Error, CustomStringConvertible {
    case WrongDate
    case WrongPrice
    case AlriadyAddEmergencyPack
    
    var description: String {
        switch self {
        case .WrongDate:
            return "The car has a wrong date"
        case .WrongPrice:
            return "The car has a wrong price"
        case .AlriadyAddEmergencyPack:
            return "The car alriedy has a EmergencyPack "
        }
    }
}
protocol SpecialOffer {
    func addEmergencyPack() throws
    func makeSpecialOffer() throws
}

extension AudiDealerShip: SpecialOffer {
    func addEmergencyPack() throws {
        for (index, car) in stockCars.enumerated() {
            if stockCars[index].accessories.contains("Fire") && stockCars[index].accessories.contains("first aid kit") {
                print("The car \(car) alriedy has Emergency Pack")
                throw PossibleErrors.AlriadyAddEmergencyPack
            } else {
                stockCars[index].accessories.append("Fire")
                stockCars[index].accessories.append("first aid kit")
                print("The car in stock cars \(car) add EmergencyPack") // Работает
            }
        }
        for (index, car) in showroomCars.enumerated() {
            if stockCars[index].accessories.contains("Fire") && stockCars[index].accessories.contains("first aid kit") {
                print("The car \(car) alriedy has Emergency Pack")
                throw PossibleErrors.AlriadyAddEmergencyPack
            } else {
                showroomCars[index].accessories.append("Fire")
                showroomCars[index].accessories.append("first aid kit")
                print("The car in show room \(car) add EmergencyPack") // Работает
            }
        }
    }
    func makeSpecialOffer() throws {
       try addEmergencyPack()
        for (index, car) in stockCars.enumerated().reversed() {
            guard car.buildDate < 2023 else {
                print("The car \(car) is not offer to special offer")
                throw PossibleErrors.WrongDate
            }
            if car.price == car.stopPrice {
                stockCars[index].price *= 0.85
                let carAppendToShowRoom = stockCars.remove(at: index)
                showroomCars.append(carAppendToShowRoom)
                print("The car \(carAppendToShowRoom) has a special offer")
                throw PossibleErrors.WrongPrice
                
            }
        }
        //        Вариант с временной переменной
        /*        for index in stockCars.indices.reversed() {
         var car = stockCars[index]
         
         guard car.buildDate < 2023 else {
         print("The car \(car) is not offer to special offer")
         continue
         }
         if car.price == car.stopPrice {
         car.price *= 0.85
         stockCars[index] = car
         let carAppendToShowRoom = stockCars.remove(at: index)
         showroomCars.append(carAppendToShowRoom)
         print("The car \(carAppendToShowRoom) has a special offer")
         }
         */
        for (index, car) in showroomCars.enumerated() { //Rabotaet!
            guard car.buildDate < 2023 else {
                print("The car \(car) is not offer to special offer")
               throw PossibleErrors.WrongDate
            }
            if car.price == car.stopPrice {
                showroomCars[index].price *= 0.85
                print("The car \(showroomCars[index]) has a special offer")
                throw PossibleErrors.WrongPrice
            }
        }
    }
}

audiDeallership.stockCars.append(audiRZ)
audiDeallership.stockCars.append(audiZ5)
audiDeallership.stockCars.append(audiA6)
audiDeallership.stockCars.append(audiS8)
audiDeallership.stockCars
audiDeallership.showroomCars
//audiDeallership.addEmergencyPack()
audiDeallership.showroomCars
audiDeallership.stockCars
do {
    try audiDeallership.makeSpecialOffer()
} catch PossibleErrors.WrongDate {
    PossibleErrors.WrongDate.description
} catch PossibleErrors.WrongPrice {
   PossibleErrors.WrongPrice.description
} catch PossibleErrors.AlriadyAddEmergencyPack {
    PossibleErrors.AlriadyAddEmergencyPack.description
}
