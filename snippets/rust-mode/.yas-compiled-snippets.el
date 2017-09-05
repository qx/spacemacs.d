;;; Compiled snippets and support files for `rust-mode'
;;; Snippet definitions:
;;;
(yas-define-snippets 'rust-mode
                     '(("whilel" "while let ${1:pattern} = ${2:expression} {\n      $0\n}\n" "while let pattern = expression { ... }" nil nil nil "/Users/ok/.spacemacs.d/snippets/rust-mode/whilel" nil nil)
                       ("while" "while ${1:expression} {\n      $0\n}" "while expression { ... }" nil nil nil "/Users/ok/.spacemacs.d/snippets/rust-mode/while" nil nil)
                       ("warn!" "#![warn(${1:lint})]" "#![warn(lint)]" nil nil nil "/Users/ok/.spacemacs.d/snippets/rust-mode/warn!" nil nil)
                       ("warn" "#[warn(${1:lint})]" "#[warn(lint)]" nil nil nil "/Users/ok/.spacemacs.d/snippets/rust-mode/warn" nil nil)
                       ("type" "type ${1:TypeName} = ${2:TypeName};" "type TypeName = TypeName;" nil nil nil "/Users/ok/.spacemacs.d/snippets/rust-mode/type" nil nil)
                       ("trait" "trait ${1:Type} {\n      $0\n}" "trait Type { ... }" nil nil nil "/Users/ok/.spacemacs.d/snippets/rust-mode/trait" nil nil)
                       ("testmod" "#[cfg(test)]\nmod tests {\n    use super::*;\n\n    #[test]\n    fn ${1:test_name}() {\n       $0\n    }\n}\n" "test module" nil nil nil "/Users/ok/.spacemacs.d/snippets/rust-mode/testmod" nil nil)
                       ("test" "#[test]\nfn ${1:test_name}() {\n   $0\n}\n" "#[test] fn test_name() { .. }" nil nil nil "/Users/ok/.spacemacs.d/snippets/rust-mode/test" nil nil)
                       ("struct" "struct ${1:TypeName} {\n       $0\n}" "struct TypeName { .. }" nil nil nil "/Users/ok/.spacemacs.d/snippets/rust-mode/struct" nil nil)
                       ("static" "static ${1:CONSTANT}: ${2:Type} = ${3:value};" "CONSTANT: Type = value;" nil nil nil "/Users/ok/.spacemacs.d/snippets/rust-mode/static" nil nil)
                       ("spawn" "spawn(proc() {\n      $0\n});\n" "spawn(proc() { ... });" nil nil nil "/Users/ok/.spacemacs.d/snippets/rust-mode/spawn" nil nil)
                       ("println" "println!(\"${1:{}}\", $2);\n" "println!(\"{}\", value);" nil nil nil "/Users/ok/.spacemacs.d/snippets/rust-mode/println" nil nil)
                       ("print" "print!(\"${1:{}}\", $2);" "print!(\"{}\", value);" nil nil nil "/Users/ok/.spacemacs.d/snippets/rust-mode/print" nil nil)
                       ("match" "match ${1:expression} {\n      $0\n}" "match expression { ... }" nil nil nil "/Users/ok/.spacemacs.d/snippets/rust-mode/match" nil nil)
                       ("main" "fn main() {\n   $0\n}" "fn main() { ... }" nil nil nil "/Users/ok/.spacemacs.d/snippets/rust-mode/main" nil nil)
                       ("macro" "macro_rules! ${1:name} {\n     ($2) => ($3);\n}" "macro_rules! name { (..) => (..); }" nil nil nil "/Users/ok/.spacemacs.d/snippets/rust-mode/macro" nil nil)
                       ("loop" "loop {\n     $0\n}" "loop { ... }" nil nil nil "/Users/ok/.spacemacs.d/snippets/rust-mode/loop" nil nil)
                       ("lettm" "let mut ${1:pattern}: ${2:type} = ${3:expression};" "let mut pattern: type = expression;" nil nil nil "/Users/ok/.spacemacs.d/snippets/rust-mode/lettm" nil nil)
                       ("lett" "let ${1:pattern}: ${2:type} = ${3:expression};" "let pattern: type = expression;" nil nil nil "/Users/ok/.spacemacs.d/snippets/rust-mode/lett" nil nil)
                       ("letm" "let mut ${1:pattern} = ${2:expression};" "let mut pattern = expression;" nil nil nil "/Users/ok/.spacemacs.d/snippets/rust-mode/letm" nil nil)
                       ("let" "let ${1:pattern} = ${2:expression};" "let pattern = expression;" nil nil nil "/Users/ok/.spacemacs.d/snippets/rust-mode/let" nil nil)
                       ("implt" "impl ${1:Trait} for ${2:Type} {\n     $0\n}" "impl Trait for Type { ... }" nil nil nil "/Users/ok/.spacemacs.d/snippets/rust-mode/implt" nil nil)
                       ("impl" "impl ${1:Type} {\n     $0\n}" "impl Type { ... }" nil nil nil "/Users/ok/.spacemacs.d/snippets/rust-mode/impl" nil nil)
                       ("ifl" "if let ${1:pattern} = ${2:expression} { $0 };" "if let pattern = expression { ... };" nil nil nil "/Users/ok/.spacemacs.d/snippets/rust-mode/ifl" nil nil)
                       ("ife" "if ${1:expression} {\n   $0\n} else {\n   \n}" "if expression { ... } else { .. }" nil nil nil "/Users/ok/.spacemacs.d/snippets/rust-mode/ife" nil nil)
                       ("if" "if ${1:expression} {\n    $0\n}" "if expr { ... }" nil nil nil "/Users/ok/.spacemacs.d/snippets/rust-mode/if" nil nil)
                       ("for" "for ${1:var} in ${2:iterable} {\n    $0\n}" "for var in iterable { ... }" nil nil nil "/Users/ok/.spacemacs.d/snippets/rust-mode/for" nil nil)
                       ("fnw" "fn ${1:name}<${2:T}>(${3:x: T}) where ${4:T: Clone} {\n     $0\n}" "fn name<T>(x: T) where T: Clone { ... }" nil nil nil "/Users/ok/.spacemacs.d/snippets/rust-mode/fnw" nil nil)
                       ("fns" "fn ${1:name}(${2:&self}) -> ${3:Type};" "fn name(&self) -> Type;" nil nil nil "/Users/ok/.spacemacs.d/snippets/rust-mode/fns" nil nil)
                       ("fnr" "fn ${1:name}($2) -> ${3:Type} {\n     $0\n}" "fn name() -> Type { ... }" nil nil nil "/Users/ok/.spacemacs.d/snippets/rust-mode/fnr" nil nil)
                       ("fn" "fn ${1:name}($2) {\n    $0\n}" "fn name() { ... }" nil nil nil "/Users/ok/.spacemacs.d/snippets/rust-mode/fn" nil nil)
                       ("enum" "enum ${1:Type} {\n     $0\n}" "enum Type { ... }" nil nil nil "/Users/ok/.spacemacs.d/snippets/rust-mode/enum" nil nil)
                       ("drop" "impl Drop for ${1:Type} {\n     fn drop(&mut self) {\n          $0\n      }\n}" "impl Drop for Type { fn drop(...) }" nil nil nil "/Users/ok/.spacemacs.d/snippets/rust-mode/drop" nil nil)
                       ("derive" "#[derive(${1:Trait})]" "#[derive(Trait)]" nil nil nil "/Users/ok/.spacemacs.d/snippets/rust-mode/derive" nil nil)
                       ("deny!" "#![deny(${1:lint})]\n" "#![deny(lint)]" nil nil nil "/Users/ok/.spacemacs.d/snippets/rust-mode/deny!" nil nil)
                       ("deny" "#[deny(${1:lint})]" "#[deny(lint)]" nil nil nil "/Users/ok/.spacemacs.d/snippets/rust-mode/deny" nil nil)
                       ("||" "|${1:arguments}| {\n       $0\n}\n" "closure" nil nil nil "/Users/ok/.spacemacs.d/snippets/rust-mode/closure" nil nil)
                       ("cfg=" "#[cfg(${1:option} = \"${2:value}\")]" "#[cfg(option = \"value\")]" nil nil nil "/Users/ok/.spacemacs.d/snippets/rust-mode/cfg=" nil nil)
                       ("cfg" "#[cfg(${1:option})]" "#[cfg(option)]" nil nil nil "/Users/ok/.spacemacs.d/snippets/rust-mode/cfg" nil nil)
                       ("case" "${1:pattern} => ${2:expression}," "pattern => expression," nil nil nil "/Users/ok/.spacemacs.d/snippets/rust-mode/case" nil nil)
                       ("asseq" "assert_eq!(${1:expected}, ${2:actual});" "assert_eq!(expected, actual);" nil nil nil "/Users/ok/.spacemacs.d/snippets/rust-mode/asserteq" nil nil)
                       ("ass" "assert!(${1:predicate});" "assert!(predicate);" nil nil nil "/Users/ok/.spacemacs.d/snippets/rust-mode/assert" nil nil)
                       ("allow!" "#![allow(${1:lint})]" "#![allow(lint)]" nil nil nil "/Users/ok/.spacemacs.d/snippets/rust-mode/allow!" nil nil)
                       ("allow" "#[allow(${1:lint})]" "#[allow(lint)]" nil nil nil "/Users/ok/.spacemacs.d/snippets/rust-mode/allow" nil nil)))


;;; Do not edit! File generated at Tue Sep  5 11:58:36 2017
