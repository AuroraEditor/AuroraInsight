//
//  SteppingGranularity.swift
//  AuroraInsight
//
//  Created by Nanashi Li on 8/4/24.
//


/// The granularity of one 'step' in the stepping requests `next`, `stepIn`, `stepOut`, and `stepBack`.
/// - statement: The step should allow the program to run until the current statement has finished executing.
/// The meaning of a statement is determined by the adapter and it may be considered equivalent to a line.
/// For example 'for(int i = 0; i < 10; i++)' could be considered to have 3 statements 'int i = 0', 'i < 10', and 'i++'.
/// - line: The step should allow the program to run until the current source line has executed.
/// - instruction: The step should allow one instruction to execute (e.g. one x86 instruction).
enum SteppingGranularity: String, Codable {
    case statement = "statement"
    case line = "line"
    case instruction = "instruction"
}
