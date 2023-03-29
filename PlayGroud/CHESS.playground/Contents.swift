import UIKit


func makeChessboard(side: Int) -> [String: String] {
    var chessBoard = ["":""]
    var chessBoardIntHorisontal: [String] = []
    var chessBoardIntVertical: [String] = []
    var count = 1
    var stepLine = ""
    for index in 1 ... side {
            chessBoardIntHorisontal += ["\(index).\(index)"]
        chessBoardIntHorisontal += ["\(index).\(count)"]
count += 1
    }
    print(chessBoardIntHorisontal)
    print(chessBoardIntVertical )
    return ["1.1" : "White"]
}
makeChessboard(side: 4)
