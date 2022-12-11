((function_definition
    name: (identifier) @function.name) @function
    (#not-eq? @function.name "__init__"))

; Ugly :(
((function_definition
    name: (identifier) @constructor.name) @constructor
    (#eq? @constructor.name "__init__"))

; Alongside parsing NAT spec @title it may make sense
; (module) @module

; Innacurate but usable
((expression_statement
    (assignment
        left: (identifier) @constant.name)) @constant
    (#match? @constant "(constant|immutable).*"))

; globals
(module
    (expression_statement
        (assignment
            left: (identifier) @var)))

(enum_definition
	name: (identifier) @enum.name) @enum

(enum_members
	(identifier) @enumMember)

(interface_definition
	name: (identifier) @interface.name) @interface

(interface_sig
    name: (identifier) @method.name) @method

(event_definition
    name: (identifier) @event.name) @event

(event_definition
    (block
        (expression_statement
            (assignment
                left: (identifier) @field.name)) @field))
(struct_definition
    name: (identifier) @struct.name) @struct

(struct_definition
    (block
        (expression_statement
            (assignment
                left: (identifier) @field.name)) @field))
