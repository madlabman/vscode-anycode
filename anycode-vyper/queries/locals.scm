(module) @scope
(function_definition) @scope
(event_definition) @scope
(struct_definition) @scope
(interface_definition) @scope
(enum_definition) @scope
(for_statement) @scope
(while_statement) @scope
(block) @scope

(parameters (identifier) @local)
(assignment left: (identifier) @local)
(function_definition name: (identifier) @local.escape)
(for_statement left: (identifier) @local)

(identifier) @usage
