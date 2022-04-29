//
//  protocol.swift
//  MyHabits
//
//  Created by Sergey Omelchenko on 29.04.2022.
//

protocol TestDelegate: class {
    func updCollection()
}

protocol ProtocolForCallFromCorrectToDetail: class {
    func callFromCorrectToDetailPopToRoot()
    func updateTitle(newTitle: String)
    func updateHabitsCollection()
}
