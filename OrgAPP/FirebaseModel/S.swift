import Foundation
import UIKit

// This file is for saving Static Functions and Strings
struct S {
	static var categorys = "Categorys"
	static var tempCategoryUID = "TempCategoryUID"
	static var projects = "Projects"
	static var notes = "Notes"
	static var content = "Content"
	static var toDos = "ToDos"
	static var toDoDescription = "ToDoDescription"
	static var done = "Done"
	static var photos = "Photos"
	static var name = "Name"
	static var parentCategory = "ParentCategory"
	static var parentProject = "ParentProject"
	static var logInText = "Log In"
	static var createUserText = "Create new user"
	static var newUserQuestion = "New User?"
	
	struct CustomCells {
		static let projectCell = "ProjectCCC"
		static let projectHeader = "ProjectHeaderCHC"
		static let projectFooter = "ProjectFooterCFC"
		static let toDoCell = "ToDoTCC"
		static let toDoDetailCell = "ToDoDetailTCC"
		static let photoCell = "PhotoCCC"
		static let photoHeader = "PhotoHeaderCHC"
		static let noteCell = "NoteTCC"
		static let selectCategory = "SelectCategoryTCC"
	}

	struct Segues {
		static let createUser = "CreateNewUserSegue"
		static let showProject = "ProjectDetailSegue"
		static let addProject = "AddProjectSegue"
		static let toDoDetail = "ToDoDetailSegue"
		static let showNote = "ShowNoteSegue"
		static let importPhoto = "ImportPhotoSegue"
		static let fullSizePhoto = "FullSizePhotoSegue"
	}

	// The Keyboard Toolbar with the "Done" button
	struct Funcs {
		static func createKeyboardToolbar(style: UIBarButtonItem.Style, target: UITextField, execute: Selector) {
			let toolBar = UIToolbar()
			toolBar.sizeToFit()

			if style == .done {
				let flexibleSpace = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
				let doneButton = UIBarButtonItem(barButtonSystemItem: .done, target: nil, action: execute)
				toolBar.setItems([flexibleSpace,doneButton], animated: true)
				target.inputAccessoryView = toolBar
			}
		}

		static func createKeyboardToolbar(style: UIBarButtonItem.Style, target: UITextView, execute: Selector) {
			let toolBar = UIToolbar()
			toolBar.sizeToFit()

			if style == .done {
				let flexibleSpace = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
				let doneButton = UIBarButtonItem(barButtonSystemItem: .done, target: nil, action: execute)
				toolBar.setItems([flexibleSpace,doneButton], animated: true)
				target.inputAccessoryView = toolBar
			}
		}
	}
}
