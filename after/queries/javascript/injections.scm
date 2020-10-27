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
                                  value: ((template_string) @injection
                                          (#set! "lang" "html"))))))))

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
                                  value: ((template_string) @injection
                                          (#set! "lang" "html")))))))
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
                                           ((template_string) @injection
                                           (#set! "lang" "css")))))))))

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
                                           ((template_string) @injection
                                           (#set! "lang" "css"))))))))
  declaration: (class_declaration))
