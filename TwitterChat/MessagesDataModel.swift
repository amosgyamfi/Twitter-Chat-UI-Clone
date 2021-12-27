//
//  MessagesDataModel.swift
//  MessagesDataModel
//
//  Created by Amos Gyamfi on 10.11.2021.
//

import Foundation

// Data structure
struct MessagesStructure: Identifiable {
    var id = UUID()
    var photo: String
    var name: String
    var handle: String
    var date: String
    var summary: String
}

// Data storage
let MessageData = [
    MessagesStructure(photo: "abena", name: "Abena247", handle: "@abena_sw", date: "2/9/21", summary: "You: Thanks, I just started"),
    MessagesStructure(photo: "abena", name: "Serwaa1", handle: "@ana_sew", date: "30/8/21", summary: "You: Thanks, I just started"),
    MessagesStructure(photo: "adwoa", name: "Nancy", handle: "@adwoa_nanc", date: "27/8/21", summary: "Hi, thank you. checking it out now"),
    MessagesStructure(photo: "taylor", name: "Taylor Rhodes", handle: "@todes", date: "16/7/21", summary: "You sent a link. Hi Taylor, I told the creator to replace the link."),
    MessagesStructure(photo: "abena", name: "Serwaa", handle: "@a_sew", date: "15/8/21", summary: "You: Thanks, I just started"),
    MessagesStructure(photo: "abena", name: "Abena", handle: "@bena_se", date: "5/7/21", summary: "You: Thanks, I just started"),
    MessagesStructure(photo: "adwoa", name: "Akua8B", handle: "@adwoa_nanc", date: "1/7/2121", summary: "Hi, thank you. checking it out now"),
    MessagesStructure(photo: "taylor", name: "Rhodes", handle: "@t_rhodes", date: "10/3/21", summary: "You sent a link. Hi Taylor, I told the creator to replace the link.")
]
