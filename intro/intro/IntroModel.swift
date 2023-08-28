//
//  IntroModel.swift
//  intro
//
//  Created by Sanjay Lal on 24/08/23.
//

import Foundation


struct Intro: Identifiable, Equatable{
    let id = UUID()
    var textBox: String
    var description: String
    var imageUrl: String
    var tag: Int
    static var introPage = Intro(textBox: "Subtraction 1", description: "Enjoy 1000+ hoursof  free courses", imageUrl: "shutterstock_2297369677", tag: 0)
    static var introPages: [Intro] = [
    Intro(textBox: "Subtraction 1", description: "Enjoy 1000+ hours of free courses", imageUrl: "shutterstock_2297369677", tag: 0),
    Intro(textBox: "Subtraction 1", description: "350+ companieshire from us", imageUrl: "shutterstock_2104956860", tag: 1),
    Intro(textBox: "Subtraction 1", description: "1,75,000+ learnersempowered", imageUrl: "iStock-1266865102", tag: 2)]
}
