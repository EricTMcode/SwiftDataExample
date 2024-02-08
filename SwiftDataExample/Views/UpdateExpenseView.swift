//
//  UpdateExpenseView.swift
//  SwiftDataExample
//
//  Created by Eric on 08/02/2024.
//

import SwiftUI

struct UpdateExpenseView: View {
    @Environment(\.dismiss) var dismiss
    @Bindable var expense: Expense
    
    var body: some View {
        NavigationStack{
            Form {
                TextField("Expense Name", text: $expense.name)
                DatePicker("Date", selection: $expense.date, displayedComponents: .date)
                TextField("Value", value: $expense.value, format: .currency(code: "USD"))
                    .keyboardType(.decimalPad)
            }
            .navigationTitle("Update Expense")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItemGroup(placement: .topBarTrailing) {
                    Button("Done") {
                        dismiss()
                    }
                }
            }
        }
    }
}

//#Preview {
//    UpdateExpenseView()
//}
