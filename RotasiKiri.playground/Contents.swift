extension RangeReplaceableCollection {
    func rotatingkiri(positions: Int) -> SubSequence {
        let index = self.index(startIndex, offsetBy: positions, limitedBy: endIndex) ?? endIndex
        return self[index...] + self[..<index]
    }
    mutating func rotasikiri(positions: Int) {
        let index = self.index(startIndex, offsetBy: positions, limitedBy: endIndex) ?? endIndex
        let slice = self[..<index]
        removeSubrange(..<index)
        insert(contentsOf: slice, at: endIndex)
    }
}

var angka = [2,3,5,1,2,3,9,8]
angka.rotasikiri(positions: 5) // 3,9,8,2,3,5,1,2
