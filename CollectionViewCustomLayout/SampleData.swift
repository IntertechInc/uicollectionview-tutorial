//
//  TestData.swift
//  CollectionViewCustomLayout
//
//  Created by Ryan Harvey on 7/26/15.
//  Copyright (c) 2015 Intertech. All rights reserved.
//

import Foundation

let sampleData = [
    ("8/3/15", "Microsoft", 8),
    ("8/4/15", "Google", 2),
    ("8/4/15", "Apple", 6),
    ("8/5/15", "Apple", 8),
    ("8/6/15", "Microsoft", 4),
    ("8/6/15", "Microsoft", 4),
    ("8/7/15", "Google", 8),
    ("8/8/15", "Intertech", 6),
    ("8/10/15", "Google", 8),
    ("8/11/15", "Apple", 4),
    ("8/11/15", "Microsoft", 4),
    ("8/12/15", "Intertech", 6),
    ("8/12/15", "Apple", 2),
    ("8/13/15", "Microsoft", 8),
    ("8/14/15", "Google", 8),
    ("8/15/15", "Intertech", 4),
    ("8/17/15", "Apple", 4),
    ("8/17/15", "Intertech", 4),
    ("8/18/15", "Google", 6),
    ("8/18/15", "Microsoft", 2),
    ("8/19/15", "Intertech", 8),
    ("8/20/15", "Apple", 2),
    ("8/20/15", "Microsoft", 4),
    ("8/20/15", "Google", 2),
    ("8/21/15", "Apple", 8),
    ("8/24/15", "Intertech", 2),
    ("8/24/15", "Google", 6),
    ("8/25/15", "Microsoft", 8),
    ("8/26/15", "Apple", 4),
    ("8/26/15", "Apple", 4),
    ("8/27/15", "Microsoft", 2),
    ("8/27/15", "Microsoft", 6),
    ("8/28/15", "Google", 8),
]

struct day {
    let date: String
    let entries: [entry]
}

struct entry {
    let client: String
    let hours: Int
}

let sampleDataByDay: [day] = [
    day(date: "Mon 8/3", entries: [entry(client: "Microsoft", hours: 8)]),
    day(date: "Tue 8/4", entries: [entry(client: "Google", hours: 2), entry(client: "Apple", hours: 6)]),
    day(date: "Wed 8/5", entries: [entry(client: "Apple", hours: 8)]),
    day(date: "Thu 8/6", entries: [entry(client: "Microsoft", hours: 4), entry(client: "Microsoft", hours: 4)]),
    day(date: "Fri 8/7", entries: [entry(client: "Google", hours: 8)]),
    day(date: "Sat 8/8", entries: [entry(client: "Intertech", hours: 6)]),
    day(date: "Sun 8/9", entries: [])
]
