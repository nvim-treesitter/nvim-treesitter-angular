; [state]="myState$ | async"
(attribute
  ((attribute_name) @_name
   (#lua-match? @_name "%[.*%]"))
  (quoted_attribute_value
    ((attribute_value) @injection
     (#set! "lang" "javascript"))))

; (myEvent)="handle($event)"
(attribute
  ((attribute_name) @_name
   (#lua-match? @_name "%(.*%)"))
  (quoted_attribute_value
    ((attribute_value) @injection
     (#set! "lang" "javascript"))))

; *ngIf="blorgy"
(attribute
  ((attribute_name) @_name
   (#lua-match? @_name "^%*.*"))
  (quoted_attribute_value
    ((attribute_value) @injection
     (#set! "lang" "javascript"))))

; {{ someBinding }}
(element
  ((text) @_name @injection
   (#lua-match? @_name "%{%{.*%}%}")
   (#set! "lang" "javascript")))
