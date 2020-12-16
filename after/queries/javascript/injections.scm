;; Angular language injections
;; TODO: Figure out how to inject preproccessors languages

(class_declaration
  decorator: (decorator
               (call_expression
                 function: ((identifier) @_name
                            (#eq? @_name "Component"))
                 arguments: (arguments
                              (object
                                (pair
                                  key: ((property_identifier) @_prop
                                        (#eq? @_prop "template"))
                                  value: ((template_string) @html)))))))

(export_statement
  decorator: (decorator
               (call_expression
                 function: ((identifier) @_name
                            (#eq? @_name "Component"))
                 arguments: (arguments
                              (object
                                (pair
                                  key: ((property_identifier) @_prop
                                        (#eq? @_prop "template"))
                                  value: ((template_string) @html))))))
  declaration: (class_declaration))

(class_declaration
  decorator: (decorator
               (call_expression
                 function: ((identifier) @_name
                            (#eq? @_name "Component"))
                 arguments: (arguments
                              (object
                                (pair
                                  key: ((property_identifier) @_prop
                                        (#eq? @_prop "styles"))
                                  value: (array
                                           ((template_string) @css))))))))

(export_statement
  decorator: (decorator
               (call_expression
                 function: ((identifier) @_name
                            (#eq? @_name "Component"))
                 arguments: (arguments
                              (object
                                (pair
                                  key: ((property_identifier) @_prop
                                        (#eq? @_prop "styles"))
                                  value: (array
                                           ((template_string) @css)))))))
  declaration: (class_declaration))
