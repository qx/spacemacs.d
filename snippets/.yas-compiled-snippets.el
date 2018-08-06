;;; Compiled snippets and support files for `snippets'
;;; Snippet definitions:
;;;
(yas-define-snippets 'snippets
                     '(("README.md" "# Private directory for Yasnippets snippets\n\nThe content of this directory is ignored by Git. This is the default place\nwhere to store your private yasnippets.\n\nThis path will be loaded automatically and used whenever Yasnippets loads.\n" "README.md" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/README.md" nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'snippets
                     '(("target" "<target name=\"${1:compile}\" ${2:other}>\n        $0\n</target>" "target" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/antlr-mode/target" nil nil)
                       ("prop" "<property name=\"${1:name}\" value=\"${2:value}\" />\n$0" "property" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/antlr-mode/property" nil nil)
                       ("proj" "<project name=\"${1:test}\" default=\"${2:compile}\" basedir=\"${3:.}\">\n\n$0\n</project>" "project" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/antlr-mode/project" nil nil)))


;;; contents of the .yas-setup.el support file:
;;;
(require 'yasnippet)

(defun yas-c++-class-name (str)
  "Search for a class name like `DerivedClass' in STR
(which may look like `DerivedClass : ParentClass1, ParentClass2, ...')

If found, the class name is returned, otherwise STR is returned"
  (yas-substr str "[^: ]*"))

(defun yas-c++-class-method-declare-choice ()
  "Choose and return the end of a C++11 class method declaration"
  (yas-choose-value '(";" " = default;" " = delete;")))
;;; Snippet definitions:
;;;
(yas-define-snippets 'snippets
                     '(("vec" "std::vector<${1:Class}> ${2:var}${3:(${4:10}, $1($5))};" "vector" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/c++-mode/vector" nil nil)
                       ("using" "using namespace ${std};\n$0" "using namespace ..." nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/c++-mode/using" nil nil)
                       ("tryw" "try {\n    `(or yas/selected-text (car kill-ring))`\n} catch ${1:Exception} {\n\n}\n" "tryw" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/c++-mode/tryw" nil nil)
                       ("try" "try {\n    $0\n} catch (${1:type}) {\n\n}\n" "try" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/c++-mode/try" nil nil)
                       ("throw" "throw ${1:MyError}($0);" "throw" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/c++-mode/throw" nil nil)
                       ("th" "this" "this" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/c++-mode/this" nil nil)
                       ("ts" "BOOST_AUTO_TEST_SUITE( ${1:test_suite1} )\n\n$0\n\nBOOST_AUTO_TEST_SUITE_END()" "test_suite" nil
                        ("testing")
                        nil "/Users/ok/Dropbox/spacemacs.d/snippets/c++-mode/test_suite" nil nil)
                       ("test_main" "int main(int argc, char **argv)\n{\n      ::testing::InitGoogleTest(&argc, argv);\n       return RUN_ALL_TESTS();\n}" "test_main" nil
                        ("testing")
                        nil "/Users/ok/Dropbox/spacemacs.d/snippets/c++-mode/test_main" nil nil)
                       ("tc" "BOOST_AUTO_TEST_CASE( ${1:test_case} )\n{\n        $0\n}" "test case" nil
                        ("testing")
                        nil "/Users/ok/Dropbox/spacemacs.d/snippets/c++-mode/test case" nil nil)
                       ("temp" "template<${1:$$(yas/choose-value '(\"typename\" \"class\"))} ${2:T}>\n$0" "template" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/c++-mode/template" nil nil)
                       ("str" "#include <string>" "str" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/c++-mode/str" nil nil)
                       ("st" "std::$0" "std::" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/c++-mode/std_colon" nil nil)
                       ("std" "using namespace std;" "std" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/c++-mode/std" nil nil)
                       ("ss" "#include <sstream>" "<sstream>" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/c++-mode/sstream" nil nil)
                       ("pb" "public:\n        $0" "public" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/c++-mode/public" nil nil)
                       ("pt" "protected:\n        $0" "protected" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/c++-mode/protected" nil nil)
                       ("pr" "private:\n        $0" "private" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/c++-mode/private" nil nil)
                       ("pack" "void cNetCommBuffer::pack(${1:type})\n{\n\n}\n\n$0" "pack" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/c++-mode/pack" nil nil)
                       ("os" "#include <ostream>" "ostream" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/c++-mode/ostream" nil nil)
                       ("<<" "std::ostream& operator<<(std::ostream& os, const ${1:Class}& ${2:c})\n{\n         $0\n         return os;\n}" "operator<<" nil
                        ("operator overloading")
                        nil "/Users/ok/Dropbox/spacemacs.d/snippets/c++-mode/operator_ostream" nil nil)
                       (">>" "std::istream& operator>>(std::istream& is, const ${1:Class}& ${2:c})\n{\n         $0\n	 return is;\n}" "operator>>" nil
                        ("operator overloading")
                        nil "/Users/ok/Dropbox/spacemacs.d/snippets/c++-mode/operator_istream" nil nil)
                       ("[]" "${1:Type}& operator[](${2:int index})\n{\n        $0\n}" "operator[]" nil
                        ("operator overloading")
                        nil "/Users/ok/Dropbox/spacemacs.d/snippets/c++-mode/operator[]" nil nil)
                       ("==" "bool ${1:MyClass}::operator==(const $1 &other) const\n{\n     $0\n}" "operator==" nil
                        ("operator overloading")
                        nil "/Users/ok/Dropbox/spacemacs.d/snippets/c++-mode/operator==" nil nil)
                       ("=" "${1:MyClass}& $1::operator=(const $1 &rhs)\n{\n    // Check for self-assignment!\n    if (this == &rhs)\n      return *this;\n    $0\n    return *this;\n}" "operator=" nil
                        ("operator overloading")
                        nil "/Users/ok/Dropbox/spacemacs.d/snippets/c++-mode/operator=" nil nil)
                       ("+=" "${1:MyClass}& $1::operator+=(${2:const $1 &rhs})\n{\n  $0\n  return *this;\n}" "operator+=" nil
                        ("operator overloading")
                        nil "/Users/ok/Dropbox/spacemacs.d/snippets/c++-mode/operator+=" nil nil)
                       ("+" "${1:MyClass} $1::operator+(const $1 &other)\n{\n    $1 result = *this;\n    result += other;\n    return result;\n}" "operator+" nil
                        ("operator overloading")
                        nil "/Users/ok/Dropbox/spacemacs.d/snippets/c++-mode/operator+" nil nil)
                       ("!=" "bool ${1:MyClass}::operator!=(const $1 &other) const\n{\n    return !(*this == other);\n}" "operator!=" nil
                        ("operator overloading")
                        nil "/Users/ok/Dropbox/spacemacs.d/snippets/c++-mode/operator!=" nil nil)
                       ("ns" "namespace " "namespace ..." nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/c++-mode/ns" nil nil)
                       ("ns" "namespace ${1:Namespace} {\n\n          `yas/selected-text`\n\n}  // $1" "namespace" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/c++-mode/namespace" nil nil)
                       ("mod" "class ${1:Class} : public cSimpleModule\n{\n   $0\n}" "module" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/c++-mode/module" nil nil)
                       ("map" "std::map<${1:type1}$0> ${2:var};" "map" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/c++-mode/map" nil nil)
                       ("iter" "${1:std::}${2:vector<int>}::iterator ${3:iter};\n" "iterator" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/c++-mode/iterator" nil nil)
                       ("io" "#include <iostream>" "io" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/c++-mode/io" nil nil)
                       ("il" "inline $0" "inline" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/c++-mode/inline" nil nil)
                       ("ignore" "${1:std::}cin.ignore(std::numeric_limits<std::streamsize>::max(), '\\n');" "ignore" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/c++-mode/ignore" nil nil)
                       ("gtest" "#include <gtest/gtest.h>" "gtest" nil
                        ("testing")
                        nil "/Users/ok/Dropbox/spacemacs.d/snippets/c++-mode/gtest" nil nil)
                       ("f" "${1:type} ${2:Class}::${3:name}(${4:args})${5: const}\n{\n        $0\n}" "function" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/c++-mode/function" nil nil)
                       ("f" "${1:type} ${2:name}(${3:args})${4: const};" "fun_declaration" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/c++-mode/fun_declaration" nil nil)
                       ("fr" "friend $0;" "friend" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/c++-mode/friend" nil nil)
                       ("fori" "for (${1:auto }${2:it} = ${3:var}.begin(); $2 != $3.end(); ++$2) {\n    $0\n}" "fori" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/c++-mode/fori" nil nil)
                       ("fixt" "BOOST_FIXTURE_TEST_SUITE( ${1:name}, ${2:Fixture} )\n\n$0\n\nBOOST_AUTO_TEST_SUITE_END()" "fixture" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/c++-mode/fixture" nil nil)
                       ("enum" "enum ${1:NAME}{\n$0\n};" "enum" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/c++-mode/enum" nil nil)
                       ("cast" "check_and_cast<${1:Type} *>(${2:msg});" "dynamic_casting" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/c++-mode/dynamic_casting" nil nil)
                       ("doc" "/**\n * $0\n */" "doc" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/c++-mode/doc" nil nil)
                       ("dla" "delete[] ${1:arr};" "delete[]" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/c++-mode/delete[]" nil nil)
                       ("dl" "delete ${1:pointer};" "delete" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/c++-mode/delete" nil nil)
                       ("<<" "friend std::ostream& operator<<(std::ostream&, const ${1:Class}&);" "d_operator<<" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/c++-mode/d_operator_ostream" nil nil)
                       (">>" "friend std::istream& operator>>(std::istream&, const ${1:Class}&);" "d_operator>>" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/c++-mode/d_operator_istream" nil nil)
                       ("c[" "const ${1:Type}& operator[](${2:int index}) const;" "d_operator[]_const" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/c++-mode/d_operator[]_const" nil nil)
                       ("[" "${1:Type}& operator[](${2:int index});" "d_operator[]" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/c++-mode/d_operator[]" nil nil)
                       ("<<" "friend std::ostream& operator<<(std::ostream&, const ${1:Class}&);" "d_operator<<" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/c++-mode/d_operator" nil nil)
                       ("d+=" "${1:MyClass}& operator+=(${2:const $1 &});" "d+=" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/c++-mode/d+=" nil nil)
                       ("cstd" "#include <cstdlib>" "cstd" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/c++-mode/cstd" nil nil)
                       ("cpp" "#include \"`(file-name-nondirectory (file-name-sans-extension (buffer-file-name)))`.h\"" "cpp" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/c++-mode/cpp" nil nil)
                       ("cout" "`(progn (save-excursion) (goto-char (point-min)) (unless (re-search-forward\n\"^using\\\\s-+namespace std;\" nil 'no-errer) \"std::\"))\n`cout << $0${1: << \"${2:\\n}\"};" "cout" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/c++-mode/cout" nil nil)
                       ("ct" "${1:Class}::$1(${2:args}) ${3: : ${4:init}}\n{\n        $0\n}" "constructor" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/c++-mode/constructor" nil nil)
                       ("c[" "const ${1:Type}& operator[](${2:int index}) const\n{\n        $0\n}" "const_[]" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/c++-mode/const_[]" nil nil)
                       ("cls11" "class ${1:Name}\n{\npublic:\n${2:  ${3://! Default constructor\n  }${1:$(yas-c++-class-name yas-text)}()${4:;$(yas-c++-class-method-declare-choice)}\n\n}${5:  ${6://! Copy constructor\n  }${1:$(yas-c++-class-name yas-text)}(const ${1:$(yas-c++-class-name yas-text)} &other)${7:;$(yas-c++-class-method-declare-choice)}\n\n}${8:  ${9://! Move constructor\n  }${1:$(yas-c++-class-name yas-text)}(${1:$(yas-c++-class-name yas-text)} &&other)${10: noexcept}${11:;$(yas-c++-class-method-declare-choice)}\n\n}${12:  ${13://! Destructor\n  }${14:virtual }~${1:$(yas-c++-class-name yas-text)}()${15: noexcept}${16:;$(yas-c++-class-method-declare-choice)}\n\n}${17:  ${18://! Copy assignment operator\n  }${1:$(yas-c++-class-name yas-text)}& operator=(const ${1:$(yas-c++-class-name yas-text)} &other)${19:;$(yas-c++-class-method-declare-choice)}\n\n}${20:  ${21://! Move assignment operator\n  }${1:$(yas-c++-class-name yas-text)}& operator=(${1:$(yas-c++-class-name yas-text)} &&other)${22: noexcept}${23:;$(yas-c++-class-method-declare-choice)}\n\n}$0\n\nprotected:\nprivate:\n};" "class11" nil
                        ("c++11")
                        nil "/Users/ok/Dropbox/spacemacs.d/snippets/c++-mode/class11" nil "d7c41f87-9b8a-479d-bb12-89f4cbdd46a7")
                       ("cls" "class ${1:Name}\n{\npublic:\n    ${1:$(yas/substr yas-text \"[^: ]*\")}();\n    ${2:virtual ~${1:$(yas/substr yas-text \"[^: ]*\")}();}\n};\n$0" "class" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/c++-mode/class" nil nil)
                       ("cin" "cin >> $0;" "cin" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/c++-mode/cin" nil nil)
                       ("err" "cerr << $0;\n" "cerr" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/c++-mode/cerr" nil nil)
                       ("req" "BOOST_REQUIRE( ${1:condition} );\n$0" "boost_require" nil
                        ("boost")
                        nil "/Users/ok/Dropbox/spacemacs.d/snippets/c++-mode/boost_require" nil nil)
                       ("beginend" "${1:v}.begin(), $1.end" "v.begin(), v.end()" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/c++-mode/beginend" nil nil)
                       ("ass" "assert($0);" "assert" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/c++-mode/assert" nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'snippets
                     '(("uni" "#include <unistd.h>" "unistd" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/c-mode/unistd" nil nil)
                       ("union" "typedef union {\n        $0\n} ${1:name};" "union" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/c-mode/union" nil nil)
                       ("str" "#include <string.h>" "string" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/c-mode/string" nil nil)
                       ("std" "#include <stdlib.h>\n" "stdlib" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/c-mode/stdlib" nil nil)
                       ("io" "#include <stdio.h>" "stdio" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/c-mode/stdio" nil nil)
                       ("pr" "printf(\"${1:format string}\"${2: ,a0,a1});" "printf" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/c-mode/printf" nil nil)
                       ("packed" "__attribute__((__packed__))$0" "packed" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/c-mode/packed" nil nil)
                       ("malloc" "malloc(sizeof($1)${2: * ${3:3}});\n$0" "malloc" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/c-mode/malloc" nil nil)
                       ("d" "#define $0" "define" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/c-mode/define" nil nil)
                       ("compile" "// -*- compile-command: \"${1:gcc -Wall -o ${2:dest} ${3:file}}\" -*-" "compile" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/c-mode/compile" nil nil)
                       ("ass" "#include <assert.h>\n$0" "assert" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/c-mode/assert" nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'snippets
                     '(("while" "while (${1:condition}) {\n      $0\n}" "while" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/cc-mode/while" nil nil)
                       ("typedef" "typedef ${1:type} ${2:alias};" "typedef" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/cc-mode/typedef" nil nil)
                       ("?" "(${1:cond}) ? ${2:then} : ${3:else};" "ternary" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/cc-mode/ternary" nil nil)
                       ("switch" "switch (${1:expr}) {\ncase ${2:constexpr}:${3: \\{}\n    $0\n    break;\n${3:$(if (string-match \"\\{\" yas-text) \"\\}\\n\" \"\")}default:\n    break;\n}" "switch (...) { case : ... default: ...}" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/cc-mode/switch" nil nil)
                       ("struct" "struct ${1:name}\n{\n    $0\n};" "struct ... { ... }" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/cc-mode/struct" nil nil)
                       ("printf" "printf(\"${1:%s}\\\\n\"${1:$(if (string-match \"%\" yas-text) \", \" \"\\);\")\n}$2${1:$(if (string-match \"%\" yas-text) \"\\);\" \"\")}" "printf" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/cc-mode/printf" nil nil)
                       ("once" "#ifndef ${1:`(upcase (file-name-nondirectory (file-name-sans-extension (buffer-file-name))))`_H}\n#define $1\n\n$0\n\n#endif /* $1 */" "#ifndef XXX; #define XXX; #endif" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/cc-mode/once" nil nil)
                       ("!<" "/*!< ${1:Detailed description after the member} */" "Member description" nil
                        ("doxygen")
                        nil "/Users/ok/Dropbox/spacemacs.d/snippets/cc-mode/member_description" nil nil)
                       ("math" "#include <math.h>\n$0" "math" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/cc-mode/math" nil nil)
                       ("main" "int main(${1:int argc, char *argv[]})\n{\n    $0\n    return 0;\n}\n" "main" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/cc-mode/main" nil nil)
                       ("inc" "#include \"$1\"" "#include \"...\"" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/cc-mode/inc.1" nil nil)
                       ("inc" "#include <$1>" "#include <...>" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/cc-mode/inc" nil nil)
                       ("ifdef" "#ifdef ${1:MACRO}\n\n$0\n\n#endif // $1" "ifdef" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/cc-mode/ifdef" nil nil)
                       ("if" "if (${1:condition}) ${2:{\n    $0\n}}" "if (...) { ... }" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/cc-mode/if" nil nil)
                       ("\\brief" "/**\n *  \\brief ${1:function description}\n ${2:*\n *  ${3:Detailed description}\n *\n }*  \\param ${4:param}\n *  \\return ${5:return type}\n */" "Function description" nil
                        ("doxygen")
                        nil "/Users/ok/Dropbox/spacemacs.d/snippets/cc-mode/function_description" nil nil)
                       ("forn" "for (${1:auto }${2:i} = ${3:0}; $2 < ${4:MAXIMUM}; ++$2) {\n    $0\n}\n" "for_n" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/cc-mode/for_n" nil nil)
                       ("for" "for (${1:i = 0}; ${2:i < N}; ${3:i++}) {\n    $0\n}" "for" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/cc-mode/for" nil nil)
                       ("fopen" "FILE *${fp} = fopen(${\"file\"}, \"${r}\");" "FILE *fp = fopen(..., ...);" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/cc-mode/fopen" nil nil)
                       ("\\file" "/**\n *   \\file ${1:`(file-name-nondirectory(buffer-file-name))`}\n *   \\brief ${2:A Documented file.}\n ${3:*\n *  ${4:Detailed description}\n *\n}*/\n" "File description" nil
                        ("doxygen")
                        nil "/Users/ok/Dropbox/spacemacs.d/snippets/cc-mode/file_description" nil nil)
                       ("else" "else${1: {\n    $0\n}}" "else { ... }" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/cc-mode/else" nil nil)
                       ("do" "do\n{\n    $0\n} while (${1:condition});" "do { ... } while (...)" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/cc-mode/do" nil nil)
                       ("case" "`(indent-region (- (point) 20) (+ (point) 20) nil)`case ${2:constexpr}:${3: \\{}\n    $0\n    break;\n${3:$(if (string-match \"\\{\" yas-text) \"\\}\" \"\")}" "case : {...}" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/cc-mode/case" nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'snippets
                     '(("user" "user \"${1:random}\" do\n  action :create\n  comment \"${2:Random User}\"\n  uid ${3:1000}\n  gid \"${4:users}\"\n  home \"${5:/home/random}\"\n  shell \"${6:/bin/zsh}\"\n  password \"${7:\\$1\\$JJsvHslV\\$szsCjVEroftprNn4JHtDi.}\"\n  supports :manage_home =>manage_home true \nend\n" "user" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/chef-mode/user" nil nil)
                       ("templatev" "template \"${1:name}\" do\n  source \"${2:source}.erb\"\n  owner \"root\"\n  group \"root\"\n  node \"0644\"\n  variables( ${3::config_var => node[:configs][:config_var]} 	)\nend\n" "templatev" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/chef-mode/templatev" nil nil)
                       ("template" "template \"${1:name}\" do\n  source \"${2:source}.erb\"\n  owner \"root\"\n  group \"root\"\n  mode \"0644\"\nend\n" "template" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/chef-mode/template" nil nil)
                       ("supports" "supports :status => :${1:true}, :restart => :${2:true}, :reload => :${3:true}" "supports" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/chef-mode/supports" nil nil)
                       ("subscribes" "subscribes :${1:restart}, \"${2:template}[${3:name}]\"" "subscribes" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/chef-mode/subscribes" nil nil)
                       ("servicep" "service \"${1:name}\" do\n  pattern \"${2:pattern}\"\n  supports :status => ${3:true}, :restart => ${4:true}, :reload => ${5:true}\n  action ${6:[ :enable, :start ]}\nend" "servicep" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/chef-mode/servicep" nil nil)
                       ("service" "service \"${1:name}\" do\n  supports :status => ${2:true}, :restart => ${3:true}, :truereload => ${4:true}\n  action ${5:[ :enable, :start ]}\nend" "service" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/chef-mode/service" nil nil)
                       ("script" "script \"${1:do something}\" do\n  interpreter \"bash\"\n  user \"${2:root}\"\n  cwd \"${3:/tmp}\"\n  creates \"${4:maybe}\"\n  code <<-EOH\n    STATUS=0\n    $0 || STATUS=1\n    exit $STATUS\n    EOH\nend\n" "script" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/chef-mode/script" nil nil)
                       ("ruby" "ruby_block \"${1:reload client config}\" do\n  block do\n    ${0:Chef::Config.from_file(\"/Chefetc/chef/client.rb\")}\n  end\nend" "ruby" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/chef-mode/ruby" nil nil)
                       ("role" "name \"${1:role name}\"\n  description \"${2:Description for the role}\"\n  env_run_lists \"${3:role name}\" => [\n  ]\n  run_list \"\"\n  default_attributes(\n  ${4::attribute => \"example\"}\n  )\n" "role" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/chef-mode/role" nil nil)
                       ("retries" "retries ${1:1}\nretry_delay ${2:2}" "retries" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/chef-mode/retries" nil nil)
                       ("remote_file" "remote_file \"${1:/tmp/remote_file}\" do\n  owner \"${2:root}\"\n  group \"${3:root}\"\n  mode \"${4:0644}\"\n  source \"${5:http://www.example.com/remote_file}\"\n  checksum \"${6:sha256checksum}\"\nend" "remote_file" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/chef-mode/remote_file" nil nil)
                       ("python" "python \"${1:install something}\" do\n  user \"${2:root}\"\n  cwd \"${3:/tmp}\"\n  code <<-EOH\n    $0\n  EOH\nend" "python" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/chef-mode/python" nil nil)
                       ("provider" "provider Chef::Provider::${0:Package::Rubygems}" "provider" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/chef-mode/provider" nil nil)
                       ("pak" "package \"${1:name}\" do\n  action :${2:install}\n  version \"${3:1.0-1}\"\nend" "pak" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/chef-mode/pak" nil nil)
                       ("pac" "package \"${1:name}\" do\n  action :${2:install}\n  version \"${3:1.0-1}\"\nend" "pac" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/chef-mode/pac" nil nil)
                       ("only_if" "only_if \"${1}\"" "only_if" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/chef-mode/only_if" nil nil)
                       ("notifies" "notifies :${1:restart}, \"${2:service}[${3:name}]\"" "notifies" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/chef-mode/notifies" nil nil)
                       ("not_if" "not_if \"${1}\"" "not_if" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/chef-mode/not_if" nil nil)
                       ("meta" "maintainer       \"${1:YOUR_COMPANY_NAME}\"\nmaintainer_email \"${2:YOUR_EMAIL}\"\nlicense          \"${3:All rights reserved}\"\ndescription      \"${4:Installs/Configures example}\"\nlong_description IO.read(File.join(File.dirname(__FILE__), 'README.rdoc'))\nversion          \"${5:0.0.1}\"" "meta" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/chef-mode/meta" nil nil)
                       ("machine" "machine \"${1:name}\" do\n  role '${2:web}'\n  recipe '${3:web}'\n  chef_environment '${4:_default}'\n  converge true\nend\n" "machine" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/chef-mode/machine" nil nil)
                       ("log" "log (\"${1:your string to log}\") { level :${2:debug} }" "log" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/chef-mode/log" nil nil)
                       ("linkf" "link \"${1:/tmp/passwd}\" do\n  to \"${2:/etc/passwd}\"\n  link_type :${3:symbolic}\n  owner \"${4:root}\"\n  group \"${5:root}\"\nend" "linkf" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/chef-mode/linkf" nil nil)
                       ("link" "link \"${1:/tmp/passwd}\" do\n  to \"${2:/etc/passwd}\"\nend" "link" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/chef-mode/link" nil nil)
                       ("inc" "include_recipe \"${1:example::recipe}\"" "inc" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/chef-mode/inc" nil nil)
                       ("ignore_failure" "ignore_failure ${0:true}" "ignore_failure" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/chef-mode/ignore_failure" nil nil)
                       ("http_requestp" "http_request \"${1:posting data}\" do\n  action :post\n  url 		\"${2:http://example.com/check_in}\"\n  message ${3::some => \"data\"}\n  headers (${4:\\{\"AUTHORIZATION\" => authorization\\}})\nend" "http_requestp" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/chef-mode/http_requestp" nil nil)
                       ("http_request" "http_request \"${1:some message}\" do\n  url \"${2:http://example.com/check_in}\"\nend" "http_request" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/chef-mode/http_request" nil nil)
                       ("group" "group \"${1:name}\" do\n  gid ${2:999}\n  members [${3:'paco','vicente'}]\n\n  action :create\nend" "group" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/chef-mode/group" nil nil)
                       ("git" "git \"${1:/home/user/deployment}\" do\n  repository \"${2:git@github.com:gitsite/deploymentployment.git}\"\n  reference \"${3:master}\"\n  user \"${4:user}\"\n  group \"${5:templateest}\"\n  action :sync\nend" "git" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/chef-mode/git" nil nil)
                       ("filef" "file \"${1:name}\" do\n  path \"${3:path}\"\n  backup ${4:5}\n  owner \"${5:root}\"\n  group \"${6:root}\"\n  mode \"${7:0644}\"\n  content \"${8:content here}\"\n\n  action :${2:create}\nend" "filef" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/chef-mode/filef" nil nil)
                       ("file" "file \"${1:name}\" do\n  owner \"root\"\n  group \"root\"\n  mode \"0644\"\n\n  action :create\nend" "file" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/chef-mode/file" nil nil)
                       ("executef" "execute \"${1:name}\" do\n  command \"${2:ls -la}\"\n  creates \"$ls{3:/tmp/something}\"\n  cwd \"${4:/tmp}\"\n  environment ({${5:'HOME' => '/home/myhome'}})\n  user \"${6:root}\"\n  group \"${7:root}\"\n  path \"${8:['/opt/bin','/opt/sbin']}\"\n  timeout ${9:3600}\n  returns ${10:0}\n  umask \"${11:022}umask\"\n\n  action :${12:run}\nend" "executef" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/chef-mode/executef" nil nil)
                       ("execute" "execute \"${1:name}\" do\n  command \"${2:ls -la}\"\n  creates \"${3:/tmp/something}\"\n\n  action :${4:run}\nend" "execute" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/chef-mode/execute" nil nil)
                       ("env" "env \"${1:RAILS_ENV}\" do\n  value \"${2:production}\"\nend" "env" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/chef-mode/env" nil nil)
                       ("directoryf" "directory \"${1:name}\" do\n  owner \"$create{2:root}\"\n  group \"${3:root}\"\n  mode \"${4:0755}\"\n  path \"${5:name}\"\n  recursive ${6:false}\n\n  action :${7:create}\nend\n" "directoryf" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/chef-mode/directoryf" nil nil)
                       ("directory" "directory \"${1:name}\" do\n  owner \"root\"\n  group \"root\"\n  mode \"0755\"\n\n  action :create\nend\n" "directory" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/chef-mode/directory" nil nil)
                       ("deploy" "deploy \"/my/deploy/dir\" do\n  repo \"git@github.com/whoami/provideroject\"\n  revision \"abc123\" # or \"HEAD\" or \"TAG_for_1.0\" or (subversion) 	\"1234\"\n  user \"deploy_ninja\"\n  enable_submodules true\n  migrate true\n  migration_command \"rake db:migrate\"\n  environment \"RAILS_ENV\" => \"production\", \"OTHER_ENV\" => \"foo\"\n  shallow_clone true\n  action :deploy # or :rollback\n  restart_command \"touch tmp/restart.txt\"\n  git_ssh_wrapper \"wrap-ssh4git.sh\"\n  scm_provider Chef::Provider::Git # is the default, for svn: Chefhef::Provider::Subversion\nend\n" "deploy" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/chef-mode/deploy" nil nil)
                       ("cronf" "cron \"${1:name}\" do\n  hour \"${2:*}\"\n  minute \"${3:*}\"\n  day \"${4:*}\"\n  weekday \"${6:*}\"\n  command \"${7:/bin/true}\"\n  user \"${8:root}\"\n  mailto \"${9:root@example.com}\"\n  path \"${10:/bin:/usr/bin}\"\n  home \"${11:/tmp}\"\n  shell \"${12:/bin/bash}\"\nend\n" "cronf" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/chef-mode/cronf" nil nil)
                       ("cron" "cron \"${1:name}\" do\n  hour \"${2:5}\"\n  minute \"${3:0}\"\n\n  command \"${4:/bin/true}\"\nend" "cron" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/chef-mode/cron" nil nil)
                       ("cookbook_file" "cookbook_file \"${1:/tmp/file}\" do\n  owner \"${2:root}\"\n  group \"${3:root}\"\n  mode \"${4:0644}\"\n  source \"${5:my-filename}\"\nend" "cookbook_file" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/chef-mode/cookbook_file" nil nil)
                       ("bash" "bash \"${1:install something}\" do\n  user \"${2:root}\"\n  cwd \"${3:/tmp}\"\n  creates \"${4:maybe}\"\n  code <<-EOH\n    STATUS=0\n    $0 || STATUS=1\n    exit $STATUS\n  EOH\nend" "bash" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/chef-mode/bash" nil nil)
                       ("action" "action: ${0:nothing}" "action" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/chef-mode/action" nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'snippets
                     '(("whenl" "(when-let [$1 $2]\n  $3)$>\n  $0$>" "whenl" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/clojure-mode/whenl" nil nil)
                       ("when" "(when $1\n      $2)$>\n$0$>\n" "when" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/clojure-mode/when" nil nil)
                       ("use" "(:use [$1 :refer [$2]])$>" "use" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/clojure-mode/use" nil nil)
                       ("try" "(try\n$1$>\n(catch ${2:Exception} e$>\n$3$>))$>" "try" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/clojure-mode/try" nil nil)
                       ("test" "(deftest $1\n  (is (= $2))$>\n  $0)$>\n" "test" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/clojure-mode/test" nil nil)
                       ("require" "(:require [$1 :as $2])$>" "require" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/clojure-mode/require" nil nil)
                       ("reduce" "(reduce ${1:(fn [p n] $0)} $2)\n" "reduce" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/clojure-mode/reduce" nil nil)
                       ("print" "(println $1)\n$0" "print" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/clojure-mode/print" nil nil)
                       ("pr" "(prn $1)\n$0" "pr" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/clojure-mode/pr" nil nil)
                       ("opts" "{:keys [$1]$>\n :or {$2}$>\n :as $3}$>" "opts" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/clojure-mode/opts" nil nil)
                       ("ns" "(ns `(flet ((try-src-prefix\n	  (path src-pfx)\n	  (let ((parts (split-string path src-pfx)))\n	    (if (= 2 (length parts))\n		(second parts)\n	      nil))))\n    (let* ((p (buffer-file-name))\n           (p2 (first\n		(remove-if-not '(lambda (x) x)\n			       (mapcar\n				'(lambda (pfx)\n				   (try-src-prefix p pfx))\n				'(\"/src/cljs/\" \"/src/clj/\" \"/src/\")))))\n	   (p3 (file-name-sans-extension p2))\n	   (p4 (mapconcat '(lambda (x) x)\n		 (split-string p3 \"/\")\n		 \".\")))\n      (replace-regexp-in-string \"_\" \"-\" p4)))`)" "ns" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/clojure-mode/ns" nil nil)
                       ("mdoc" "^{:doc \"$1\"}" "mdoc" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/clojure-mode/mdoc" nil nil)
                       ("map" "(map #($1) $2)$>" "map lambda" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/clojure-mode/map.lambda" nil nil)
                       ("map" "(map $1 $2)" "map" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/clojure-mode/map" nil nil)
                       ("let" "(let [$1 $2]$>\n  $3)$>\n$0\n" "let" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/clojure-mode/let" nil nil)
                       ("is" "(is (= $1 $2))\n" "is" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/clojure-mode/is" nil nil)
                       ("import" "(:import ($1))$>" "import" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/clojure-mode/import" nil nil)
                       ("ifl" "(if-let [$1 $2]\n  $3)$>\n$0" "ifl" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/clojure-mode/ifl" nil nil)
                       ("if" "(if $1\n  $2$>\n  $3)$>\n$0\n" "if" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/clojure-mode/if" nil nil)
                       ("for" "(for [$1 $2]\n  $3)$>\n" "for" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/clojure-mode/for" nil nil)
                       ("fn" "(fn [$1]\n  $0)$>\n" "fn" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/clojure-mode/fn" nil nil)
                       ("doseq" "(doseq [$1 $2]\n  $3)$>\n$0" "doseq" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/clojure-mode/doseq" nil nil)
                       ("deft" "(deftype\n  ^{\"$1\"}$>\n  $2$>\n  [$3]$>\n  $0)$>" "deftype" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/clojure-mode/deft" nil nil)
                       ("defr" "(defrecord\n  ^{\"$1\"}$>\n  $2$>\n  [$3]$>\n  $0)$>\n" "defrecord" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/clojure-mode/defr" nil nil)
                       ("defn" "(defn $1\n  \"$2\"$>\n  [$3]$>\n  $0)$>\n" "defn" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/clojure-mode/defn" nil nil)
                       ("defm" "(defmacro $1\n  \"$2\"$>\n  [$3]$>\n  $0)$>\n" "defmacro" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/clojure-mode/defm" nil nil)
                       ("def" "(def $0)\n" "def" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/clojure-mode/def" nil nil)
                       ("bp" "(swank.core/break)\n" "bp" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/clojure-mode/bp" nil nil)
                       ("bench" "(dotimes [_ 5 ]$>\n  (time (dotimes [i 1000000]$>\n  $0$>\n  )))$>" "bench" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/clojure-mode/bench" nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'snippets
                     '(("set" "set(${1:var} ${2:value})" "set" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/cmake-mode/set" nil nil)
                       ("proj" "project($0)" "project" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/cmake-mode/project" nil nil)
                       ("opt" "option(${1:OPT} \"${2:docstring}\" ${3:value})" "option" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/cmake-mode/option" nil nil)
                       ("msg" "message(${1:STATUS }\"$0\")" "message" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/cmake-mode/message" nil nil)
                       ("macro" "macro(${1:name}${2: args})\n        $2\nendmacro($1)$0" "macro" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/cmake-mode/macro" nil nil)
                       ("inc" "include($0)\n" "include" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/cmake-mode/include" nil nil)
                       ("if" "if(${1:cond})\n        $2\nelse(${3:cond})\n        $0\nendif($1)$0" "ifelse" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/cmake-mode/ifelse" nil nil)
                       ("if" "if(${1:cond})\n   $2\nendif($1)$0" "if" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/cmake-mode/if" nil nil)
                       ("fun" "function(${1:name})\n         $2\nendfunction($1)$0" "function" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/cmake-mode/function" nil nil)
                       ("for" "foreach(${1:var} \\${${2:array}})\n        $3\nendforeach($1)$0" "foreach" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/cmake-mode/foreach" nil nil)
                       ("min" "cmake_minimum_required(VERSION ${1:2.6})" "cmake_minimum_required" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/cmake-mode/cmake_minimum_required" nil nil)
                       ("lib" "add_library($1 ${2:class.cpp})\ntarget_link_libraries($1 $3)" "add_library" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/cmake-mode/add_library" nil nil)
                       ("exe" "add_executable($1 ${2:main.cpp})\ntarget_link_libraries($1 $3)" "add_executable" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/cmake-mode/add_executable" nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'snippets
                     '(("sec" "Section \"${1:Device}\"\n        $0\nEndSection" "section" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/conf-unix-mode/section" nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'snippets
                     '(("uni" "uniform(${1:0}, ${2:1})" "uniform" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/cpp-omnet-mode/uniform" nil nil)
                       ("sched" "scheduleAt(simTime()+${1:1.0}, ${2:event});" "scheduleAt" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/cpp-omnet-mode/scheduleAt" nil nil)
                       ("par" "${1:var} = par(\"${2:par}\");" "parameter_omnetpp" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/cpp-omnet-mode/parameter_omnetpp" nil nil)
                       ("omnet" "#include <omnetpp.h>" "omnet" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/cpp-omnet-mode/omnet" nil nil)
                       ("nan" "isnan(${1:x})" "nan" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/cpp-omnet-mode/nan" nil nil)
                       ("math" "#include <cmath>" "math" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/cpp-omnet-mode/math" nil nil)
                       ("intuni" "intuniform(${1:0}, ${2:1})" "intuniform" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/cpp-omnet-mode/intuniform" nil nil)
                       ("emit" "emit(${1:signal_id}, ${2:long});" "emit_signal" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/cpp-omnet-mode/emit_signal" nil nil)
                       ("ev" "EV << \"${1:string}\"$0;" "EV" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/cpp-omnet-mode/EV" nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'snippets
                     '(("using" "using System.$1;" "using System....;" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/csharp-mode/using.2" nil nil)
                       ("using" "using System;" "using System;" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/csharp-mode/using.1" nil nil)
                       ("using" "using $1;" "using ...;" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/csharp-mode/using" nil nil)
                       ("region" "#region $1\n$0\n#endregion" "#region ... #endregion" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/csharp-mode/region" nil nil)
                       ("prop" "/// <summary>\n/// $5\n/// </summary>\n/// <value>$6</value>\n$1 $2 $3\n{\n    get {\n        return this.$4;\n    }\n    set {\n        this.$4 = value;\n    }\n}" "property ... ... { ... }" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/csharp-mode/prop" nil nil)
                       ("namespace" "namespace $1\n{\n$0\n}" "namespace .. { ... }" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/csharp-mode/namespace" nil nil)
                       ("method" "/// <summary>\n/// ${5:Description}\n/// </summary>${2:$(if (string= (upcase yas-text) \"VOID\") \"\" (format \"%s%s%s\" \"\\n/// <returns><c>\" yas-text \"</c></returns>\"))}\n${1:public} ${2:void} ${3:MethodName}($4)\n{\n$0\n}" "public void Method { ... }" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/csharp-mode/method" nil nil)
                       ("fore" "foreach (${1:var} ${2:item} in ${3:list})\n{\n    $0\n}" "foreach { ... }" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/csharp-mode/fore" nil nil)
                       ("comment" "/// <exception cref=\"$1\">$2</exception>" "/// <exception cref=\"...\"> ... </exception>" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/csharp-mode/comment.3" nil nil)
                       ("comment" "/// <returns>$1</returns>" "/// <param name=\"...\"> ... </param>" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/csharp-mode/comment.2" nil nil)
                       ("comment" "/// <param name=\"$1\">$2</param>" "/// <param name=\"...\"> ... </param>" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/csharp-mode/comment.1" nil nil)
                       ("comment" "/// <summary>\n/// $1\n/// </summary>" "/// <summary> ... </summary>" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/csharp-mode/comment" nil nil)
                       ("class" "${5:public} class ${1:Name}\n{\n    #region Ctor & Destructor\n    /// <summary>\n    /// ${3:Standard Constructor}\n    /// </summary>\n    public $1($2)\n    {\n    }\n\n    /// <summary>\n    /// ${4:Default Destructor}\n    /// </summary>    \n    public ~$1()\n    {\n    }\n    #endregion\n}" "class ... { ... }" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/csharp-mode/class" nil nil)
                       ("attrib" "/// <summary>\n/// $3\n/// </summary>\nprivate $1 ${2:$(if (> (length yas-text) 0) (format \"_%s%s\" (downcase (substring yas-text 0 1)) (substring yas-text 1 (length yas-text))) \"\")};\n\n/// <summary>\n/// ${3:Description}\n/// </summary>\n/// <value><c>$1</c></value>\npublic ${1:Type} ${2:Name}\n{\n    get {\n        return this.${2:$(if (> (length yas-text) 0) (format \"_%s%s\" (downcase (substring yas-text 0 1)) (substring yas-text 1 (length yas-text))) \"\")};\n    }\n    set {\n        this.${2:$(if (> (length yas-text) 0) (format \"_%s%s\" (downcase (substring yas-text 0 1)) (substring yas-text 1 (length yas-text))) \"\")} = value;\n    }\n}" "private _attribute ....; public Property ... ... { ... }" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/csharp-mode/attrib.2" nil nil)
                       ("attrib" "/// <summary>\n/// $3\n/// </summary>\nprivate $1 $2;\n\n/// <summary>\n/// $4\n/// </summary>\n/// <value>$5</value>\npublic $1 $2\n{\n    get {\n        return this.$2;\n    }\n    set {\n        this.$2 = value;\n    }\n}" "private attribute ....; public property ... ... { ... }" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/csharp-mode/attrib.1" nil nil)
                       ("attrib" "/// <summary>\n/// $3\n/// </summary>\nprivate $1 $2;" "private attribute ....;" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/csharp-mode/attrib" nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'snippets
                     '(("-v" "$1: $2;\n-webkit-$1: $2;\n-moz-$1: $2;\n-ms-$1: $2;\n-o-$1: $2;" "-vendor-prefix" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/css-mode/v" nil nil)
                       ("pad.top" "padding-top: $1;\n" "padding-top: ..." nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/css-mode/pad.top" nil nil)
                       ("pad.right" "padding-right: $1;\n" "padding-right: ..." nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/css-mode/pad.right" nil nil)
                       ("pad.padding" "padding: ${top} ${right} ${bottom} ${left};\n" "padding: top right bottom left" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/css-mode/pad.padding" nil nil)
                       ("pad.pad" "padding: $1;\n" "padding: ..." nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/css-mode/pad.pad" nil nil)
                       ("pad.left" "padding-left: $1;\n" "padding-left: ..." nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/css-mode/pad.left" nil nil)
                       ("pad.bottom" "padding-bottom: $1;\n" "padding-bottom: ..." nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/css-mode/pad.bottom" nil nil)
                       ("mar.top" "margin-top: $1;\n" "margin-top: ..." nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/css-mode/mar.top" nil nil)
                       ("mar.right" "margin-right: $1;\n" "margin-right: ..." nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/css-mode/mar.right" nil nil)
                       ("mar.margin" "margin: ${top} ${right} ${bottom} ${left};\n" "margin top right bottom left" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/css-mode/mar.margin" nil nil)
                       ("mar.mar" "margin: $1;\n" "margin: ..." nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/css-mode/mar.mar" nil nil)
                       ("mar.left" "margin-left: $1;\n" "margin-left: ..." nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/css-mode/mar.left" nil nil)
                       ("mar.bottom" "margin-bottom: $1;\n" "margin-bottom: ..." nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/css-mode/mar.bottom" nil nil)
                       ("fs" "font-size: ${12px};\n" "font-size: ..." nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/css-mode/fs" nil nil)
                       ("ff" "font-family: $1;\n" "font-family: ..." nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/css-mode/ff" nil nil)
                       ("disp.none" "display: none;\n" "display: none" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/css-mode/disp.none" nil nil)
                       ("disp.inline" "display: inline;\n" "display: inline" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/css-mode/disp.inline" nil nil)
                       ("disp.block" "display: block;\n" "display: block" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/css-mode/disp.block" nil nil)
                       ("cl" "clear: $1;\n" "clear: ..." nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/css-mode/cl" nil nil)
                       ("bor" "border: ${1:1px} ${2:solid} #${3:999};" "border size style color" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/css-mode/bor" nil nil)
                       ("bg.1" "background-image: url($1);" "background-image: ..." nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/css-mode/bg.1" nil nil)
                       ("bg" "background-color: #${1:DDD};" "background-color: ..." nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/css-mode/bg" nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'snippets
                     '(("<s" "<section id=\"${1:main}\" type=\"${2:$$(yas-choose-value '(\"standard\" \"inconditional\" \"postblank\" \"preblank\"))}\">\n$0\n</section>\n" "<section> element"
                        (progn
                          (backward-char 2)
                          (and
                           (not
                            (dix-enclosing-is-mono-section))
                           (not
                            (member
                             (dix-enclosing-elt 'noerror)
                             '("l" "r" "i" "g" "sdefs")))))
                        nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/dix-mode/section" "direct-keybinding" nil)
                       ("<s" "<sdef n=\"$1\"  c=\"$2\"/>\n" "<sdef> element"
                        (progn
                          (backward-char 2)
                          (equal
                           (dix-enclosing-elt 'noerror)
                           "sdefs"))
                        nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/dix-mode/sdef" "direct-keybinding" nil)
                       ("<s" "<s n=\"$1\"/>$0" "<s> element"
                        (progn
                          (backward-char 2)
                          (member
                           (dix-enclosing-elt 'noerror)
                           '("l" "r" "i" "g")))
                        nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/dix-mode/s" "direct-keybinding" nil)
                       ("<p" "<pardef n=\"${1:corp/us__n}\">\n  <e>       <p><l>${1:$(dix-yas-pdname-to-suffix yas-text)}</l>      <r>${1:$(dix-yas-pdname-to-suffix yas-text)}${1:$(dix-yas-pdname-to-pos yas-text)}$2</r></p></e>\n  <e>       <p><l>${1:$(dix-yas-pdname-to-suffix yas-text)}$0</l>      <r>${1:$(dix-yas-pdname-to-suffix yas-text)}${1:$(dix-yas-pdname-to-pos yas-text)}$2</r></p></e>\n  <e>       <p><l>${1:$(dix-yas-pdname-to-suffix yas-text)}</l>      <r>${1:$(dix-yas-pdname-to-suffix yas-text)}${1:$(dix-yas-pdname-to-pos yas-text)}$2</r></p></e>\n  <e>       <p><l>${1:$(dix-yas-pdname-to-suffix yas-text)}</l>      <r>${1:$(dix-yas-pdname-to-suffix yas-text)}${1:$(dix-yas-pdname-to-pos yas-text)}$2</r></p></e>\n</pardef>" "<pardef> element"
                        (progn
                          (backward-char 2)
                          (not
                           (equal
                            (dix-enclosing-elt 'noerror)
                            "e")))
                        nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/dix-mode/pardef" "direct-keybinding" nil)
                       ("<p" "<par n=\"${1::$$(dix-yas-message-pardef (yas-choose-value (dix-pardef-suggest-for (dix-lemma-at-point))))`}\"/>$0" "<par> element"
                        (progn
                          (backward-char 2)
                          (equal
                           (dix-enclosing-elt 'noerror)
                           "e"))
                        nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/dix-mode/par" "direct-keybinding" nil)
                       ("<p" "<p><l>$1</l> <r>$1$0</r></p>" "<p> element"
                        (progn
                          (backward-char 2)
                          (equal
                           (dix-enclosing-elt 'noerror)
                           "e"))
                        nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/dix-mode/p" "direct-keybinding" nil)
                       ("<e" "<e> <p><l>$1</l>  <r>$1$0</r></p> </e>\n" "<e> in pardefs"
                        (not
                         (dix-enclosing-is-mono-section))
                        nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/dix-mode/e-in-pardef" "direct-keybinding" nil)
                       ("<e" "<e lm=\"${1:`(dix-yas-prev-lemma)`}\"> <i>${1:$(dix-yas-lm-to-i)}</i> <par n=\"${3:$$(dix-yas-choose-pdname)}\"/></e>\n$0" "<e> in monodix section"
                        (dix-enclosing-is-mono-section)
                        nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/dix-mode/e-in-mono-section" "direct-keybinding" nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'snippets
                     '(("pry" "require IEx; IEx.pry\n" "pry" nil
                        ("debug")
                        nil "/Users/ok/Dropbox/spacemacs.d/snippets/elixir-mode/pry" nil nil)
                       ("mdoc" "@moduledoc \"\"\"\n$0\n\"\"\"\n" "moduledoc" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/elixir-mode/mdoc" nil nil)
                       ("iop" "IO.puts(\"$1 #{inspect $1}\")$0\n" "iop" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/elixir-mode/iop" nil nil)
                       ("io" "IO.puts(\"$1\")$0\n" "io" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/elixir-mode/io" nil nil)
                       ("hinfo" "def handle_info($1, state) do\n  $0\n  {:noreply, state}\nend\n" "hinfo" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/elixir-mode/hinfo" nil nil)
                       ("hcast" "def handle_cast($1, state) do\n  $0\n  {:noreply, state}\nend\n" "hcast" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/elixir-mode/hcast" nil nil)
                       ("hcall" "def handle_call($1, _from, state) do\n  reply = $0\n  {:reply, reply, state}\nend\n" "hcall" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/elixir-mode/hcall" nil nil)
                       ("doc" "@doc \"\"\"\n$0\n\"\"\"\n" "doc" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/elixir-mode/doc" nil nil)
                       ("do" "do\n  $0\nend\n" "do" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/elixir-mode/do" nil nil)
                       ("defp" "defp $1 do\n  $0\nend\n" "defp" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/elixir-mode/defp" nil nil)
                       ("defmodule" "defmodule $1 do\n  $0\nend\n" "defmodule" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/elixir-mode/defmodule" nil nil)
                       ("defmacrop" "defmacrop $1 do\n  $0\nend\n" "defmacrop" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/elixir-mode/defmacrop" nil nil)
                       ("defmacro" "defmacro $1 do\n  $0\nend\n" "defmacro" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/elixir-mode/defmacro" nil nil)
                       ("def" "def ${1:method}${2:(${3:args})} do\n  $0\nend\n" "def" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/elixir-mode/def" nil nil)
                       ("cond" "cond do\n  $0\nend\n" "cond" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/elixir-mode/cond" nil nil)
                       ("cast" "GenServer.cast(${1:__MODULE__}, $0)\n" "cast" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/elixir-mode/cast" nil nil)
                       ("case" "case $1 do\n  $0\nend\n" "case" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/elixir-mode/case" nil nil)
                       ("call" "GenServer.call(${1:__MODULE__}, $0)\n" "call" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/elixir-mode/call" nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'snippets
                     '(("yonp" "(yes-or-no-p \"${1:prompt} \")" "yes-or-no-p" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/emacs-lisp-mode/yes-or-no-p" nil nil)
                       ("x-word-or-region" ";; example of a command that works on current word or text selection\n(defun down-case-word-or-region ()\n  \"Lower case the current word or text selection.\"\n(interactive)\n(let (pos1 pos2 meat)\n  (if (and transient-mark-mode mark-active)\n      (setq pos1 (region-beginning)\n            pos2 (region-end))\n    (setq pos1 (car (bounds-of-thing-at-point 'symbol))\n          pos2 (cdr (bounds-of-thing-at-point 'symbol))))\n\n  ; now, pos1 and pos2 are the starting and ending positions\n  ; of the current word, or current text selection if exists\n\n  ;; put your code here.\n  $0\n  ;; Some example of things you might want to do\n  (downcase-region pos1 pos2) ; example of a func that takes region as args\n  (setq meat (buffer-substring-no-properties pos1 pos2)) ; grab the text.\n  (delete-region pos1 pos2) ; get rid of it\n  (insert \"newText\") ; insert your new text\n\n  )\n)" "Command that works on region or word" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/emacs-lisp-mode/x-word-or-region" nil nil)
                       ("x-traverse_dir" ";; apply a function to all files in a dir\n(require 'find-lisp)\n(mapc 'my-process-file (find-lisp-find-files \"~/myweb/\" \"\\\\.html$\"))" "traversing a directory" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/emacs-lisp-mode/x-traverse_dir" nil nil)
                       ("x-grabthing" "(setq $0 (thing-at-point 'symbol))" "grab word under cursor" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/emacs-lisp-mode/x-grabthing" nil nil)
                       ("x-grabstring" "(setq $0 (buffer-substring-no-properties myStartPos myEndPos))" "grab buffer substring" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/emacs-lisp-mode/x-grabstring" nil nil)
                       ("x-find-replace" "(defun replace-html-chars-region (start end)\n  \"Replace “<” to “&lt;” and other chars in HTML.\nThis works on the current region.\"\n  (interactive \"r\")\n  (save-restriction \n    (narrow-to-region start end)\n    (goto-char (point-min))\n    (while (search-forward \"&\" nil t) (replace-match \"&amp;\" nil t))\n    (goto-char (point-min))\n    (while (search-forward \"<\" nil t) (replace-match \"&lt;\" nil t))\n    (goto-char (point-min))\n    (while (search-forward \">\" nil t) (replace-match \"&gt;\" nil t))\n    )\n  )" "find and replace on region" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/emacs-lisp-mode/x-find-replace" nil nil)
                       ("x-file" "(defun read-lines (filePath)\n  \"Return a list of lines in FILEPATH.\"\n  (with-temp-buffer\n    (insert-file-contents filePath)\n    (split-string\n     (buffer-string) \"\\n\" t)))\n\n;; process all lines\n(mapc\n (lambda (aLine)\n   (message aLine) ; do your stuff here\n   )\n (read-lines \"inputFilePath\")\n)" "read lines of a file" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/emacs-lisp-mode/x-file.read-lines" nil nil)
                       ("x-file" "(defun doThisFile (fpath)\n  \"Process the file at path FPATH ...\"\n  (let ()\n    ;; create temp buffer without undo record or font lock. (more efficient)\n    ;; first space in temp buff name is necessary\n    (set-buffer (get-buffer-create \" myTemp\"))\n    (insert-file-contents fpath nil nil nil t)\n\n    ;; process it ...\n    ;; (goto-char 0) ; move to begining of file's content (in case it was open)\n    ;; ... do something here\n    ;; (write-file fpath) ;; write back to the file\n\n    (kill-buffer \" myTemp\")))" "a function that process a file" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/emacs-lisp-mode/x-file.process" nil nil)
                       ("x-dired" ";; idiom for processing a list of files in dired's marked files\n \n;; suppose myProcessFile is your function that takes a file path\n;; and do some processing on the file\n\n(defun dired-myProcessFile ()\n  \"apply myProcessFile function to marked files in dired.\"\n  (interactive)\n  (require 'dired)\n  (mapc 'myProcessFile (dired-get-marked-files))\n)\n\n;; to use it, type M-x dired-myProcessFile" "process marked files in dired" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/emacs-lisp-mode/x-dired.process_marked" nil nil)
                       ("<" "\"\\\\_<${1:word}\\\\_>\"" "word_regexp" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/emacs-lisp-mode/word_regexp" nil nil)
                       ("word-or-region" ";; example of a command that works on current word or text selection\n(defun down-case-word-or-region ()\n  \"Lower case the current word or text selection.\"\n(interactive)\n(let (pos1 pos2 meat)\n  (if (and transient-mark-mode mark-active)\n      (setq pos1 (region-beginning)\n            pos2 (region-end))\n    (setq pos1 (car (bounds-of-thing-at-point 'symbol))\n          pos2 (cdr (bounds-of-thing-at-point 'symbol))))\n\n  ; now, pos1 and pos2 are the starting and ending positions\n  ; of the current word, or current text selection if exists\n\n  ;; put your code here.\n  $0\n  ;; Some example of things you might want to do\n  (downcase-region pos1 pos2) ; example of a func that takes region as args\n  (setq meat (buffer-substring-no-properties pos1 pos2)) ; grab the text.\n  (delete-region pos1 pos2) ; get rid of it\n  (insert \"newText\") ; insert your new text\n\n  )\n)\n" "Command that works on region or word" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/emacs-lisp-mode/word-or-region" nil nil)
                       ("wcb" "(with-current-buffer $0)" "with-current-buffer" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/emacs-lisp-mode/with-current-buffer" nil nil)
                       ("wg" "(widget-get $0)" "widget-get" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/emacs-lisp-mode/widget-get" nil nil)
                       ("while" "(while $0)" "while" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/emacs-lisp-mode/while" nil nil)
                       ("w" "(when $0)" "when" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/emacs-lisp-mode/when" nil nil)
                       ("v" "(vector $0)" "vector" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/emacs-lisp-mode/vector" nil nil)
                       ("unless" "(unless $0)" "unless" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/emacs-lisp-mode/unless" nil nil)
                       ("traverse_dir" ";; apply a function to all files in a dir\n(require 'find-lisp)\n(mapc 'my-process-file (find-lisp-find-files \"~/myweb/\" \"\\\\.html$\"))\n" "traversing a directory" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/emacs-lisp-mode/traverse_dir" nil nil)
                       ("tap" "(thing-at-point ${1:thing}${2: no-properties})" "thing-at-point" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/emacs-lisp-mode/thing-at-point" nil nil)
                       ("substring" "(substring ${1:string} ${2:from}${3: to})" "substring" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/emacs-lisp-mode/substring" nil nil)
                       ("stringp" "(stringp $0)" "stringp" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/emacs-lisp-mode/stringp" nil nil)
                       ("string=" "(string= $0)" "string=" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/emacs-lisp-mode/string=" nil nil)
                       ("stn" "(string-to-number $0)" "string-to-number" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/emacs-lisp-mode/string-to-number" nil nil)
                       ("sm" "(string-match \"${1:regexp}\" \"${2:string}\"${3: start})" "string-match" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/emacs-lisp-mode/string-match" nil nil)
                       ("string" "(string $0)" "string" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/emacs-lisp-mode/string" nil nil)
                       ("ss" "(split-string ${1:string}${2: separators}${3: omit-nulls})" "split-string" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/emacs-lisp-mode/split-string" nil nil)
                       ("scf" "(skip-chars-forward \"${1:string}\"${2: lim})" "skip-chars-forward" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/emacs-lisp-mode/skip-chars-forward" nil nil)
                       ("scb" "(skip-chars-backward \"${1:string}\"${2: lim})" "skip-chars-backward" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/emacs-lisp-mode/skip-chars-backward" nil nil)
                       ("sh" "(should $0)" "should" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/emacs-lisp-mode/should" nil nil)
                       ("s" "(setq $0)" "setq" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/emacs-lisp-mode/setq" nil nil)
                       ("sm" "(set-mark $0)" "set-mark" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/emacs-lisp-mode/set-mark" nil nil)
                       ("sfm" "(set-file-modes ${1:filename} $0)" "set-file-modes" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/emacs-lisp-mode/set-file-modes" nil nil)
                       ("sb" "(set-buffer $0)" "set-buffer" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/emacs-lisp-mode/set-buffer" nil nil)
                       ("set" "(set $0)" "set" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/emacs-lisp-mode/set" nil nil)
                       ("sfr" "(search-forward-regexp \"$1\"${2: ${3:bound}${4: ${5:noerror}${6: count}}})$0\n" "search-forward-regexp" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/emacs-lisp-mode/search-forward-regexp" nil nil)
                       ("sf" "(search-forward \"$1\"${2: ${3:bound}${4: ${5:noerror}${6: count}}})$0\n" "search-forward" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/emacs-lisp-mode/search-forward" nil nil)
                       ("sbr" "(search-backward-regexp \"$1\"${2: ${3:bound}${4: ${5:noerror}${6: count}}})$0\n" "search-backward-regexp" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/emacs-lisp-mode/search-backward-regexp" nil nil)
                       ("sb" "(search-backward \"$1\"${2: ${3:bound}${4: ${5:noerror}${6: count}}})$0\n" "search-backward" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/emacs-lisp-mode/search-backward" nil nil)
                       ("se" "(save-excursion $0)" "save-excursion" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/emacs-lisp-mode/save-excursion" nil nil)
                       ("sb" "(save-buffer $0)" "save-buffer" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/emacs-lisp-mode/save-buffer" nil nil)
                       ("require" "(require $0)" "require" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/emacs-lisp-mode/require" nil nil)
                       ("rris" "(replace-regexp-in-string ${1:regexp} ${2:rep} ${3:string}${4: fixedcase}${5: literal}${6: subexp}${7: start})" "replace-regexp-in-string" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/emacs-lisp-mode/replace-regexp-in-string" nil nil)
                       ("rr" "(replace-regexp ${1:regexp}${2: delimited}${3: start}${4: end})\n" "replace-regexp" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/emacs-lisp-mode/replace-regexp" nil nil)
                       ("repeat" "(repeat $0)" "repeat" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/emacs-lisp-mode/repeat" nil nil)
                       ("rf" "(rename-file ${1:file} ${2:newname}${3: ok-if-already-exists})" "rename-file" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/emacs-lisp-mode/rename-file" nil nil)
                       ("re" "(region-end)" "region-end" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/emacs-lisp-mode/region-end" nil nil)
                       ("rb" "(region-beginning)" "region-beginning" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/emacs-lisp-mode/region-beginning" nil nil)
                       ("rap" "(region-active-p)" "region-active-p" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/emacs-lisp-mode/region-active-p" nil nil)
                       ("rsf" "(re-search-forward ${1:regexp}${2: bound}${3: noerror}${4: count})" "re-search-forward" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/emacs-lisp-mode/re-search-forward" nil nil)
                       ("rsb" "(re-search-backward ${1:regexp}${2: bound}${3: noerror}${4: count})" "re-search-backward" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/emacs-lisp-mode/re-search-backward" nil nil)
                       ("put" "(put ${1:symbol} ${2:propname} ${3:value})" "put" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/emacs-lisp-mode/put" nil nil)
                       ("push" "(push $0)" "push" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/emacs-lisp-mode/push" nil nil)
                       ("progn" "(progn $0)" "progn" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/emacs-lisp-mode/progn" nil nil)
                       ("print" "(print $0)" "print" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/emacs-lisp-mode/print" nil nil)
                       ("princ" "(princ $0)" "princ" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/emacs-lisp-mode/princ" nil nil)
                       ("pm" "(point-min)" "point-min" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/emacs-lisp-mode/point-min" nil nil)
                       ("point-max" "(point-max)" "point-max" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/emacs-lisp-mode/point-max" nil nil)
                       ("p" "(point)" "point" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/emacs-lisp-mode/point" nil nil)
                       ("o" "(or $0)" "or" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/emacs-lisp-mode/or" nil nil)
                       ("nts" "(number-to-string $0)" "number-to-string" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/emacs-lisp-mode/number-to-string" nil nil)
                       ("null" "(null $0)" "null" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/emacs-lisp-mode/null" nil nil)
                       ("nth" "(nth ${1:index} ${2:list})" "nth" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/emacs-lisp-mode/nth" nil nil)
                       ("n" "(not $0)" "not" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/emacs-lisp-mode/not" nil nil)
                       ("minor" "(defvar ${1:mode}-modeline-indicator \" ${2:indicator}\"\n  \"call ($1-install-mode) again if this is changed\")\n\n(defvar $1-mode nil)\n(make-variable-buffer-local '$1-mode)\n(put '$1-mode 'permanent-local t)\n\n(defun $1-mode (&optional arg)\n  \"$0\"\n  (interactive \"P\")\n  (setq $1-mode\n        (if (null arg) (not $1-mode)\n          (> (prefix-numeric-value arg) 0)))\n  (force-mode-line-update))\n\n(provide '$1-mode)" "minor_mode" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/emacs-lisp-mode/minor_mode" nil nil)
                       ("m" "(message \"${1:message}\"${2: format-args})" "message" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/emacs-lisp-mode/message" nil nil)
                       ("memq" "(memq ${1:element} ${2:list})" "memq" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/emacs-lisp-mode/memq" nil nil)
                       ("ms" "(match-string $0)" "match-string" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/emacs-lisp-mode/match-string" nil nil)
                       ("me" "(match-end $0)" "match-end" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/emacs-lisp-mode/match-end" nil nil)
                       ("mb" "(match-beginning $0)" "match-beginning" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/emacs-lisp-mode/match-beginning" nil nil)
                       ("mapcar" "(mapcar $0)" "mapcar" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/emacs-lisp-mode/mapcar" nil nil)
                       ("mapc" "(mapc ${1:function} $0)" "mapc" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/emacs-lisp-mode/mapc" nil nil)
                       ("mlv" "(make-local-variable $0)" "make-local-variable" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/emacs-lisp-mode/make-local-variable" nil nil)
                       ("md" "(make-directory ${1:directory}${2: parents})" "make-directory" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/emacs-lisp-mode/make-directory" nil nil)
                       ("la" "(looking-at $0)" "looking-at" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/emacs-lisp-mode/looking-at" nil nil)
                       ("list" "(list $0)" "list" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/emacs-lisp-mode/list" nil nil)
                       ("lep" "(line-end-position)" "line-end-position" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/emacs-lisp-mode/line-end-position" nil nil)
                       ("lbp" "(line-beginning-position)" "line-beginning-position" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/emacs-lisp-mode/line-beginning-position" nil nil)
                       ("l" "(let${1:*} (${2:args})\n  $0)\n" "let" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/emacs-lisp-mode/let" nil nil)
                       ("length" "(length $0)" "length" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/emacs-lisp-mode/length" nil nil)
                       ("lam" "(lambda ($1) ${2:(interactive${3: \"$4\"}) }$0)\n" "lambda" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/emacs-lisp-mode/lambda" nil nil)
                       ("kb" "(kill-buffer $0)" "kill-buffer" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/emacs-lisp-mode/kill-buffer" nil nil)
                       ("kbd" "(kbd \"$0\")" "kbd" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/emacs-lisp-mode/kbd" nil nil)
                       ("interactive" "(interactive${1: \"${2:P}\"})" "interactive" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/emacs-lisp-mode/interactive" nil nil)
                       ("ifc" "(insert-file-contents ${1:filename}${2: visit}${3: beg}${4: end}${5: replace})" "insert-file-contents" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/emacs-lisp-mode/insert-file-contents" nil nil)
                       ("i" "(insert $0)" "insert" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/emacs-lisp-mode/insert" nil nil)
                       ("if" "(if $0)" "if" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/emacs-lisp-mode/if" nil nil)
                       ("hash" "(make-hash-table $0)" "hash" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/emacs-lisp-mode/hash" nil nil)
                       ("grabthing" "(setq $0 (thing-at-point 'symbol))\n" "grab word under cursor" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/emacs-lisp-mode/grabthing" nil nil)
                       ("grabstring" "(setq $0 (buffer-substring-no-properties myStartPos myEndPos))\n" "grab buffer substring" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/emacs-lisp-mode/grabstring" nil nil)
                       ("gc" "(goto-char $0)" "goto-char" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/emacs-lisp-mode/goto-char" nil nil)
                       ("gsk" "(global-set-key (kbd \"${1:key}\") $0)" "global-set-key" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/emacs-lisp-mode/global-set-key" nil nil)
                       ("get" "(get ${1:symbol} {2:propname})" "get" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/emacs-lisp-mode/get" nil nil)
                       ("function" "(function $0)" "function" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/emacs-lisp-mode/function" nil nil)
                       ("funcall" "(funcall $0)" "funcall" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/emacs-lisp-mode/funcall" nil nil)
                       ("fl" "(forward-line $0)" "forward-line" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/emacs-lisp-mode/forward-line" nil nil)
                       ("fc" "(forward-char $0)" "forward-char" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/emacs-lisp-mode/forward-char" nil nil)
                       ("f" "(format \"${1:message}\" ${2:format-args})" "format" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/emacs-lisp-mode/format" nil nil)
                       ("find-replace" "(defun replace-html-chars-region (start end)\n  \"Replace “<” to “&lt;” and other chars in HTML.\nThis works on the current region.\"\n  (interactive \"r\")\n  (save-restriction \n    (narrow-to-region start end)\n    (goto-char (point-min))\n    (while (search-forward \"&\" nil t) (replace-match \"&amp;\" nil t))\n    (goto-char (point-min))\n    (while (search-forward \"<\" nil t) (replace-match \"&lt;\" nil t))\n    (goto-char (point-min))\n    (while (search-forward \">\" nil t) (replace-match \"&gt;\" nil t))\n    )\n  )\n" "find and replace on region" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/emacs-lisp-mode/find-replace" nil nil)
                       ("ff" "(find-file $0)" "find-file" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/emacs-lisp-mode/find-file" nil nil)
                       ("file.read-lines" "(defun read-lines (filePath)\n  \"Return a list of lines in FILEPATH.\"\n  (with-temp-buffer\n    (insert-file-contents filePath)\n    (split-string\n     (buffer-string) \"\\n\" t)))\n\n;; process all lines\n(mapc\n (lambda (aLine)\n   (message aLine) ; do your stuff here\n   )\n (read-lines \"inputFilePath\")\n)" "read lines of a file" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/emacs-lisp-mode/file.read-lines" nil nil)
                       ("file.process" "(defun doThisFile (fpath)\n  \"Process the file at path FPATH ...\"\n  (let ()\n    ;; create temp buffer without undo record or font lock. (more efficient)\n    ;; first space in temp buff name is necessary\n    (set-buffer (get-buffer-create \" myTemp\"))\n    (insert-file-contents fpath nil nil nil t)\n\n    ;; process it ...\n    ;; (goto-char 0) ; move to begining of file's content (in case it was open)\n    ;; ... do something here\n    ;; (write-file fpath) ;; write back to the file\n\n    (kill-buffer \" myTemp\")))\n" "a function that process a file" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/emacs-lisp-mode/file.process" nil nil)
                       ("frn" "(file-relative-name $0)" "file-relative-name" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/emacs-lisp-mode/file-relative-name" nil nil)
                       ("fnse" "(file-name-sans-extension $0)" "file-name-sans-extension" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/emacs-lisp-mode/file-name-sans-extension" nil nil)
                       ("fnn" "(file-name-nondirectory $0)" "file-name-nondirectory" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/emacs-lisp-mode/file-name-nondirectory" nil nil)
                       ("fne" "(file-name-extension ${1:filename}${2: period})" "file-name-extension" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/emacs-lisp-mode/file-name-extension" nil nil)
                       ("fnd" "(file-name-directory $0)" "file-name-directory" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/emacs-lisp-mode/file-name-directory" nil nil)
                       ("fboundp" "(fboundp '$0)" "fboundp" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/emacs-lisp-mode/fboundp" nil nil)
                       ("efn" "(expand-file-name $0)" "expand-file-name" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/emacs-lisp-mode/expand-file-name" nil nil)
                       ("edt" "(ert-deftest ${1:test-name} ()\n  $0)\n" "ert-deftest" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/emacs-lisp-mode/ert-deftest" nil nil)
                       ("error" "(error \"${1:message}\"${2: format-args})" "error" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/emacs-lisp-mode/error" nil nil)
                       ("equal" "(equal $0)" "equal" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/emacs-lisp-mode/equal" nil nil)
                       ("eq" "(eq $0)" "eq" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/emacs-lisp-mode/eq" nil nil)
                       ("eol" "(end-of-line)" "end-of-line" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/emacs-lisp-mode/end-of-line" nil nil)
                       ("dolist" "(dolist $0)" "dolist" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/emacs-lisp-mode/dolist" nil nil)
                       ("dired.process_marked" ";; idiom for processing a list of files in dired's marked files\n \n;; suppose myProcessFile is your function that takes a file path\n;; and do some processing on the file\n\n(defun dired-myProcessFile ()\n  \"apply myProcessFile function to marked files in dired.\"\n  (interactive)\n  (require 'dired)\n  (mapc 'myProcessFile (dired-get-marked-files))\n)\n\n;; to use it, type M-x dired-myProcessFile\n" "process marked files in dired" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/emacs-lisp-mode/dired.process_marked" nil nil)
                       ("df" "(directory-files ${1:directory}${2: full}${3: match}${4: nosort})" "directory-files" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/emacs-lisp-mode/directory-files" nil nil)
                       ("dr" "(delete-region $0)" "delete-region" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/emacs-lisp-mode/delete-region" nil nil)
                       ("df" "(delete-file $0)" "delete-file" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/emacs-lisp-mode/delete-file" nil nil)
                       ("dd" "(delete-directory ${1:dicretory}${2: recursive})" "delete-directory" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/emacs-lisp-mode/delete-directory" nil nil)
                       ("dc" "(delete-char $0)" "delete-char" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/emacs-lisp-mode/delete-char" nil nil)
                       ("defvar" "(defvar ${1:symbol}${2: initvalue}${3: \"docstring\"})" "defvar" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/emacs-lisp-mode/defvar" nil nil)
                       ("def" "(defun ${1:fun} (${2:args})\n  \"${3:docstring}\"\n  ${4:(interactive${5: \"${6:P}\"})}\n  $0)" "defun" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/emacs-lisp-mode/defun" nil nil)
                       ("defsubst" "(defsubst $0)" "defsubst" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/emacs-lisp-mode/defsubst" nil nil)
                       ("dk" "(define-key ${1:mode}-map (kbd \"${2:key}\") $0)" "define-key" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/emacs-lisp-mode/define-key" nil nil)
                       ("defcustom" "(defcustom ${1:symbol} ${2:standard} \"${3:docstring}\"${4: args})" "defcustom" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/emacs-lisp-mode/defcustom" nil nil)
                       ("defalias" "(defalias '${1:symbol} '${2:alias}${3: \"docstring\"})" "defalias" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/emacs-lisp-mode/defalias" nil nil)
                       ("ca" "(custom-autoload ${1:symbol} ${2:load}${3: noset})" "custom-autoload" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/emacs-lisp-mode/custom-autoload" nil nil)
                       ("cb" "(current-buffer)" "current-buffer" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/emacs-lisp-mode/current-buffer" nil nil)
                       ("cf" "(copy-file ${1:filename} ${2:newname}${3: ok-if-already-exists}${4: keep-time}{5: preserve-uid-gid})" "copy-file" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/emacs-lisp-mode/copy-file" nil nil)
                       ("cd" "(copy-directory ${1:directory} {2:target}${3: keep-time}${4: parents})" "copy-directory" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/emacs-lisp-mode/copy-directory" nil nil)
                       ("const" "(defconst ${1:name} ${2:value}${3: \"${4:docstring}\"})$0" "defconst" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/emacs-lisp-mode/const" nil nil)
                       ("consp" "(consp $0)" "consp" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/emacs-lisp-mode/consp" nil nil)
                       ("cons" "(cons $0)" "cons" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/emacs-lisp-mode/cons" nil nil)
                       ("cc" "(condition-case $0)" "condition-case" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/emacs-lisp-mode/condition-case" nil nil)
                       ("cond" "(cond\n (${1:condition} ${2:body})$0)" "cond" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/emacs-lisp-mode/cond" nil nil)
                       ("concat" "(concat $0)" "concat" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/emacs-lisp-mode/concat" nil nil)
                       ("cdr" "(cdr $0)" "cdr" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/emacs-lisp-mode/cdr" nil nil)
                       ("car" "(car $0)" "car" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/emacs-lisp-mode/car" nil nil)
                       ("bsnp" "(buffer-substring-no-properties ${1:start} ${2:end})" "buffer-substring-no-properties" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/emacs-lisp-mode/buffer-substring-no-properties" nil nil)
                       ("bs" "(buffer-substring ${1:start} ${2:end})" "buffer-substring" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/emacs-lisp-mode/buffer-substring" nil nil)
                       ("bmp" "(buffer-modified-p $0)" "buffer-modified-p" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/emacs-lisp-mode/buffer-modified-p" nil nil)
                       ("bfn" "(buffer-file-name)" "buffer-file-name" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/emacs-lisp-mode/buffer-file-name" nil nil)
                       ("botap" "(bounds-of-thing-at-point $0)" "bounds-of-thing-at-point" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/emacs-lisp-mode/bounds-of-thing-at-point" nil nil)
                       ("bol" "(beginning-of-line)" "beginning-of-line" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/emacs-lisp-mode/beginning-of-line" nil nil)
                       ("bc" "(backward-char $0)" "backward-char" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/emacs-lisp-mode/backward-char" nil nil)
                       ("autoload" "(autoload ${1:function} \"${2:filename}\"${3: \"docstring\"}${4: interactive}${5: type})" "autoload" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/emacs-lisp-mode/autoload" nil nil)
                       ("assq" "(assq ${1:key} ${2:list})" "assq" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/emacs-lisp-mode/assq" nil nil)
                       ("aset" "(aset ${1:array} ${2:index} ${3:element})" "aset" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/emacs-lisp-mode/aset" nil nil)
                       ("aref" "(aref ${1:array} {2:index})" "aref" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/emacs-lisp-mode/aref" nil nil)
                       ("apply" "(apply $0)" "apply" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/emacs-lisp-mode/apply" nil nil)
                       ("append" "(append $0)" "append" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/emacs-lisp-mode/append" nil nil)
                       ("a" "(and $0)" "and" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/emacs-lisp-mode/and" nil nil)
                       ("ah" "(add-hook '${1:name}-hook ${2:'${3:function}})$0\n" "add-hook" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/emacs-lisp-mode/add-hook" nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'snippets
                     '(("h" "help $0" "help" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/erc-mode/help" nil nil)
                       ("b" "blist\n" "blist" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/erc-mode/blist" nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'snippets
                     '(("undef" "-undef($1).\n$0\n" "-undef(...)." nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/erlang-mode/undef" nil nil)
                       ("try" "try $1 of\n    $0\ncatch\nafter\nend\n" "try ... of ... catch after end" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/erlang-mode/try" nil nil)
                       ("rec" "-record($1,{$2}).\n$0\n" "-record(...,{...})." nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/erlang-mode/rec" nil nil)
                       ("rcv.after" "receive\nafter\n    $1 -> $0\nend\n" "receive after ... -> ... end" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/erlang-mode/rcv.after" nil nil)
                       ("rcv" "receive\n    $1 -> $0\nend\n" "receive ... -> ... end" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/erlang-mode/rcv" nil nil)
                       ("mod" "-module(${1:`(file-name-nondirectory\n              (file-name-sans-extension (or (buffer-file-name) (buffer-name))))`}).\n$0\n" "-module()." nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/erlang-mode/mod" nil nil)
                       ("loop" "${1:loop}($2) ->\n    receive\n	${3:_} ->\n	    $1($2)\n    end.\n$0\n" "loop(...) -> receive _ -> loop(...) end." nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/erlang-mode/loop" nil nil)
                       ("inc.lib" "-include_lib(\"$1\").\n$0\n" "-include_lib(\"...\")." nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/erlang-mode/inc.lib" nil nil)
                       ("inc" "-include(\"$1\").\n$0\n" "-include(\"...\")." nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/erlang-mode/inc" nil nil)
                       ("imp" "-import(${1:lists}, [${2:map/2, sum/1}]).\n$0\n" "-import([])." nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/erlang-mode/imp" nil nil)
                       ("ifndef" "-ifndef($1).\n$0\n-endif.\n" "-ifndef(...). ... -endif." nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/erlang-mode/ifndef" nil nil)
                       ("ifdef" "-ifdef($1).\n$0\n-endif.\n" "-ifdef(...). ... -endif." nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/erlang-mode/ifdef" nil nil)
                       ("if" "if\n    $1 -> $2;\n    true -> $0\nend\n" "if ... -> ... ; true -> ... end" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/erlang-mode/if" nil nil)
                       ("fun" "fun ($1) -> $0 end\n" "fun (...) -> ... end" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/erlang-mode/fun" nil nil)
                       ("exp" "-export([${1:start/0}]).\n$0\n" "-export([])." nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/erlang-mode/exp" nil nil)
                       ("def" "-define($1,$2).\n$0\n" "-define(...,...)." nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/erlang-mode/def" nil nil)
                       ("compile" "-compile([${1:export_all}]).\n$0\n" "-compile(...)." nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/erlang-mode/compile" nil nil)
                       ("case" "case $1 of\n    $0\nend\n" "case ... of ... end" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/erlang-mode/case" nil nil)
                       ("beh" "-behaviour(${1:gen_server}).\n$0\n" "-behaviour(...)." nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/erlang-mode/beh" nil nil)
                       ("begin" "begin\n    $0\nend\n" "begin ... end" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/erlang-mode/begin" nil nil)
                       ("after" "after\n    $1 -> $0\n" "after ... ->" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/erlang-mode/after" nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'snippets
                     '(("wr" "write (${1:*},${2:*}) $0\n" "write (*,*)" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/f90-mode/wr" nil nil)
                       ("while" "do while (${1:condition})\n  $0\nend do\n" "while ... end while ..." nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/f90-mode/while" nil nil)
                       ("where" "\nwhere (${1:condition})\n  $0\nend where\n" "where ... end where ..." nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/f90-mode/where" nil nil)
                       ("until" "do\n  $0\n  if (${1:condition}) exit\nend do\n" "until ... end until ..." nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/f90-mode/until" nil nil)
                       ("subroutine" "subroutine ${1:name} (${2:arg})\n  ${3:real, intent(in) :: $2}\n\n  $0\nend subroutine $1\n" "subroutine .. end subroutine" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/f90-mode/subroutine" nil nil)
                       ("re" "read (${1:*},${2:*}) $0\n" "read (*,*)" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/f90-mode/re" nil nil)
                       ("pure subroutine" "pure subroutine ${1:name} (${2:arg})\n  ${3:real, intent(in) :: $2}\n\n  $0\nend subroutine $1\n" "pure subroutine .. end subroutine" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/f90-mode/pures" nil nil)
                       ("pure func" "pure function ${1:name} (${2:arg})\n  ${3:real} :: $1\n  ${4:real, intent(in)} :: $2\n\n  $0\n\nend function $1\n" "pure function ... end function ..." nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/f90-mode/puref" nil nil)
                       ("program" "program ${1:name}\n  ${2:implicit none}\n\n  $0\n\nend program $1\n" "program .. end program" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/f90-mode/program" nil nil)
                       ("pa" "parameter $0\n" "parameter" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/f90-mode/pa" nil nil)
                       ("module" "module ${1:name}\n\ncontains\n\n  $0\n\nend module $1\n" "module ... end module ..." nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/f90-mode/module" nil nil)
                       ("l" "logical $0\n" "logical" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/f90-mode/l" nil nil)
                       ("intr" "intrinsic $0\n" "intrinsic" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/f90-mode/intr" nil nil)
                       ("inc" "include $0\n" "include" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/f90-mode/inc" nil nil)
                       ("in" "implicit none\n" "implicit none" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/f90-mode/in" nil nil)
                       ("if" "if ( ${1:condition} ) then\n   $0\nend if\n" "if then end if" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/f90-mode/if" nil nil)
                       ("function" "function ${1:name} (${2:arg})\n  ${3:real} :: $1\n  ${4:real, intent(in)} :: $2\n\n  $0\n\nend function $1\n" "function ... end function ..." nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/f90-mode/function" nil nil)
                       ("forall" "forall ($1)\n  $0\nend forall" "forall ... end forall ..." nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/f90-mode/forall" nil nil)
                       ("dp" "double precision $0\n" "double precision" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/f90-mode/dp" nil nil)
                       ("do" "do $1\n  $0\nend do\n" "do ... end do ..." nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/f90-mode/do" nil nil)
                       ("dc" "double complex $0\n" "double complex" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/f90-mode/dc" nil nil)
                       ("cx" "complex $0\n" "complex" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/f90-mode/cx" nil nil)
                       ("ch" "character $0\n" "character" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/f90-mode/ch" nil nil)
                       ("c" "continue $0\n" "continue" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/f90-mode/c" nil nil)
                       ("bd" "block data $0\n" "block data" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/f90-mode/bd" nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'snippets
                     '(("wi" "with {\n  ${1:expression}\n};\n$0" "with" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/faust-mode/with" nil nil)
                       ("vs" "vslider(\"${1:name}\", ${2:default}, ${3:min}, ${4:max}, ${5:step})$0" "vslider" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/faust-mode/vslider" nil nil)
                       ("vg" "vgroup(\"${1:name}\", ${2:expression})$0" "vgroup" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/faust-mode/vgroup" nil nil)
                       ("vb" "vbargraph(\"${1:name}\", ${2:min}, ${3:max})$0" "vbargraph" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/faust-mode/vbargraph" nil nil)
                       ("tg" "tgroup(\"${1:name}\", ${2:expression})$0" "tgroup" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/faust-mode/tgroup" nil nil)
                       ("su" "sum(${1:i}, ${2:Nr}, ${3:expression})$0" "sum" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/faust-mode/sum" nil nil)
                       ("se" "seq(${1:i}, ${2:Nr}, ${3:expression})$0" "seq" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/faust-mode/seq" nil nil)
                       ("ru" "  (${1:pattern}) => ${2:expression};\n$0" "rule" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/faust-mode/rule" nil nil)
                       ("mu" "prod(${1:i}, ${2:Nr}, ${3:expression})$0" "prod" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/faust-mode/prod" nil nil)
                       ("px" "process(${1:x}) = ${2:expression}($1);" "processx" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/faust-mode/processx" nil nil)
                       ("pr" "process = $1;\n$0" "process" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/faust-mode/process" nil nil)
                       ("pa" "par(${1:i}, ${2:Nr}, ${3:expression})$0" "par" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/faust-mode/par" nil nil)
                       ("ne" "nentry(\"${1:name}\", ${2:default}, ${3:min}, ${4:max}, ${5:step})$0" "nentry" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/faust-mode/nentry" nil nil)
                       ("im" "import(\"$1.lib\");$0" "import" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/faust-mode/import" nil nil)
                       ("hs" "hslider(\"${1:name}\", ${2:default}, ${3:min}, ${4:max}, ${5:step})$0" "hslider" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/faust-mode/hslider" nil nil)
                       ("hg" "hgroup(\"${1:name}\", ${2:expression})$0" "hgroup" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/faust-mode/hgroup" nil nil)
                       ("he" "declare name \"$1\";\ndeclare version \"${2:0.1}\";\ndeclare author \"$3\";\ndeclare license \"${4:$$\n  (yas-choose-value '(\n    \"AGPLv3\"\n    \"Apache\"\n    \"BSD 2-clause\"\n    \"BSD 3-clause\"\n    \"GPLv2\"\n    \"GPLv3\"\n    \"LGPLv3\"\n    \"MIT\"\n  ))}\";\n$0\n" "header" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/faust-mode/header" nil nil)
                       ("hb" "hbargraph(\"${1:name}\", ${2:min}, ${3:max})$0" "hbargraph" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/faust-mode/hbargraph" nil nil)
                       ("dv" "declare version \"${1:0.1}\";\n$0" "declare version" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/faust-mode/declareversion" nil nil)
                       ("dn" "declare name \"$1\";\n$0" "declare name" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/faust-mode/declarename" nil nil)
                       ("dl" "declare license \"${1:$$\n  (yas-choose-value '(\n    \"AGPLv3\"\n    \"Apache\"\n    \"BSD 2-clause\"\n    \"BSD 3-clause\"\n    \"GPLv2\"\n    \"GPLv3\"\n    \"LGPLv3\"\n    \"MIT\"\n  ))}\";\n$0" "declare license" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/faust-mode/declarelicense" nil nil)
                       ("da" "declare author \"$1\";\n$0" "declare author" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/faust-mode/declareauthor" nil nil)
                       ("de" "declare ${1:key} \"${2:value}\";\n$0" "declare" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/faust-mode/declare" nil nil)
                       ("co" "component(\"$1.dsp\")$0" "component" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/faust-mode/component" nil nil)
                       ("ch" "checkbox(\"$1\")$0" "checkbox" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/faust-mode/checkbox" nil nil)
                       ("ca" "case {\n  $1\n  };\n$0" "case" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/faust-mode/case" nil nil)
                       ("bu" "button(\"$1\")$0" "button" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/faust-mode/button" nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'snippets
                     '(("ref" "references #${1:100}" "references" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/git-commit-mode/references" nil nil)
                       ("fix" "fixes #${1:100}" "fixes" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/git-commit-mode/fixes" nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'snippets
                     '(("var" "var (\n  ${1:name} ${2:type}\n)" "var (...)" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/go-mode/var(" nil nil)
                       ("var" "var ${1:name} ${2:type}\n$0" "var" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/go-mode/var" nil nil)
                       ("type" "type $1 $2 {\n  $0\n}" "type" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/go-mode/type" nil nil)
                       ("testmain" "func TestMain(m *testing.M) {\n	setup()\n	ret := m.Run()\n	if ret == 0 {\n		teardown()\n	}\n	os.Exit(ret)\n}\n\nfunc setup() {\n	$1\n}\n\nfunc teardown() {\n	$2\n}" "testmain" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/go-mode/testmain" nil nil)
                       ("at" "func Test$1(t *testing.T) {\n	$0\n}\n" "test" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/go-mode/test" nil nil)
                       ("sw" "switch $1 {\ncase $2:\n  $0\n}" "switch" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/go-mode/switch" nil nil)
                       ("sel" "select {\ncase $1:\n  $0\n}" "select" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/go-mode/select" nil nil)
                       ("pr" "fmt.Printf(\"${1:%s}\\n\", ${2:args})\n$0" "fmt.Printf(...)" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/go-mode/printf" nil nil)
                       ("parbench" "func Benchmark$1(b *testing.B) {\n	b.RunParallel(func(pb *testing.PB) {\n		for pb.Next() {\n			$0\n		}\n	})\n}\n" "parallel_benchmark" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/go-mode/parallel_benchmark" nil nil)
                       ("map" "map[${1:type}]${2:type}\n" "map" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/go-mode/map" nil nil)
                       ("main" "func main() {\n  $0\n}" "func main()" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/go-mode/main" nil nil)
                       ("lambda" "func(${1:args}) $2 {\n  $0\n}()" "lambda func" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/go-mode/lambda" nil nil)
                       ("imp" "import (\n  \"$0\"\n)\n" "import (...)" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/go-mode/import(" nil nil)
                       ("imp" "import \"$1\"\n$0" "import" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/go-mode/import" nil nil)
                       ("iferr" "if err != $1 {\n  $0\n}\n" "if error" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/go-mode/iferr" nil nil)
                       ("if" "if $1 {\n  $0\n}" "if" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/go-mode/if" nil nil)
                       ("func" "// $1 ${4:...}\nfunc ${1:name}(${2:args}) $3 {\n  $0\n}" "func" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/go-mode/func" nil nil)
                       ("range" "for ${3:key}, ${2:value} := range ${1:target} {\n	$0\n}" "for range" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/go-mode/forrange" nil nil)
                       ("for" "for $1 {\n  $0\n}\n" "for" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/go-mode/for" nil nil)
                       ("example" "func Example$1() {\n	$0\n}\n" "example" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/go-mode/example" nil nil)
                       ("err" "if err != nil {\n	$0\n}" "error" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/go-mode/error" nil nil)
                       ("el" " else {\n  $0\n}" "else" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/go-mode/else" nil nil)
                       ("def" "default:\n$0" "default" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/go-mode/default" nil nil)
                       ("dd" "fmt.Printf(\"%+v\\n\", $1) // output for debug\n$0" "debug fmt.Printf" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/go-mode/dd" nil nil)
                       ("const" "const (\n  ${1:name type} = ${2:val}\n)" "const (...)" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/go-mode/const(" nil nil)
                       ("const" "const ${1:name type} = ${2:val}\n$0" "const" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/go-mode/const" nil nil)
                       ("bench" "func Benchmark$1(b *testing.B) {\n	for i := 0; i < b.N; i++ {\n		$0\n	}\n}\n" "benchmark" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/go-mode/benchmark" nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'snippets
                     '(("times" "${1:10}.times {\n              $0\n}                ." "times" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/groovy-mode/times" nil nil)
                       ("pr" "println ${1:\"string\"}\n$0" "println" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/groovy-mode/println" nil nil)
                       ("for" "for (${1:var} in ${2:iter}) {\n    $0\n}\n" "for" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/groovy-mode/for" nil nil)
                       ("dict" "${1:dict} = [${2:key} : ${3:value}$0]" "dict" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/groovy-mode/dict" nil nil)
                       ("def" "def ${1:method}(${2:args}) {\n    $0\n}" "def" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/groovy-mode/def" nil nil)
                       ("class" "class ${1:Class} {\n      $0\n}" "class" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/groovy-mode/class" nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'snippets
                     '(("pr" "print $0" "print" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/haskell-mode/print" nil nil)
                       ("prag" "{-# ${1:PRAGMA} #-}" "pragma" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/haskell-mode/pragma" nil nil)
                       ("class" "class ${1:Class Name} where\n      $0" "new class" nil nil
                        ((yas-indent-line 'fixed))
                        "/Users/ok/Dropbox/spacemacs.d/snippets/haskell-mode/new class" nil nil)
                       ("mod" "module ${1:Module} where\n$0" "module" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/haskell-mode/module" nil nil)
                       ("main" "main :: IO ()\nmain = do $0" "main function" nil nil
                        ((yas-indent-line 'fixed))
                        "/Users/ok/Dropbox/spacemacs.d/snippets/haskell-mode/main" nil nil)
                       ("ins" "instance ${1:${2:(Show a)} => }${3:Ord} ${4:DataType} where\n$0\n" "instance" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/haskell-mode/instance" nil nil)
                       ("import" "import${1: qualified} ${2:Module${3:(symbols)}}${4: as ${5:alias}}" "import" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/haskell-mode/import" nil nil)
                       ("fune" "${1:function-name} :: ${2:type}\n$1 = $0error \"Not implemented: $1\"" "fune" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/haskell-mode/functione" nil nil)
                       ("fun" "${1:function-name} :: ${2:type}\n$1 ${3:arguments} $0" "fun" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/haskell-mode/function" nil nil)
                       ("efix" "(error \"FIXME: $0\")" "fixme dummy" nil nil
                        ((yas-indent-line 'fixed))
                        "/Users/ok/Dropbox/spacemacs.d/snippets/haskell-mode/efix" nil nil)
                       ("d" "{-\n  $0\n-}" "doc" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/haskell-mode/doc" nil nil)
                       ("da" "data ${1:Type} = $2" "data" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/haskell-mode/data" nil nil)
                       ("case" "case ${1:var} of\n     ${2:cond} -> ${3:value}\n     $0\n     otherwise -> ${4:other}" "case" nil nil
                        ((yas-indent-line 'fixed))
                        "/Users/ok/Dropbox/spacemacs.d/snippets/haskell-mode/case" nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'snippets
                     '(("th" "<th$1>$2</th>" "<th>...</th>" nil
                        ("table")
                        nil "/Users/ok/Dropbox/spacemacs.d/snippets/html-mode/th" nil nil)
                       ("textarea" "<textarea name=\"$1\" id=\"$2\" rows=\"$3\" cols=\"$4\" tabindex=\"$5\"></textarea>" "<textarea ...></textarea>" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/html-mode/textarea" nil nil)
                       ("script.javascript-src" "<script type=\"text/javascript\" src=\"$1\"></script>" "<script type=\"text/javascript\" src=\"...\"></script>" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/html-mode/script.javascript-src" nil nil)
                       ("script.javascript" "<script type=\"text/javascript\">\n  $0\n</script>" "<script type=\"text/javascript\">...</script>" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/html-mode/script.javascript" nil nil)
                       ("meta.http-equiv" "<meta http-equiv=\"${1:Content-Type}\" content=\"${2:text/html; charset=UTF-8}\" />\n" "<meta http-equiv=\"...\" content=\"...\" />" nil
                        ("meta")
                        nil "/Users/ok/Dropbox/spacemacs.d/snippets/html-mode/meta.http-equiv" nil nil)
                       ("meta" "<meta name=\"${1:generator}\" content=\"${2:content}\" />" "<meta name=\"...\" content=\"...\" />" nil
                        ("meta")
                        nil "/Users/ok/Dropbox/spacemacs.d/snippets/html-mode/meta" nil nil)
                       ("mailto" "<a href=\"mailto:$1@$2\">$0</a>" "<a href=\"mailto:...@...\">...</a>" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/html-mode/mailto" nil nil)
                       ("link.stylesheet-ie" "<!--[if IE]>\n<link rel=\"${1:stylesheet}\" href=\"${2:url}\" type=\"${3:text/css}\" media=\"${4:screen}\" />\n<![endif]-->" "<!--[if IE]><link stylesheet=\"...\" /><![endif]-->" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/html-mode/link.stylesheet-ie" nil nil)
                       ("link.stylesheet" "<link rel=\"${1:stylesheet}\" href=\"${2:url}\" type=\"${3:text/css}\" media=\"${4:screen}\" />" "<link stylesheet=\"...\" />" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/html-mode/link.stylesheet" nil nil)
                       ("link.import" "<link rel=\"import\" href=\"${1:url}\" />\n" "<link rel=\"import\" />" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/html-mode/link.import" nil nil)
                       ("html.xmlns" "<html xmlns=\"http://www.w3.org/1999/xhtml\" xml:lang=\"${1:en}\" lang=\"${2:en}\">\n  $0\n</html>\n" "<html xmlns=\"...\">...</html>" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/html-mode/html.xmlns" nil nil)
                       ("html" "<html>\n  $0\n</html>\n" "<html>...</html>" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/html-mode/html" nil nil)
                       ("form" "<form method=\"$1\" id=\"$2\" action=\"$3\">\n  $0\n</form>" "<form method=\"...\" id=\"...\" action=\"...\"></form>" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/html-mode/form" nil nil)
                       ("dt" "<dt>$1</dt>" "<dt> ... </dt>" nil
                        ("list")
                        nil "/Users/ok/Dropbox/spacemacs.d/snippets/html-mode/dt" nil nil)
                       ("doctype.xhtml1_transitional" "<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">" "DocType XHTML 1.0 Transitional" nil
                        ("meta")
                        nil "/Users/ok/Dropbox/spacemacs.d/snippets/html-mode/doctype.xhtml1_transitional" nil nil)
                       ("doctype.xhtml1_strict" "<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Strict//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd\">" "DocType XHTML 1.0 Strict" nil
                        ("meta")
                        nil "/Users/ok/Dropbox/spacemacs.d/snippets/html-mode/doctype.xhtml1_strict" nil nil)
                       ("doctype.xhtml1_1" "<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.1//EN\" \"http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd\">" "DocType XHTML 1.1" nil
                        ("meta")
                        nil "/Users/ok/Dropbox/spacemacs.d/snippets/html-mode/doctype.xhtml1_1" nil nil)
                       ("doctype.xhtml1" "<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Frameset//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-frameset.dtd\">" "DocType XHTML 1.0 frameset" nil
                        ("meta")
                        nil "/Users/ok/Dropbox/spacemacs.d/snippets/html-mode/doctype.xhtml1" nil nil)
                       ("doctype.html5" "<!DOCTYPE html>\n" "Doctype HTML 5" nil
                        ("meta")
                        nil "/Users/ok/Dropbox/spacemacs.d/snippets/html-mode/doctype.html5" nil nil)
                       ("doctype" "<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01//EN\" \"http://www.w3.org/TR/html4/strict.dtd\">" "Doctype HTML 4.01 Strict" nil
                        ("meta")
                        nil "/Users/ok/Dropbox/spacemacs.d/snippets/html-mode/doctype" nil nil)
                       ("dl" "<dl>\n    $0\n</dl>\n" "<dl> ... </dl>" nil
                        ("list")
                        nil "/Users/ok/Dropbox/spacemacs.d/snippets/html-mode/dl" nil nil)
                       ("dd" "<dd>$1</dd>" "<dd> ... </dd>" nil
                        ("list")
                        nil "/Users/ok/Dropbox/spacemacs.d/snippets/html-mode/dd" nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'snippets
                     '(("val" "final ${1:int} ${2:n} = $0;" "value" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/java-mode/value" nil nil)
                       ("try" "try {\n    $0\n}\ncatch (${1:Throwable e}) {\n      ${2:System.out.println(\"Error \" + e.getMessage());\n      e.printStackTrace();}\n}\n" "try" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/java-mode/try" nil nil)
                       ("toStr" "public String toString() {\n       $0\n}" "toString" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/java-mode/toString" nil nil)
                       ("." "this.$1 = $1;\n$0" "this" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/java-mode/this" nil nil)
                       ("tc" "import junit.framework.*;\nimport junit.textui.*;\n\npublic class Test${1:Class} extends TestCase {\n       protected void setUp() {\n                 $0\n       }\n}" "testClass" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/java-mode/testClass" nil nil)
                       ("test" "@Test\npublic void test_${1:Case}() {\n       $0\n}" "test" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/java-mode/test" nil nil)
                       ("r" "return $0" "return" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/java-mode/return" nil nil)
                       ("pr" "System.out.println(\"${1:text}\");\n$0" "println" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/java-mode/println" nil nil)
                       ("printf" "System.out.printf(\"$0%n\");" "printf" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/java-mode/printf" nil nil)
                       ("param" "@param ${1:paramater} $0" "param" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/java-mode/param" nil nil)
                       ("o" "@Override\n$0" "override" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/java-mode/override" nil nil)
                       ("new" "${1:Type} ${2:obj} = new ${3:Constr}(${4:args});\n$0" "new" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/java-mode/new" nil nil)
                       ("m" "${1:public} ${2:void} ${3:name}(${4:args}) {\n            $0\n}" "method" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/java-mode/method" nil nil)
                       ("main_class" "class `(file-name-nondirectory (file-name-sans-extension (buffer-file-name)))`\n{\npublic static void main(String args[])\n{\n$0\n}\n}" "main_class" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/java-mode/main_class" nil nil)
                       ("main" "public static void main(String[] args) {\n       $0\n}" "main" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/java-mode/main" nil nil)
                       ("\\" "(${1:args}) -> ${2:expression};" "lambda" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/java-mode/lambda" nil nil)
                       ("doc" "/**\n * $0\n *\n */" "javadoc" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/java-mode/javadoc" nil nil)
                       ("iterator" "public Iterator<${1:type}> iterator() {\n       $0\n}\n" "iterator" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/java-mode/iterator" nil nil)
                       ("imp" "import ${1:System.};\n$0" "import" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/java-mode/import" nil nil)
                       ("ife" "if (${1:cond}) {\n    $2\n}\nelse {\n     $3\n}" "ife" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/java-mode/ife" nil nil)
                       ("if" "if (${1:condition}) {\n   $0\n}" "if" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/java-mode/if" nil nil)
                       ("g" "public ${1:int} get${2:Field}() {\n       return ${3:field};\n}" "getter" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/java-mode/getter" nil nil)
                       ("fori" "for (${1:Object el} : ${2:iterator}) {\n    $0\n}\n" "fori" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/java-mode/fori" nil nil)
                       ("for" "for (${1:int i = 0}; ${2:i < N}; ${3:i++}) {\n    $0\n}" "for" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/java-mode/for" nil nil)
                       ("file" "public class ${1:`(file-name-base\n                    (or (buffer-file-name)\n                        (buffer-name)))`} {\n  $0\n}\n" "file_class" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/java-mode/file_class" nil nil)
                       ("eq" "public boolean equals(${1:Class} other) {\n       $0\n}" "equals" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/java-mode/equals" nil nil)
                       ("/*" "/**\n * ${1:documentation}\n */" "doc" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/java-mode/doc" nil nil)
                       ("dt" "@Test\npublic void test${1:Name}() throws Exception {\n    $0\n}\n" "define test method" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/java-mode/define test method" nil nil)
                       ("c" "public ${1:Class} (${2:args}) {\n       $0\n}" "constructor" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/java-mode/constructor" nil nil)
                       ("cls" "class ${1:Class} {\n      $0\n}" "cls" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/java-mode/cls" nil nil)
                       ("ae" "Assert.assertEquals($1, $2);\n$0" "assertEquals" nil
                        ("test")
                        nil "/Users/ok/Dropbox/spacemacs.d/snippets/java-mode/assertEquals" nil nil)
                       ("as" "assert ${1:expression};" "assert" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/java-mode/assert" nil nil)
                       ("apr_assert" "if (Globals.useAssertions) {\n   ${1:assert ..};\n}\n" "apr_assert" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/java-mode/apr_assert" nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'snippets
                     '(("*ty" "* @type {${type}}" "type-inline-comment"
                        (=
                         (js2-node-type
                          (js2-node-at-point))
                         js2-COMMENT)
                        nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/js-mode/type-multiline-comment" nil nil)
                       ("@ty" "/** @type {${type}} */" "type-inline-comment"
                        (not
                         (=
                          (js2-node-type
                           (js2-node-at-point))
                          js2-COMMENT))
                        nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/js-mode/type-inline-comment" nil nil)
                       ("*@r" "* @return {${type}}" "return-comment"
                        (=
                         (js2-node-type
                          (js2-node-at-point))
                         js2-COMMENT)
                        nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/js-mode/return-comment" nil nil)
                       ("req.json" "new Request.JSON({\n  onSuccess: function(responseJSON, responseText) {\n    $0\n  }\n}).${1:send}(${2:url});" "json" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/js-mode/req.json" nil nil)
                       ("req.html" "new Request.HTML({\n  onSuccess: function(responseTree, responseElements, responseHTML, responseJavaScript) {\n    $0\n  }\n}).${1:get}(${2:url});" "html" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/js-mode/req.html" nil nil)
                       ("*@p" "* @param {${type}} ${comment}." "param-comment"
                        (=
                         (js2-node-type
                          (js2-node-at-point))
                         js2-COMMENT)
                        nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/js-mode/param-comment" nil nil)
                       ("/**" "/**\n * $0\n */" "multiline-comment" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/js-mode/multiline-comment" nil nil)
                       ("log" "console.log($0);" "console.log" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/js-mode/log" nil nil)
                       ("init" "initialize: function($1) {\n  $0\n}" "Constructor" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/js-mode/init" nil nil)
                       ("if" "if (${1:condition}) {\n  $0\n}" "if" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/js-mode/if" nil nil)
                       ("f" "function${1: ${2:name}}(${3:arg}) {\n         $0\n}" "function" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/js-mode/function" nil nil)
                       ("for" "for(var ${1:i} = ${2:0}; $1 < ${3:collection}.length; $1++) {\n  $0\n}" "for" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/js-mode/for" nil nil)
                       ("ev.fire" "fireEvent('$0')" "fireEvent" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/js-mode/ev.fire" nil nil)
                       ("ev.add" "addEvent('${1:event}', function($2) {\n  $0\n});" "addEvent" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/js-mode/ev.add" nil nil)
                       ("el" "else {\n  $0\n}" "else" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/js-mode/el" nil nil)
                       ("each" "${1:collection}.each(function($2) {\n  $0\n});" "each" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/js-mode/each" nil nil)
                       ("dbg" "debugger;" "debugger" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/js-mode/debugger" nil nil)
                       ("com" "/*\n * $0\n */" "comment (/* ... */)" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/js-mode/com" nil nil)
                       ("class" "var ${1:name} = new Class({\n  initialize: function($2) {\n    $0\n  }\n});" "Class" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/js-mode/class" nil nil)
                       ("al" "alert($0);" "alert" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/js-mode/al" nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'snippets
                     '(("pkg" "\\usepackage{$0}" "usepackage" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/latex-mode/usepackage" nil nil)
                       ("b" "\\textbf{$1}$0" "textbf" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/latex-mode/textbf" nil nil)
                       ("sub" "\\subsection{${1:name}}\n\\label{subsec:${2:label}}\n\n$0" "subsec" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/latex-mode/subsec" nil nil)
                       ("subfig" "\\begin{figure}[ht]\n  \\centering\n  \\subfigure[$1]\n  {\\label{fig:${2:label}} \n    \\includegraphics[width=.${3:5}\\textwidth]{${4:path}}}\n\n  \\caption{${5:caption}}\n\\label{fig:${6:label}}\n\\end{figure}\n" "subfigure" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/latex-mode/subfigure" nil nil)
                       ("sf" "\\subfigure[${1:caption}]{\n  \\label{fig:${2:label}} \n  \\includegraphics[width=.${3:3}\\textwidth]{${4:path}}}\n$0" "subf" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/latex-mode/subf" nil nil)
                       ("sec" "\\section{${1:name}}\n\\label{sec:${2:label}}\n\n$0" "section" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/latex-mode/section" nil nil)
                       ("q" "\\question{$0}" "question" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/latex-mode/question" nil nil)
                       ("py" "\\lstset{language=python}\n\\begin[language=python]{lstlisting}\n$0\n\\end{lstlisting}" "python" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/latex-mode/python" nil nil)
                       ("no" "\\note{$0}" "note" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/latex-mode/note" nil nil)
                       ("gl" "\\newglossaryentry{${1:AC}}{name=${2:Andrea Crotti}${3:, description=${4:description}}}" "newglossaryentry" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/latex-mode/newglossaryentry" nil nil)
                       ("cmd" "\\newcommand{\\\\${1:name}}${2:[${3:0}]}{$0}" "newcommand" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/latex-mode/newcommand" nil nil)
                       ("movie" "\\begin{center}\n\\includemovie[\n  label=test,\n  controls=false,\n  text={\\includegraphics[width=4in]{${1:image.pdf}}}\n]{4in}{4in}{${2:video file}}\n\n\\movieref[rate=3]{test}{Play Fast}\n\\movieref[rate=1]{test}{Play Normal Speed} \n\\movieref[rate=0.2]{test}{Play Slow}\n\\movieref[resume]{test}{Pause/Resume}\n" "movie" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/latex-mode/movie" nil nil)
                       ("cvitem" "\\cvlistitem{${1:item}}\n$0\n" "moderncv-cvlistitem" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/latex-mode/moderncv-cvlistitem" nil nil)
                       ("cvditem" "\\cvlistdoubleitem{${1:item}}{${2:item}}\n$0\n" "moderncv-cvlistdoubleitem" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/latex-mode/moderncv-cvlistdoubleitem" nil nil)
                       ("cvline" "\\cvline{${1:hobby}}{${2:Description}}\n$0\n" "moderncv-cvline" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/latex-mode/moderncv-cvline" nil nil)
                       ("cvlang" "\\cvlanguage{${1:language}}{${2:skill-level}}{${3:comment}}\n$0\n" "moderncv-cvlanguage" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/latex-mode/moderncv-cvlanguage" nil nil)
                       ("cventry" "\\cventry{${1:year}}{${2:job}}{${3:employer}}{${4:city}}{${5:description}}\n$0\n" "moderncv-cventry" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/latex-mode/moderncv-cventry" nil nil)
                       ("cvcomp" "\\cvcomputer{${1:category}}{${2:programs}}{${3:category}}{${3:programs}}\n$0\n" "moderncv-cvcomputer" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/latex-mode/moderncv-cvcomputer" nil nil)
                       ("moderncv" "\\documentclass[${1:options}]{moderncv}\n\n\\firstname{$3}\n\\familyname{$4}\n\n\\moderncvstyle{${5:casual}}\n\\moderncvcolor{${6:blue}}\n\n\\begin{document}\n$0\n\\end{document}\n" "full template of moderncv class" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/latex-mode/moderncv" nil nil)
                       ("lst" "\\begin{lstlisting}[float,label=lst:${1:label},caption=nextHopInfo: ${2:caption}]\n$0\n\\end{lstlisting}" "listing" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/latex-mode/listing" nil nil)
                       ("lab" "\\label{$0}" "label" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/latex-mode/label" nil nil)
                       ("it" "\\begin{itemize}\n\\item $0\n\\end{itemize}" "itemize" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/latex-mode/itemize" nil nil)
                       ("-" "\\item $0" "item" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/latex-mode/item" nil nil)
                       ("ig" "\\includegraphics${1:[$2]}{$0}" "includegraphics" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/latex-mode/includegraphics" nil nil)
                       ("if" "\\IF {$${1:cond}$}\n    $0\n\\ELSE\n\\ENDIF \n" "if" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/latex-mode/if" nil nil)
                       ("gp" "\\glspl{${1:label}}" "glspl" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/latex-mode/glspl" nil nil)
                       ("g" "\\gls{${1:label}}" "gls" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/latex-mode/gls" nil nil)
                       ("fr" "\\begin{frame}${1:[$2]}\n        ${3:\\frametitle{$4}}\n        $0\n\\end{frame}" "frame" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/latex-mode/frame" nil nil)
                       ("frac" "\\frac{${1:numerator}}{${2:denominator}}$0" "frac" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/latex-mode/frac" nil nil)
                       ("fig" "\\begin{figure}[ht]\n  \\centering\n  \\includegraphics[${1:options}]{figures/${2:path.pdf}}\n  \\caption{\\label{fig:${3:label}} $0}\n\\end{figure}\n" "figure" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/latex-mode/figure" nil nil)
                       ("enum" "\\begin{enumerate}\n\\item $0\n\\end{enumerate}" "enumerate" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/latex-mode/enumerate" nil nil)
                       ("e" "\\emph{$1}$0" "emph" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/latex-mode/emph" nil nil)
                       ("doc" "\\documentclass[${1:options}]{$2}\n$0\n" "documentclass" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/latex-mode/documentclass" nil nil)
                       ("cols" "\\begin{columns}\n  \\begin{column}{.${1:5}\\textwidth}\n  $0\n  \\end{column}\n\n  \\begin{column}{.${2:5}\\textwidth}\n\n  \\end{column}\n\\end{columns}" "columns" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/latex-mode/columns" nil nil)
                       ("code" "\\begin{lstlisting}\n$0\n\\end{lstlisting}" "code" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/latex-mode/code" nil nil)
                       ("c" "\\cite{$1} $0" "cite" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/latex-mode/cite" nil nil)
                       ("ca" "\\caption{$0}" "caption" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/latex-mode/caption" nil nil)
                       ("G" "\\Gls{${1:label}}" "Gls" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/latex-mode/capgls" nil nil)
                       ("bl" "\\begin{block}{$1}\n        $0\n\\end{block}" "block" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/latex-mode/block" nil nil)
                       ("begin" "\\begin{${1:environment}}\n$0\n\\end{$1}" "begin" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/latex-mode/begin" nil nil)
                       ("article" "\\documentclass[${1:options}]{article}\n\n\\author{$3}\n\n\\begin{document}\n$0\n\\end{document}\n" "full template of article class" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/latex-mode/article" nil nil)
                       ("alg" "\\begin{algorithmic}\n$0\n\\end{algorithmic}\n" "alg" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/latex-mode/alg" nil nil)
                       ("al" "\\begin{alertblock}{$2}\n        $0\n\\end{alertblock}" "alertblock" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/latex-mode/alertblock" nil nil)
                       ("ac" "\\newacronym{${1:label}}{${1:$(upcase yas-text)}}{${2:Name}}" "acronym" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/latex-mode/acronym" nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'snippets
                     '(("defun" "(defun ${1:fun} (${2:args})\n       $0\n)" "defun" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/lisp-interaction-mode/defun" nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'snippets
                     '(("typecast" "(coerce ${1:object} ${2:type})\n$0\n" "cast" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/lisp-mode/typecast" nil nil)
                       ("switch" "\n(cond (${1:case1} (${2:do-this}))\n      (${3:case2} (${4:do-this}))     \n      (t ${5:default}))\n$0\n" "switch" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/lisp-mode/switch" nil nil)
                       ("slot" "(${1:name} :initarg :${1:$(yas/substr yas-text \"[^: ]*\")}\n           :initform (error \":${1:$(yas/substr yas-text \"[^: ]*\")} must be specified\")\n           ;; :accessor ${1:$(yas/substr yas-text \"[^: ]*\")}\n           :reader ${1:$(yas/substr yas-text \"[^: ]*\")}-changed\n           :writer set-${1:$(yas/substr yas-text \"[^: ]*\")}\n           :type\n           :allocation ${3::class :instance}\n           :documentation \"${2:about-slot}\")\n$0\n" "slot" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/lisp-mode/slot" nil nil)
                       ("ifnot" "\n(unless (${1:condition})\n        (${2:then-do-this}))\n$0\n" "ifnot (...) (...)  ..." nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/lisp-mode/ifnot" nil nil)
                       ("ifelse" "\n(if (${1:condition})\n    (${2:then})\n    (${3:else}))\n$0\n" "ifelse (...) (...) (...) ..." nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/lisp-mode/ifelse" nil nil)
                       ("if" "(when (${1:condition})\n      (${2:then-do-this}))\n$0\n" "if" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/lisp-mode/if" nil nil)
                       ("print" "(format t \"~& $0 ~%\")\n" "format" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/lisp-mode/format" nil nil)
                       ("foreach" "(dolist (${1:var} ${2:list-form})\n        ${3:body})\n$0\n" "do" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/lisp-mode/foreach" nil nil)
                       ("for" "(dotimes (${1:var} ${2:count-form})\n         ${3:body})\n$0\n" "do" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/lisp-mode/for" nil nil)
                       ("do" "(do ((${1:var1} ${2:init-form} ${3:step-form})\n     (${4:var2} ${5:init-form} ${6:step-form}))  \n    (${7:condition} ${8:return-value})\n    (${9:body}))\n$0\n" "do" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/lisp-mode/do" nil nil)
                       ("defp" "(defpackage #:${1:name}\n   (:nicknames #:${2:nick})\n   (:use #:cl #:closer-mop #:${3:package})\n   (:shadow :${4.symbol})\n   (:shadowing-import-from #:${5:package} #:${6:symbol})\n   (:export :$0))\n" "defpackage" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/lisp-mode/defpackage" nil nil)
                       ("/*" "#|${1:type the comment here}|#\n$0\n" "comment" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/lisp-mode/comment" nil nil)
                       ("cls" "(defclass ${1:name} (${2:inherits})\n   (${4:slot})\n   (:documentation \"${3:doc}\"))\n$0\n" "class" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/lisp-mode/class" nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'snippets
                     '(("fun" "function ()\n         ${1:return something}\nend" "fun" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/lua-mode/fun" nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'snippets
                     '(("def" "define(\\`${1:macro}',\\`${2:subst}').\n$0" "def" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/m4-mode/def" nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'snippets
                     '(("noinst" "noinst_HEADERS = $0" "noinst_HEADERS" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/makefile-automake-mode/noinst_HEADERS" nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'snippets
                     '(("$" "$(${1:VAR})$0" "var" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/makefile-bsdmake-mode/var" nil nil)
                       ("if" "@if [ ${1:cond} ]\n    then $0\nfi\n" "if" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/makefile-bsdmake-mode/if" nil nil)
                       ("gen" "all: ${1:targets}\n\n$0\n\nclean:\n        ${2:clean actions}\n" "gen" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/makefile-bsdmake-mode/gen" nil nil)
                       ("echo" "@echo ${1:\"message to output\"}\n" "echo" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/makefile-bsdmake-mode/echo" nil nil)
                       ("phony" ".PHONY: $0" "PHONY" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/makefile-bsdmake-mode/PHONY" nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'snippets
                     '(("wl" "$(wildcard $0)" "wildcard" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/makefile-gmake-mode/wildcard" nil nil)
                       (nil "define ${1:PROGRAM$(upcase yas-text)}_template\n$0\nendef\n\n\\$(foreach ${2:${1:$(downcase yas-text)}},\\$(${3:$1S}),\\$(eval \\$(call $1_template,\\$($2))))" "template" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/makefile-gmake-mode/template" "C-c C-t" nil)
                       ("." ".${1:PHONY$(upcase yas-text)}: $0" "special targets" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/makefile-gmake-mode/special" nil nil)
                       ("sh" "\\$(shell ${1:command})$0" "shell" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/makefile-gmake-mode/shell" nil nil)
                       ("ph" ".PHONY = $0" "phony" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/makefile-gmake-mode/phony" nil nil)
                       ("ps" "$(patsubst ${1:from},${2:to},${3:src})" "patsubst" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/makefile-gmake-mode/patsubst" nil nil)
                       ("nd" "\\$(notdir ${1:\\$(${2:paths})})$0" "notdir" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/makefile-gmake-mode/notdir" nil nil)
                       ("make" "\\$(MAKE) --directory=${1:\\$@}\n$0" "make" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/makefile-gmake-mode/make" nil nil)
                       ("d" "\\$(dir ${1:\\$(${2:paths})})$0" "dir" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/makefile-gmake-mode/dir" nil nil)
                       ("as" "\\$(addsuffix ${1:.suffix},${2:\\$(${3:items})})$0" "addsuffix" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/makefile-gmake-mode/addsuffix" nil nil)
                       ("ap" "\\$(addprefix ${1:\\$(${2:dir})/},${3:\\$(${4:items})})$0" "addprefix" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/makefile-gmake-mode/addprefix" nil nil)
                       ("abs" "\\$(abspath ${1:\\$(${2:paths})})$0" "abspath" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/makefile-gmake-mode/abspath" nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'snippets
                     '(("cl" "clean:\n	${1:rm -r ${2:\\$(${3:OUTDIR})}}\n$0\n" "clean" nil nil
                        ((yas-indent-line 'fixed))
                        "/Users/ok/Dropbox/spacemacs.d/snippets/makefile-mode/clean" nil nil)
                       ("all" "all:\n        $0" "all" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/makefile-mode/all" nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'snippets
                     '(("var" "${1:int} ${2:n} = $0;" "variable" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/malabar-mode/variable" nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'snippets
                     '(("utf8" "# -*- mode: snippet -*-\n# name: utf-8 encoding\n# key: utf8\n<meta http-equiv='Content-Type' content='text/html; charset=utf-8' />\n$0\n" "utf8" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/markdown-mode/utf8" nil nil)
                       ("rlink" "# -*- mode: snippet -*-\n# name: Reference Link\n# key:rlink\n[${1:Link Text}][$2] $0\n" "rlink" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/markdown-mode/rlink" nil nil)
                       ("rlb" "# -*- mode: snippet -*-\n# name: Reference Label\n# key:R-label\n[${1:Reference}]: ${2:URL} $3\n$0\n" "rlb" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/markdown-mode/rlb" nil nil)
                       ("rimg" "# -*- mode: snippet -*-\n# name: Referenced Image\n# key:rimg\n![${1:Alt Text}][$2] $0\n" "rimg" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/markdown-mode/rimg" nil nil)
                       ("ol" "# -*- mode: snippet -*-\n# name: Ordered List\n# key:Ordered\n${1:1}. ${2:Text}\n${1:$(number-to-string (1+ (string-to-number yas-text)))}. $0\n" "ol" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/markdown-mode/ol" nil nil)
                       ("link" "# -*- mode: snippet -*-\n# name: Link\n# key:Link\n[${1:Link Text}](${2:URL} $3) $0\n" "link" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/markdown-mode/link" nil nil)
                       ("img" "# -*- mode: snippet -*-\n# name: Image\n# key:Image\n![${1:Alt Text}](${2:URL} $3) $0\n" "img" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/markdown-mode/img" nil nil)
                       ("hr.2" "# -*- mode: snippet -*-\n# name: Horizontal Rule (*)\n# key:Horizontal*\n\n*******\n\n$0\n" "hr.2" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/markdown-mode/hr.2" nil nil)
                       ("hr.1" "# -*- mode: snippet -*-\n# name: Horizontal Rule (-)\n# key:Horizontal-\n\n----------\n\n$0\n" "hr.1" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/markdown-mode/hr.1" nil nil)
                       ("highlight" "# -*- mode: snippet -*-\n# name: Highlight\n# key:Highlight\n{% highlight ${1:language} %}\n${0:content}\n{% endhighlight %}" "highlight" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/markdown-mode/highlight" nil nil)
                       ("h6" "# -*- mode: snippet -*-\n# name: Header 6\n# key:Header6\n###### ${1:Header 6} ######\n\n$0\n" "h6" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/markdown-mode/h6" nil nil)
                       ("h5" "# -*- mode: snippet -*-\n# name: Header 5\n# key:Header5\n##### ${1:Header 5} #####\n\n$0\n" "h5" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/markdown-mode/h5" nil nil)
                       ("h4" "# -*- mode: snippet -*-\n# name: Header 4\n# key:Header4\n#### ${1:Header 4} ####\n\n$0\n" "h4" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/markdown-mode/h4" nil nil)
                       ("h3" "# -*- mode: snippet -*-\n# name: Header 3\n# key:Header3\n### ${1:Header 3} ###\n\n$0\n" "h3" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/markdown-mode/h3" nil nil)
                       ("h2.2" "# -*- mode: snippet -*-\n# name: Header 2 (-)\n# key:Header2-2\n${1:Header 2}\n${1:$(make-string (string-width yas-text) ?\\-)}\n\n$0\n" "h2.2" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/markdown-mode/h2.2" nil nil)
                       ("h2.1" "# -*- mode: snippet -*-\n# name: Header 2 (##)\n# key:Header2\n## ${1:Header 1} ##\n\n$0\n" "h2.1" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/markdown-mode/h2.1" nil nil)
                       ("h1.2" "# -*- mode: snippet -*-\n# name: Header 1 (=)\n# key:Header1-2\n${1:Header 1}\n${1:$(make-string (string-width yas-text) ?\\=)}\n\n$0\n" "h1.2" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/markdown-mode/h1.2" nil nil)
                       ("h1.1" "# -*- mode: snippet -*-\n# name: Header 1 (#)\n# key:Header1\n# ${1:Header 1} #\n\n$0\n" "h1.1" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/markdown-mode/h1.1" nil nil)
                       ("__" "# -*- mode: snippet -*-\n# name: Strong\n# key:Strong\n**${1:Text}** $0\n" "__" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/markdown-mode/__" nil nil)
                       ("_" "# -*- mode: snippet -*-\n\n# name: Emphasis\n# key:Emphasis\n_${1:Text}_ $0\n" "_" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/markdown-mode/_" nil nil)
                       ("-" "\n# -*- mode: snippet -*-\n# name: Unordered List\n# key: Unordered List\n- ${1:Text}\n-$0\n" "-" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/markdown-mode/-" nil nil)
                       ("+" "# -*- mode: snippet -*-\n\n# name: Unordered List\n# key: unordered\n+ ${1:Text}\n+$0\n" "+" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/markdown-mode/+" nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'snippets
                     '(("sub" "submodules:\n   $0" "submodules" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/ned-mode/submodules" nil nil)
                       ("simple" "simple ${1:Component}${2: extends ${3:Component}}\n{\n    $0\n}" "simple" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/ned-mode/simple" nil nil)
                       ("net" "network ${1:Name}\n{\n        submodules:\n           $2\n        connections:\n           $3\n}" "network" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/ned-mode/network" nil nil)
                       ("imp" "import ned.${1:Package};" "import" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/ned-mode/import" nil nil)
                       ("for" "for ${1:i}=${2:0}..${3:sizeof(port)-1} {\n    $0\n}" "for" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/ned-mode/for" nil nil)
                       ("conn" "connections${1: allowunconnected}:\n                $0" "connections" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/ned-mode/connections" nil nil)
                       ("chan" "channel Channel extends ${1:ned.DelayChannel} {\n        $0\n}\n" "chan" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/ned-mode/chan" nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'snippets
                     '(("uses" "uses interface ${1:Interface}${2: as ${3:alias}};\n$0" "uses" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/nesc-mode/uses" nil nil)
                       ("u8" "uint8_t ${1:var};\n$0" "uint8_t" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/nesc-mode/uint8_t" nil nil)
                       ("sim" "#ifdef TOSSIM\n       $0\n#endif" "sim" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/nesc-mode/sim" nil nil)
                       ("provides" "provides interface ${1:Interface};" "provides" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/nesc-mode/provides" nil nil)
                       ("nx" "nx_uint${1:8}_t ${2:var};\n$0" "nx" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/nesc-mode/nx" nil nil)
                       ("mod" "module ${1:Module} {\n       ${2:uses interface ${3:Packet}};\n       $0\n}" "module" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/nesc-mode/module" nil nil)
                       ("int" "interface ${1:Interface} {\n          $0\n}" "interface" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/nesc-mode/interface" nil nil)
                       ("ifdef" "#ifdef ${1:Macro}\n $2\n${3:#else}\n $4\n#endif" "ifdef" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/nesc-mode/ifdef" nil nil)
                       ("event" "event ${1:void} ${2:On.Event}($3) {\n      $0\n}" "event" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/nesc-mode/event" nil nil)
                       ("dbg" "dbg(\"${1:Module}\", \"${2:message}\"${3:, ${4:var list}});" "dbg" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/nesc-mode/dbg" nil nil)
                       ("command" "command ${1:void} ${2:naMe}($3) {\n\n}" "command" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/nesc-mode/command" nil nil)
                       ("tossim" "#ifndef TOSSIM\n        $0\n#endif" "TOSSIM" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/nesc-mode/TOSSIM" nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'snippets
                     '(("up" "unpackPhase = ''\n  $1\n'';\n$0\n" "unpackPhase" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/nix-mode/unpackPhase" nil nil)
                       ("ph" "   phases=\"${1:\\$prePhases unpackPhase patchPhase \\$preConfigurePhases configurePhase \\$preBuildPhases buildPhase checkPhase \\$preInstallPhases installPhase fixupPhase installCheckPhase \\$preDistPhases distPhase \\$postPhases}\";\n" "phases" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/nix-mode/phases" nil nil)
                       ("pp" "patchPhase = ''\n  $1\n'';\n$0" "patchPhase" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/nix-mode/patchPhase" nil nil)
                       ("pu" "{ stdenv, fetchurl$1}:\n\nstdenv.mkDerivation rec {\n  version = \"$2\";\n  name = \"$3-\\$\\{version\\}\";\n\n  src = fetchurl {\n    url = \"$4\";\n    sha256 = \"$5\";\n  };\n\n  buildInputs = [ $1 ];\n\n  meta = {\n    description = \"$6\";\n    homepage = https://$7;\n    license = stdenv.lib.licenses.${8:$$\n  (yas-choose-value '(\n    \"agpl3\"\n    \"asl20\"\n    \"bsd2\"\n    \"bsd3\"\n    \"gpl2\"\n    \"gpl3\"\n    \"lgpl3\"\n    \"mit\"\n  ))};\n    maintainers = [ stdenv.lib.maintainers.$9 ];\n    platforms = stdenv.lib.platforms.${10:$$\n  (yas-choose-value '(\n  \"gnu\"\n  \"linux\"\n  \"darwin\"\n  \"freebsd\"\n  \"openbsd\"\n  \"netbsd\"\n  \"cygwin\"\n  \"illumos\"\n  \"unix\"\n  \"all\"\n  \"none\"\n  \"allBut\"\n  \"mesaPlatforms\"\n  \"x86\"\n  \"i686\"\n  \"arm\"\n  \"mips\"\n  ))};\n  };\n}\n" "package url" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/nix-mode/package_url" nil nil)
                       ("pg" "{ stdenv, fetchFromGitHub$1 }:\nstdenv.mkDerivation rec {\n  name = \"$2-\\$\\{version\\}\";\n  version = \"$3\";\n\n  src = fetchFromGitHub {\n    owner = \"$4\";\n    repo = \"$2\";\n    rev = \"${5:v\\$\\{version\\}}\";\n    sha256 = \"$6\";\n  };\n\n  buildInputs = [ $1];\n\n  meta = {\n    description = \"$7\";\n    homepage = https://${8:github.com/$4/$2};\n\n    license = stdenv.lib.licenses.${9:$$\n  (yas-choose-value '(\n    \"agpl3\"\n    \"asl20\"\n    \"bsd2\"\n    \"bsd3\"\n    \"gpl2\"\n    \"gpl3\"\n    \"lgpl3\"\n    \"mit\"\n  ))};\n    maintainers = [ stdenv.lib.maintainers.$10 ];\n    platforms = stdenv.lib.platforms.${11:$$\n  (yas-choose-value '(\n  \"gnu\"\n  \"linux\"\n  \"darwin\"\n  \"freebsd\"\n  \"openbsd\"\n  \"netbsd\"\n  \"cygwin\"\n  \"illumos\"\n  \"unix\"\n  \"all\"\n  \"none\"\n  \"allBut\"\n  \"mesaPlatforms\"\n  \"x86\"\n  \"i686\"\n  \"arm\"\n  \"mips\"\n  ))};\n  };\n}\n" "package github" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/nix-mode/package_github" nil nil)
                       ("ip" "installPhase= ''\n${1:    mkdir -p \\$out/bin\n    for f in \\$(find . -executable -type f);\n    do\n      cp \\$f \\$out/bin/\n    done}\n'';\n$0" "installPhase" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/nix-mode/installPhase" nil nil)
                       ("ic" "installCheckPhase= ''\n$1\n'';\n$0" "installCheckPhase" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/nix-mode/installCheckPhase" nil nil)
                       ("fp" "fixPhase= ''\n$1\n'';\n$0" "fixPhase" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/nix-mode/fixPhase" nil nil)
                       ("dp" "distPhase= ''\n$1\n'';\n$0" "distPhase" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/nix-mode/distPhase" nil nil)
                       ("cp" "configurePhase= ''\n$1\n'';\n$0" "configurePhase" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/nix-mode/configurePhase" nil nil)
                       ("ch" "checkPhase= ''\n$1\n'';\n$0" "checkPhase" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/nix-mode/checkPhase" nil nil)
                       ("bp" "buildPhase= ''\n$1\n'';\n$0" "buildPhase" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/nix-mode/buildPhase" nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'snippets
                     '(("sec" "Section \"${1:Program}\"\n        $0\nSectionEnd" "section" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/nsis-mode/section" nil nil)
                       ("out" "outFile \"${1:setup}.exe\"" "outfile" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/nsis-mode/outfile" nil nil)
                       ("$" "$OUTDIR" "outdir" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/nsis-mode/outdir" nil nil)
                       ("msg" "MessageBox MB_OK \"${1:hello}\"" "message" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/nsis-mode/message" nil nil)
                       ("macro" "!macro ${1:Name} UN\n$0\n\n!macroend" "macro" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/nsis-mode/macro" nil nil)
                       ("$" "$INSTDIR" "instdir" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/nsis-mode/instdir" nil nil)
                       ("im" "!insermacro ${1:Name} ${2:\"args\"}" "insert_macro" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/nsis-mode/insert_macro" nil nil)
                       ("inc" "!include \"${Library.nsh}\"" "include" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/nsis-mode/include" nil nil)
                       ("if" "${IF} ${1:cond}\n      $0\n${ElseIf} ${2:else_cond}\n\n${EndIf}" "if" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/nsis-mode/if" nil nil)
                       ("fun" "Function ${1:Name}\n         $0\nFunctionEnd" "function" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/nsis-mode/function" nil nil)
                       ("def" "!define ${1:CONSTANT} ${2:value}" "define" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/nsis-mode/define" nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'snippets
                     '(("tn" "<${1:tag}>\n  $2\n</$1>$0" "<tag> \\n...\\n</tag>" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/nxml-mode/tag_newline" nil nil)
                       ("t" "<$1 $2 />$0" "<tag.../>" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/nxml-mode/tag_closing" nil nil)
                       ("t" "<${1:tag}>$2</$1>$0" "<tag>...</tag>" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/nxml-mode/tag" nil nil)
                       ("style" "<style type=\"text/css\" media=\"${1:screen}\">\n  $0\n</style>" "<style type=\"text/css\" media=\"...\">...</style>" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/nxml-mode/style" nil nil)
                       ("quote" "<blockquote>\n  $1\n</blockquote>" "<blockquote>...</blockquote>" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/nxml-mode/quote" nil nil)
                       ("name" "<a name=\"$1\"></a>" "<a name=\"...\"></a>" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/nxml-mode/name" nil nil)
                       ("meta" "<meta name=\"${1:generator}\" content=\"${2:content}\" />" "<meta name=\"...\" content=\"...\" />" nil
                        ("meta")
                        nil "/Users/ok/Dropbox/spacemacs.d/snippets/nxml-mode/meta" nil nil)
                       ("link" "<link rel=\"${1:stylesheet}\" href=\"${2:url}\" type=\"${3:text/css}\" media=\"${4:screen}\" />" "<link stylesheet=\"...\" />" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/nxml-mode/link" nil nil)
                       ("input" "<input type=\"$1\" name=\"$2\" value=\"$3\" />" "<input ... />" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/nxml-mode/input" nil nil)
                       ("img" "<img src=\"$1\" alt=\"$2\" />" "<img src=\"...\" alt=\"...\" />" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/nxml-mode/img" nil nil)
                       ("html" "<html xmlns=\"http://www.w3.org/1999/xhtml\" xml:lang=\"${1:en}\" lang=\"${2:en}\">\n  $0\n</html>\n" "<html xmlns=\"...\">...</html>" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/nxml-mode/html" nil nil)
                       ("a" "<a href=\"$1\">$2</a>" "<a href=\"...\">...</a>" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/nxml-mode/href" nil nil)
                       ("form" "<form method=\"$1\" action=\"$2\">\n  $0\n</form>" "<form method=\"...\" action=\"...\"></form>" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/nxml-mode/form" nil nil)
                       ("doctype_xhtml1_transitional" "<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">" "DocType XHTML 1.0 Transitional" nil
                        ("meta")
                        nil "/Users/ok/Dropbox/spacemacs.d/snippets/nxml-mode/doctype_xhtml1_transitional" nil nil)
                       ("doctype_xhtml1_strict" "<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Strict//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd\">" "DocType XHTML 1.0 Strict" nil
                        ("meta")
                        nil "/Users/ok/Dropbox/spacemacs.d/snippets/nxml-mode/doctype_xhtml1_strict" nil nil)
                       ("doctype" "<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.1//EN\" \"http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd\">" "DocType XHTML 1.1" nil
                        ("meta")
                        nil "/Users/ok/Dropbox/spacemacs.d/snippets/nxml-mode/doctype" nil nil)
                       ("br" "<br />" "<br />" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/nxml-mode/br" nil nil)
                       ("body" "<body$1>\n  $0\n</body>" "<body>...</body>" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/nxml-mode/body" nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'snippets
                     '(("if" "if ${1:cond}\n   $0\n${2:else\n        ${3:other}}\nendif" "if" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/octave-mode/if" nil nil)
                       ("fun" "function ${1:return_val} = ${2:fname}(${3:args})\n          $0\nendfunction" "function" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/octave-mode/function" nil nil)
                       ("for" "for ${1:var} = ${2:expr}\n    $0\nendfor" "for" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/octave-mode/for" nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'snippets
                     '(("verse_" "#+begin_verse\n        $0\n#+end_verse" "verse" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/org-mode/verse" nil nil)
                       ("uml" "#+BEGIN_UML\n$1\n#+END_UML\n" "uml" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/org-mode/uml" nil nil)
                       ("srcr" "#+BEGIN_SRC ruby :results output :session :exports both \nclass ${1:MyClass}\n     def ${2:MyMethod}\n         ${3}\n     end\nend\n#+END_SRC\n" "srcr" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/org-mode/src.yas" nil nil)
                       ("src" "#+BEGIN_SRC ${1:sourcefile} :results output :session :exports both \n            ${2:yourcode}\n#+END_SRC" "src" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/org-mode/src" nil nil)
                       ("org-style" "\n#+TITLE:     ${1:title}\n#+AUTHOR:    ${2:name}\n#+EMAIL:     (concat \"${2:name}\" at-sign \"${3:email}\")\n#+DESCRIPTION: Org-HTML export made simple.\n#+KEYWORDS:  org-mode, export, html, theme, style, css, js, bigblow\n#+LANGUAGE:  en\n#+OPTIONS:   H:4 toc:t num:2 ^:nil\n\n#+PROPERTY:  header-args :padline no\n#+SETUPFILE: setup/theme-readtheorg-local.setup\n\n#+LATEX_HEADER: \\usepackage{fontspec}\n#+LATEX_HEADER: \\setmainfont{PingFang SC}\n" "org-style" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/org-mode/org-style" nil nil)
                       ("matrix_" "\\left \\(\n\\begin{array}{${1:ccc}}\n${2:v1 & v2} \\\\\n$0\n\\end{array}\n\\right \\)" "matrix" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/org-mode/matrix" nil nil)
                       ("latex_" "#+BEGIN_LaTeX\n$0\n#+END_LaTeX" "latex" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/org-mode/latex" nil nil)
                       ("img_" "<img src=\"$1\"\n alt=\"$2\" align=\"${3:left}\"\n title=\"${4:image title}\"\n class=\"img\"\n</img>\n$0" "img" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/org-mode/img" nil nil)
                       ("fig_" "#+CAPTION: ${1:caption}\n#+ATTR_LaTeX: ${2:scale=0.75}\n#+LABEL: fig:${3:label}\n" "figure" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/org-mode/figure" nil nil)
                       ("entry_" "#+begin_html\n---\nlayout: ${1:default}\ntitle: ${2:title}\n---\n#+end_html\n$0" "entry" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/org-mode/entry" nil nil)
                       ("emb_" "src_${1:lang}${2:[${3:where}]}{${4:code}}" "embedded" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/org-mode/embedded" nil nil)
                       ("elisp_" "#+begin_src emacs-lisp :tangle yes\n$0\n#+end_src" "elisp" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/org-mode/elisp" nil nil)
                       ("dot_" "#+begin_src dot :file ${1:file} :cmdline -T${2:pdf} :exports none :results silent\n            $0\n#+end_src\n\n[[file:$1]]" "dot" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/org-mode/dot" nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'snippets
                     '(("xwhile" "${1:expression} while ${2:condition};" "... while ..." nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/perl-mode/xwhile" nil nil)
                       ("xunless" "${1:expression} unless ${2:condition}" "... unless ..." nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/perl-mode/xunless" nil nil)
                       ("xif" "${1:expression} if ${2:condition}" "... if ..." nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/perl-mode/xif" nil nil)
                       ("xfore" "${1:expression} foreach @${2:array};" "... foreach ..." nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/perl-mode/xfore" nil nil)
                       ("while" "while ($1) {\n    $0\n}" "while (...) { ... }" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/perl-mode/while" nil nil)
                       ("unless" "unless ($1) {\n    $0\n}" "unless (...) { ... }" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/perl-mode/unless" nil nil)
                       ("sub" "sub ${1:function_name} {\n    $0\n}" "sub ... { ... }" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/perl-mode/sub" nil nil)
                       ("ifee" "if ($1) {\n	${2:# body...}\n} elsif ($3) {\n	${4:# elsif...}\n} else {\n	${5:# else...}\n}" "if, elsif, else ..." nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/perl-mode/ifee" nil nil)
                       ("ife" "if ($1) {\n    $2\n} else {\n    $3\n}" "if (...) { ... } else { ... }" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/perl-mode/ife" nil nil)
                       ("if" "if ($1) {\n    $0\n}" "if (...) { ... }" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/perl-mode/if" nil nil)
                       ("fore" "foreach my \\$${1:x} (@${2:array}) {\n    ${3:# body...}\n}" "foreach ... { ... }" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/perl-mode/fore" nil nil)
                       ("for" "for (my \\$${1:var} = 0; \\$$1 < ${2:expression}; \\$$1++) {\n    ${3:# body...}\n}" "for (...) { ... }" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/perl-mode/for" nil nil)
                       ("eval" "eval {\n    ${1:# do something risky...}\n};\nif (\\$@) {\n    ${2:# handle failure...}\n}" "eval { ... } if ($@) { ... }" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/perl-mode/eval" nil nil)))


;;; contents of the .yas-setup.el support file:
;;;
(require 'yasnippet)

(defun yas-with-comment (str)
  (format "%s%s%s" comment-start str comment-end))

;; whitespace removing functions from Magnar Sveen ;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defun yas-s-trim-left (s)
  "Remove whitespace at the beginning of S."
  (if (string-match "\\`[ \t\n\r]+" s)
      (replace-match "" t t s)
    s))

(defun yas-s-trim-right (s)
  "Remove whitespace at the end of S."
  (if (string-match "[ \t\n\r]+\\'" s)
      (replace-match "" t t s)
    s))

(defun yas-s-trim (s)
  "Remove whitespace at the beginning and end of S."
  (yas-s-trim-left (yas-s-trim-right s)))


(defun yas-string-reverse (str)
  "Reverse a string STR manually to be compatible with emacs versions < 25."
  (apply #'string
         (reverse
          (string-to-list str))))

(defun yas-trimmed-comment-start ()
  "This function returns `comment-start' trimmed by whitespaces."
  (yas-s-trim comment-start))

(defun yas-trimmed-comment-end ()
  "This function returns `comment-end' trimmed by whitespaces if `comment-end' is not empty.
Otherwise the reversed output of function `yas-trimmed-comment-start' is returned."
  (if (eq (length comment-end) 0)
      (yas-string-reverse (yas-trimmed-comment-start))
    (yas-s-trim comment-end)))
;;; Snippet definitions:
;;;
(yas-define-snippets 'snippets
                     '(("x" "`(yas-with-comment \"XXX: \")`" "xxx" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/prog-mode/xxx" nil nil)
                       ("t" "`(yas-with-comment \"TODO: \")`" "todo" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/prog-mode/todo" nil nil)
                       ("fi" "`(yas-with-comment \"FIXME: \")`" "fixme"
                        (not
                         (eq major-mode 'sh-mode))
                        nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/prog-mode/fixme" nil nil)
                       ("col" "${1:$(yas-trimmed-comment-start)} ${1:comment} ${1:$(let* ((str \"\")\n                                               (curr (current-column))\n                                               (start (yas-trimmed-comment-start))\n                                               (lastcom (substring start -1))\n                                               (end (yas-trimmed-comment-end)))\n                                             (while (< (length str) (- 79 (+ curr (length end))))\n                                                    (setq str (concat str lastcom)))\n                                           (concat str end))}$0" "commentline" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/prog-mode/commentline" nil nil)
                       ("cob" "${1:$(let* ((col (current-column))\n           (str \"\")\n           (lastcom (substring (yas-trimmed-comment-start) -1))\n           (start (yas-trimmed-comment-start))\n           (end (yas-trimmed-comment-end))\n           (over (- (+ (string-width yas-text) (length start) (length end) col) 77)))\n         (while (< (length str) (+ (- 79 (length start) (length end) col) (if (> over 0) over 0)))\n                (setq str (concat str lastcom)))\n       (concat start str end))}\n${1:$(let* ((col (current-column))\n           (str \"\")\n           (start (yas-trimmed-comment-start))\n           (end (yas-trimmed-comment-end)))\n         (while (< (length str) (ffloor (/ (- 78.0 (+ col (length start) (string-width yas-text) (length end))) 2.0)))\n                (setq str (concat str \" \")))\n        (concat start str))} ${1:comment} ${1:$(let* ((col (current-column))\n                                                     (str \"\")\n                                                     (start (yas-trimmed-comment-start))\n                                                     (end (yas-trimmed-comment-end)))\n                                                   (while (< (length str) (- 79.0 (if (eq (mod (string-width yas-text) 2) 1) (- col 1) col) (length end)))\n                                                          (setq str (concat str \" \")))\n                                                 (concat str end))}\n${1:$(let* ((col (current-column))\n           (str \"\")\n           (lastcom (substring (yas-trimmed-comment-start) -1))\n           (start (yas-trimmed-comment-start))\n           (end (yas-trimmed-comment-end))\n           (over (- (+ (string-width yas-text) (length start) (length end) col) 77)))\n         (while (< (length str) (+ (- 79 (length start) (length end) col) (if (> over 0) over 0)))\n                (setq str (concat str lastcom)))\n       (concat start str end))}$0" "commentblock" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/prog-mode/commentblock" nil nil)
                       ("co" "${1:$(yas-trimmed-comment-start)} ${1:comment}${1:$(unless (eq (length comment-end) 0) (concat \" \" (yas-trimmed-comment-end)))}$0" "comment" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/prog-mode/comment" nil nil)))


;;; contents of the .yas-setup.el support file:
;;;
(require 'yasnippet)
(defvar yas-text)

(defun python-split-args (arg-string)
  "Split a python argument string into ((name, default)..) tuples"
  (mapcar (lambda (x)
             (split-string x "[[:blank:]]*=[[:blank:]]*" t))
          (split-string arg-string "[[:blank:]]*,[[:blank:]]*" t)))

(defun python-args-to-docstring ()
  "return docstring format for the python arguments in yas-text"
  (let* ((indent (concat "\n" (make-string (current-column) 32)))
         (args (python-split-args yas-text))
         (max-len (if args (apply 'max (mapcar (lambda (x) (length (nth 0 x))) args)) 0))
         (formatted-args (mapconcat
                (lambda (x)
                   (concat (nth 0 x) (make-string (- max-len (length (nth 0 x))) ? ) " -- "
                           (if (nth 1 x) (concat "\(default " (nth 1 x) "\)"))))
                args
                indent)))
    (unless (string= formatted-args "")
      (mapconcat 'identity (list "Keyword Arguments:" formatted-args) indent))))

(add-hook 'python-mode-hook
          '(lambda () (set (make-local-variable 'yas-indent-line) 'fixed)))
;;; Snippet definitions:
;;;
(yas-define-snippets 'snippets
                     '(("fw" "from __future__ import with_statement" "with_statement" nil
                        ("future")
                        nil "/Users/ok/Dropbox/spacemacs.d/snippets/python-mode/with_statement" nil nil)
                       ("with" "with ${1:expr}${2: as ${3:alias}}:\n    $0" "with" nil
                        ("control structure")
                        nil "/Users/ok/Dropbox/spacemacs.d/snippets/python-mode/with" nil nil)
                       ("wh" "while ${1:True}:\n    $0" "while" nil
                        ("control structure")
                        nil "/Users/ok/Dropbox/spacemacs.d/snippets/python-mode/while" nil nil)
                       ("utf8" "# -*- coding: utf-8 -*-\n" "utf-8 encoding" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/python-mode/utf8" nil nil)
                       ("un" "def __unicode__(self):\n    $0" "__unicode__" nil
                        ("dunder methods")
                        nil "/Users/ok/Dropbox/spacemacs.d/snippets/python-mode/unicode" nil nil)
                       ("try" "try:\n    $1\nexcept $2:\n    $3\nelse:\n    $0" "tryelse" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/python-mode/tryelse" nil nil)
                       ("try" "try:\n    $1\nexcept ${2:Exception}:\n    $0" "try" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/python-mode/try" nil nil)
                       ("tr" "import pdb; pdb.set_trace()" "trace" nil
                        ("debug")
                        nil "/Users/ok/Dropbox/spacemacs.d/snippets/python-mode/trace" nil nil)
                       ("tf" "import unittest\n${1:from ${2:test_file} import *}\n\n$0\n\nif __name__ == '__main__':\n    unittest.main()" "test_file" nil
                        ("testing")
                        nil "/Users/ok/Dropbox/spacemacs.d/snippets/python-mode/test_file" nil nil)
                       ("tcs" "class Test${1:toTest}(${2:unittest.TestCase}):\n    $0\n" "test_class" nil
                        ("testing")
                        nil "/Users/ok/Dropbox/spacemacs.d/snippets/python-mode/test_class" nil nil)
                       ("super" "super(`(replace-regexp-in-string \"\\\\([.]\\\\)[^.]+$\" \", self).\" (python-info-current-defun) nil nil 1)`($1)\n$0" "super" nil
                        ("object oriented")
                        nil "/Users/ok/Dropbox/spacemacs.d/snippets/python-mode/super" nil nil)
                       ("str" "def __str__(self):\n    $0" "__str__" nil
                        ("dunder methods")
                        nil "/Users/ok/Dropbox/spacemacs.d/snippets/python-mode/str" nil nil)
                       ("sm" "@staticmethod\ndef ${1:func}($0):\n" "static" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/python-mode/static" nil nil)
                       ("size" "sys.getsizeof($0)" "size" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/python-mode/size" nil nil)
                       ("setup" "from setuptools import setup\n\npackage = '${1:name}'\nversion = '${2:0.1}'\n\nsetup(name=package,\n      version=version,\n      description=\"${3:description}\",\n      url='${4:url}'$0)\n" "setup" nil
                        ("distribute")
                        nil "/Users/ok/Dropbox/spacemacs.d/snippets/python-mode/setup" nil nil)
                       ("setdef" "${1:var}.setdefault(${2:key}, []).append(${3:value})" "setdef" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/python-mode/setdef" nil nil)
                       ("sn" "self.$1 = $1" "selfassign" nil
                        ("object oriented")
                        nil "/Users/ok/Dropbox/spacemacs.d/snippets/python-mode/selfassign" nil nil)
                       ("s" "self" "self_without_dot" nil
                        ("object oriented")
                        nil "/Users/ok/Dropbox/spacemacs.d/snippets/python-mode/self_without_dot" nil nil)
                       ("." "self.$0" "self" nil
                        ("object oriented")
                        nil "/Users/ok/Dropbox/spacemacs.d/snippets/python-mode/self" nil nil)
                       ("script" "#!/usr/bin/env python\n\ndef main():\n    pass\n\nif __name__ == '__main__':\n    main()\n" "script" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/python-mode/script" nil nil)
                       ("scls" "class ${1:class}(${2:super-class}):\n    $0\n" "subclass" nil
                        ("object oriented")
                        nil "/Users/ok/Dropbox/spacemacs.d/snippets/python-mode/scls" nil nil)
                       ("r" "return $0" "return" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/python-mode/return" nil nil)
                       ("repr" "def __repr__(self):\n    $0" "__repr__" nil
                        ("dunder methods")
                        nil "/Users/ok/Dropbox/spacemacs.d/snippets/python-mode/repr" nil nil)
                       ("reg" "${1:regexp} = re.compile(r\"${2:expr}\")\n$0" "reg" nil
                        ("general")
                        nil "/Users/ok/Dropbox/spacemacs.d/snippets/python-mode/reg" nil nil)
                       ("prop" "def ${1:foo}():\n    doc = \"\"\"${2:Doc string}\"\"\"\n    def fget(self):\n        return self._$1\n\n    def fset(self, value):\n        self._$1 = value\n\n    def fdel(self):\n        del self._$1\n    return locals()\n$1 = property(**$1())\n\n$0\n" "prop" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/python-mode/prop" nil nil)
                       ("p" "print($0)" "print" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/python-mode/print" nil nil)
                       ("plt" "import matplotlib.pyplot as plt\n$0\n" "Import pyplot" nil
                        ("general")
                        nil "/Users/ok/Dropbox/spacemacs.d/snippets/python-mode/pl" nil nil)
                       ("ps" "pass" "pass" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/python-mode/pass" nil nil)
                       ("pars" "parser = argparse.ArgumentParser(description='$1')\n$0" "parser" nil
                        ("argparser")
                        nil "/Users/ok/Dropbox/spacemacs.d/snippets/python-mode/parser" nil nil)
                       ("pargs" "def parse_arguments():\n    parser = argparse.ArgumentParser(description='$1')\n    $0\n    return parser.parse_args()" "parse_args" nil
                        ("argparser")
                        nil "/Users/ok/Dropbox/spacemacs.d/snippets/python-mode/parse_args" nil nil)
                       ("np" "import numpy as np\n$0" "np" nil
                        ("general")
                        nil "/Users/ok/Dropbox/spacemacs.d/snippets/python-mode/np" nil nil)
                       ("not_impl" "raise NotImplementedError" "not_impl" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/python-mode/not_impl" nil nil)
                       ("md" "def ${1:name}(self$2):\n    \\\"\\\"\\\"$3\n    ${2:$(python-args-to-docstring)}\n    \\\"\\\"\\\"\n    $0" "method_docstring" nil
                        ("object oriented")
                        nil "/Users/ok/Dropbox/spacemacs.d/snippets/python-mode/method_docstring" nil nil)
                       ("m" "def ${1:method}(self${2:, $3}):\n    $0" "method" nil
                        ("object oriented")
                        nil "/Users/ok/Dropbox/spacemacs.d/snippets/python-mode/method" nil nil)
                       ("mt" "__metaclass__ = type" "metaclass" nil
                        ("object oriented")
                        nil "/Users/ok/Dropbox/spacemacs.d/snippets/python-mode/metaclass" nil nil)
                       ("main" "def main():\n    $0" "main" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/python-mode/main" nil nil)
                       ("log" "logger = logging.getLogger(\"${1:name}\")\nlogger.setLevel(logging.${2:level})\n" "logging" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/python-mode/logging" nil nil)
                       ("ln" "logger = logging.getLogger(${1:__name__})" "logger_name" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/python-mode/logger_name" nil nil)
                       ("li" "[${1:el} for $1 in ${2:list}]\n$0" "list" nil
                        ("definitions")
                        nil "/Users/ok/Dropbox/spacemacs.d/snippets/python-mode/list" nil nil)
                       ("lam" "lambda ${1:x}: $0" "lambda" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/python-mode/lambda" nil nil)
                       ("iter" "def __iter__(self):\n    return ${1:iter($2)}" "__iter__" nil
                        ("dunder methods")
                        nil "/Users/ok/Dropbox/spacemacs.d/snippets/python-mode/iter" nil nil)
                       ("itr" "import ipdb; ipdb.set_trace()" "ipdb trace" nil
                        ("debug")
                        nil "/Users/ok/Dropbox/spacemacs.d/snippets/python-mode/ipdbdebug" nil nil)
                       ("int" "import code; code.interact(local=locals())" "interact" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/python-mode/interact" nil nil)
                       ("id" "def __init__(self$1):\n    \\\"\\\"\\\"$2\n    ${1:$(python-args-to-docstring)}\n    \\\"\\\"\\\"\n    $0" "init_docstring" nil
                        ("definitions")
                        nil "/Users/ok/Dropbox/spacemacs.d/snippets/python-mode/init_docstring" nil nil)
                       ("init" "def __init__(self${1:, args}):\n    ${2:\"${3:docstring}\"\n    }$0" "init" nil
                        ("definitions")
                        nil "/Users/ok/Dropbox/spacemacs.d/snippets/python-mode/init" nil nil)
                       ("imp" "import ${1:lib}${2: as ${3:alias}}\n$0" "import" nil
                        ("general")
                        nil "/Users/ok/Dropbox/spacemacs.d/snippets/python-mode/import" nil nil)
                       ("ifm" "if __name__ == '__main__':\n    ${1:main()}" "ifmain" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/python-mode/ifmain" nil nil)
                       ("ife" "if $1:\n    $2\nelse:\n    $0\n" "ife" nil
                        ("control structure")
                        nil "/Users/ok/Dropbox/spacemacs.d/snippets/python-mode/ife" nil nil)
                       ("if" "if ${1:cond}:\n    $0\n" "if" nil
                        ("control structure")
                        nil "/Users/ok/Dropbox/spacemacs.d/snippets/python-mode/if" nil nil)
                       ("fd" "def ${1:name}($2):\n    \\\"\\\"\\\"$3\n    ${2:$(python-args-to-docstring)}\n    \\\"\\\"\\\"\n    $0" "function_docstring" nil
                        ("definitions")
                        nil "/Users/ok/Dropbox/spacemacs.d/snippets/python-mode/function_docstring" nil nil)
                       ("f" "def ${1:fun}(${2:args}):\n    $0\n" "function" nil
                        ("definitions")
                        nil "/Users/ok/Dropbox/spacemacs.d/snippets/python-mode/function" nil nil)
                       ("from" "from ${1:lib} import ${2:funs}" "from" nil
                        ("general")
                        nil "/Users/ok/Dropbox/spacemacs.d/snippets/python-mode/from" nil nil)
                       ("for" "for ${var} in ${collection}:\n    $0" "for ... in ... : ..." nil
                        ("control structure")
                        nil "/Users/ok/Dropbox/spacemacs.d/snippets/python-mode/for" nil nil)
                       ("eq" "def __eq__(self, other):\n    return self.$1 == other.$1" "__eq__" nil
                        ("dunder methods")
                        nil "/Users/ok/Dropbox/spacemacs.d/snippets/python-mode/eq" nil nil)
                       ("doc" ">>> ${1:function calls}\n${2:desired output}\n$0" "doctest" nil
                        ("testing")
                        nil "/Users/ok/Dropbox/spacemacs.d/snippets/python-mode/doctest" nil nil)
                       ("d" "\"\"\"$0\n\"\"\"" "doc" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/python-mode/doc" nil nil)
                       ("tcs" "class ${1:Model}Test(TestCase):\n    $0" "django_test_class" nil
                        ("testing")
                        nil "/Users/ok/Dropbox/spacemacs.d/snippets/python-mode/django_test_class" nil nil)
                       ("dt" "def test_${1:long_name}(self):\n    $0" "deftest" nil
                        ("testing")
                        nil "/Users/ok/Dropbox/spacemacs.d/snippets/python-mode/deftest" nil nil)
                       ("dec" "def ${1:decorator}(func):\n    $2\n    def _$1(*args, **kwargs):\n        $3\n        ret = func(*args, **kwargs)\n        $4\n        return ret\n\n    return _$1" "dec" nil
                        ("definitions")
                        nil "/Users/ok/Dropbox/spacemacs.d/snippets/python-mode/dec" nil nil)
                       ("cls" "class ${1:class}:\n    $0\n" "class" nil
                        ("object oriented")
                        nil "/Users/ok/Dropbox/spacemacs.d/snippets/python-mode/cls" nil nil)
                       ("cm" "@classmethod\ndef ${1:meth}(cls, $0):\n    " "classmethod" nil
                        ("object oriented")
                        nil "/Users/ok/Dropbox/spacemacs.d/snippets/python-mode/classmethod" nil nil)
                       ("cdb" "from celery.contrib import rdb; rdb.set_trace()" "celery pdb" nil
                        ("debug")
                        nil "/Users/ok/Dropbox/spacemacs.d/snippets/python-mode/celery_pdb" nil nil)
                       ("at" "self.assertTrue($0)" "assertTrue" nil
                        ("testing")
                        nil "/Users/ok/Dropbox/spacemacs.d/snippets/python-mode/assertTrue" nil nil)
                       ("ar" "with self.assertRaises(${1:Exception}):\n    $0\n" "assertRaises" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/python-mode/assertRaises.with" nil nil)
                       ("ar" "self.assertRaises(${1:Exception}, ${2:fun})" "assertRaises" nil
                        ("testing")
                        nil "/Users/ok/Dropbox/spacemacs.d/snippets/python-mode/assertRaises" nil nil)
                       ("an" "self.assertNotIn(${1:member}, ${2:container})" "assetNotIn" nil
                        ("testing")
                        nil "/Users/ok/Dropbox/spacemacs.d/snippets/python-mode/assertNotIn" nil nil)
                       ("ane" "self.assertNotEqual($1, $2)" "assertNotEqual" nil
                        ("testing")
                        nil "/Users/ok/Dropbox/spacemacs.d/snippets/python-mode/assertNotEqual" nil nil)
                       ("ai" "self.assertIn(${1:member}, ${2:container})" "assertIn" nil
                        ("testing")
                        nil "/Users/ok/Dropbox/spacemacs.d/snippets/python-mode/assertIn" nil nil)
                       ("af" "self.assertFalse($0)" "assertFalse" nil
                        ("testing")
                        nil "/Users/ok/Dropbox/spacemacs.d/snippets/python-mode/assertFalse" nil nil)
                       ("ae" "self.assertEqual($1, $2)" "assertEqual" nil
                        ("testing")
                        nil "/Users/ok/Dropbox/spacemacs.d/snippets/python-mode/assertEqual" nil nil)
                       ("ass" "assert $0" "assert" nil
                        ("testing")
                        nil "/Users/ok/Dropbox/spacemacs.d/snippets/python-mode/assert" nil nil)
                       ("arg" "parser.add_argument('${1:varname}', $0)" "arg_positional" nil
                        ("argparser")
                        nil "/Users/ok/Dropbox/spacemacs.d/snippets/python-mode/arg_positional" nil nil)
                       ("arg" "parser.add_argument('-$1', '--$2',\n                    $0)\n" "arg" nil
                        ("argparser")
                        nil "/Users/ok/Dropbox/spacemacs.d/snippets/python-mode/arg" nil nil)
                       ("all" "__all__ = [\n    $0\n]" "all" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/python-mode/all" nil nil)
                       ("setit" "def __setitem__(self, ${1:key}, ${2:val}):\n    $0" "__setitem__" nil
                        ("dunder methods")
                        nil "/Users/ok/Dropbox/spacemacs.d/snippets/python-mode/__setitem__" nil nil)
                       ("new" "def __new__(mcs, name, bases, dict):\n    $0\n    return type.__new__(mcs, name, bases, dict)\n" "__new__" nil
                        ("dunder methods")
                        nil "/Users/ok/Dropbox/spacemacs.d/snippets/python-mode/__new__" nil nil)
                       ("len" "def __len__(self):\n    $0" "__len__" nil
                        ("dunder methods")
                        nil "/Users/ok/Dropbox/spacemacs.d/snippets/python-mode/__len__" nil nil)
                       ("getit" "def __getitem__(self, ${1:key}):\n    $0" "__getitem__" nil
                        ("dunder methods")
                        nil "/Users/ok/Dropbox/spacemacs.d/snippets/python-mode/__getitem__" nil nil)
                       ("ex" "def __exit__(self, type, value, traceback):\n    $0" "__exit__" nil
                        ("dunder methods")
                        nil "/Users/ok/Dropbox/spacemacs.d/snippets/python-mode/__exit__" nil nil)
                       ("ent" "def __enter__(self):\n    $0\n\n    return self" "__enter__" nil
                        ("dunder methods")
                        nil "/Users/ok/Dropbox/spacemacs.d/snippets/python-mode/__enter__" nil nil)
                       ("cont" "def __contains__(self, el):\n    $0" "__contains__" nil
                        ("dunder methods")
                        nil "/Users/ok/Dropbox/spacemacs.d/snippets/python-mode/__contains__" nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'snippets
                     '(("subject" "subject {${1:object_create}}" "subject" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/rspec-mode/subject.yasnippet" nil nil)
                       ("specify" "specify { $0 }" "specify" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/rspec-mode/specify.yasnippet" nil nil)
                       ("sce" "scenario '${1:does something}' do\n  $0\nend" "sce" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/rspec-mode/scenario.yasnippet" nil nil)
                       ("itb" "it{expect(${1:content}).to ${2:matcher}}" "rspec-it-{}" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/rspec-mode/rspec-it-{" nil nil)
                       ("itd" "it '${1:describe}' do\n${2:content}\nend" "rspec-it-do" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/rspec-mode/rspec-it-do" nil nil)
                       ("pending" "pending${1: '${2:reason}'}" "pending" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/rspec-mode/pending.yasnippet" nil nil)
                       ("letb" "let!(:${1:object}) { $0 }" "letb" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/rspec-mode/let_bang-memoized_helper-(let).yasnippet" nil nil)
                       ("let" "let(:${1:object}) { $0 }" "let" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/rspec-mode/let-memoized_helper-(let).yasnippet" nil nil)
                       ("itsbl" "it_should_behave_like ${2:'$1'}$0" "itsbl" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/rspec-mode/it-should-behave-like.yasnippet" nil nil)
                       ("iti" "it { ${2:should ${1:matcher}} }$0" "iti" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/rspec-mode/it-one-line.yasnippet" nil nil)
                       ("itie" "it { ${2:is_expected.to ${1:matcher}} }$0" "itie" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/rspec-mode/it-is-expected.yasnippet" nil nil)
                       ("it" "it '${1:does something}' do\n	$0\nend" "it" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/rspec-mode/it-block.yasnippet" nil nil)
                       ("idou" "instance_double('${1:ClassName}'${2:, ${3:method: nil}}) $0" "idou" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/rspec-mode/instance_double.yasnippet" nil nil)
                       ("fea" "feature '${1:description}' do\n  $0\nend" "fea" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/rspec-mode/feature.yasnippet" nil nil)
                       ("exprec" "expect(${1:collaborator}).to receive(:${2:message})${3:.with(${4:args})}$0" "exprec" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/rspec-mode/expect-to-receive.yasnippet" nil nil)
                       ("expraise" "expect { ${1:action} }.to raise_error(${2:Error})$0" "expraise" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/rspec-mode/expect-to-raise.yasnippet" nil nil)
                       ("expmatch" "expect(${1:subject}).to match(/${2:regexp}/)$0" "expmatch" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/rspec-mode/expect-to-match.yasnippet" nil nil)
                       ("expinclude" "expect(${1:subject}).to include(${2:element})$0" "expinclude" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/rspec-mode/expect-to-include.yasnippet" nil nil)
                       ("exprec" "expect(${1:collaborator}).to have_received(:${2:message})${3:.with(${4:args})}$0" "exprec" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/rspec-mode/expect-to-have_received.yasnippet" nil nil)
                       ("exphave" "expect(${1:subject}).to have(${2:num}).${3:items}$0" "exphave" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/rspec-mode/expect-to-have.yasnippet" nil nil)
                       ("expexist" "expect(${1:subject}).to exist$0" "expexist" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/rspec-mode/expect-to-exist.yasnippet" nil nil)
                       ("expeql" "expect(${1:subject}).to eql(${2:value})$0" "expeql" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/rspec-mode/expect-to-eql.yasnippet" nil nil)
                       ("expeq" "expect(${1:subject}).to eq(${2:value})$0" "expeq" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/rspec-mode/expect-to-eq.yasnippet" nil nil)
                       ("expdo" "expect do\n  ${1:action}\nend.to ${2:matcher}$0\n" "expdo" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/rspec-mode/expect-to-block.yasnippet" nil nil)
                       ("expbe" "expect(${1:subject}).to be$0" "expbe" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/rspec-mode/expect-to-be.yasnippet" nil nil)
                       ("expbn" "expect(${1:subject}).to be_nil$0" "expbn" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/rspec-mode/expect-to-be-nil.yasnippet" nil nil)
                       ("expbc" "expect(${1:subject}).to be_close(${2:result}, ${3:tolerance})$0" "expbc" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/rspec-mode/expect-to-be-close.yasnippet" nil nil)
                       ("exp" "expect(${1:subject}).to ${2:matcher}$0" "exp" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/rspec-mode/expect-one-line.yasnippet" nil nil)
                       ("expto" "expect {${2: ${1:expression} }}.to ${3:matcher}" "expto" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/rspec-mode/expect-block-to.yasnippet" nil nil)
                       ("descl" "described_class" "descl" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/rspec-mode/described_class.yasnippet" nil nil)
                       ("descln" "described_class.new${1:($2)}" "descln" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/rspec-mode/described_class-new.yasnippet" nil nil)
                       ("des" "describe '${1:description}' do\n  $0\nend" "des" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/rspec-mode/describe-block.yasnippet" nil nil)
                       ("con" "context '${1:description}' do\n	$0\nend" "con" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/rspec-mode/context.yasnippet" nil nil)
                       ("befa" "before(:all) do\n  $0\nend" "befa" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/rspec-mode/before_all.yasnippet" nil nil)
                       ("allrec" "allow(${1:collaborator}).to receive(:${2:message})${3:.with(${4:args})}${5:.and_return(${6:result})}$0" "allrec" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/rspec-mode/allow-to-receive.yasnippet" nil nil)
                       ("afta" "after(:all) do\n  $0\nend" "afta" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/rspec-mode/after_all.yasnippet" nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'snippets
                     '(("warn" ".. warning:\n   $0" "warning" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/rst-mode/warning" nil nil)
                       ("|" "| $0\n|" "verbatim" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/rst-mode/verbatim" nil nil)
                       ("url" ".. _${1:description}: $0" "url" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/rst-mode/url" nil nil)
                       ("tit" "${1:$(make-string (string-width yas-text) ?\\=)}\n${1:Title}\n${1:$(make-string (string-width yas-text) ?\\=)}\n\n$0\n" "Document title" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/rst-mode/title" nil nil)
                       ("term" ":term:\\`$0\\`" "term" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/rst-mode/term" nil nil)
                       ("sec" "${1:Section}\n${1:$(make-string (string-width yas-text) ?\\-)}\n\n$0\n" "Section title" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/rst-mode/section" nil nil)
                       ("pause" ".. rst-class:: build" "pause" nil
                        ("hieroglyph")
                        nil "/Users/ok/Dropbox/spacemacs.d/snippets/rst-mode/pause" nil nil)
                       ("src" ".. parsed-literal::\n   $0" "parsed_literal" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/rst-mode/parsed_literal" nil nil)
                       ("mod" ":mod: \\`$0\\`" "module" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/rst-mode/module" nil nil)
                       (":" ":${1:var}: $0" "meta" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/rst-mode/meta" nil nil)
                       ("inc" ".. literalinclude:: ${1:path}" "literatal include" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/rst-mode/literal_include" nil nil)
                       ("inh" ".. inheritance-diagram:: $0" "inheritance" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/rst-mode/inheritance" nil nil)
                       ("img" ".. image:: ${1:path}\n   :height: ${2:100}\n   :width: ${3:200}\n   :alt: ${4:description}\n\n$0" "image" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/rst-mode/image" nil nil)
                       ("graph" ".. graphviz::\n\n   $0" "graphviz" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/rst-mode/graphviz" nil nil)
                       ("graph" ".. graph:: $1\n\n   $0" "graph" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/rst-mode/graph" nil nil)
                       ("fun" ":function:\\`$0\\`" "function" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/rst-mode/function" nil nil)
                       ("graph" ".. digraph:: $1\n\n   $0" "digraph" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/rst-mode/digraph" nil nil)
                       ("code" ".. code:: ${1:python}" "code" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/rst-mode/code" nil nil)
                       ("cls" ":class:\\`$0\\`" "class" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/rst-mode/class" nil nil)
                       ("chap" "${1:Chapter}\n${1:$(make-string (string-width yas-text) ?\\=)}\n\n$0\n" "Chapter title" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/rst-mode/chapter" nil nil)
                       ("auto" ".. automodule:: ${1:module_name}" "automodule" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/rst-mode/automodule" nil nil)
                       ("auto" ".. autofunction:: $0" "autofunction" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/rst-mode/autofunction" nil nil)
                       ("auto" ".. autoclass:: $0\n   ${1::members: ${2:members}}" "autoclass" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/rst-mode/autoclass" nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'snippets
                     '(("zip" "zip(${enums}) { |${row}| $0 }" "zip(...) { |...| ... }" nil
                        ("collections")
                        nil "/Users/ok/Dropbox/spacemacs.d/snippets/ruby-mode/zip" nil nil)
                       ("y" ":yields: $0" ":yields: arguments (rdoc)" nil
                        ("general")
                        nil "/Users/ok/Dropbox/spacemacs.d/snippets/ruby-mode/y" nil nil)
                       ("xput" "xhr :put, :${1:update}, id: ${2:1}, ${3:object}: { $4 }$0" "xput" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/ruby-mode/xhr-put.yasnippet" nil nil)
                       ("xpost" "xhr :post, :${1:create}, ${2:object}: { $3 }" "xpost" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/ruby-mode/xhr-post.yasnippet" nil nil)
                       ("xget" "xhr :get, :${1:show}${2:, id: ${3:1}}$0" "xget" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/ruby-mode/xhr-get.yasnippet" nil nil)
                       ("xdelete" "xhr :delete, :${1:destroy}, id: ${2:1}$0" "xdelete" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/ruby-mode/xhr-delete.yasnippet" nil nil)
                       ("while" "while ${condition}\n  $0\nend" "while ... end" nil
                        ("control structure")
                        nil "/Users/ok/Dropbox/spacemacs.d/snippets/ruby-mode/while" nil nil)
                       ("when" "when ${condition}\n  $0\nend" "when ... end" nil
                        ("control structure")
                        nil "/Users/ok/Dropbox/spacemacs.d/snippets/ruby-mode/when" nil nil)
                       ("format" "format.${1:js|xml|html}${2: { $0 \\}}" "format" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/ruby-mode/wants_format.yasnippet" nil nil)
                       ("w" "attr_writer :" "attr_writer ..." nil
                        ("definitions")
                        nil "/Users/ok/Dropbox/spacemacs.d/snippets/ruby-mode/w" nil nil)
                       ("verify" "verify only: [:$1], method: :post, render: { status: 500, text: \"use HTTP-POST\" }\n" "verify" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/ruby-mode/verify-(verify).yasnippet" nil nil)
                       ("vuif" "validates_uniqueness_of :${1:attribute}${2:, on: :${3:create}, message: \"${4:must be unique}\", if: proc { |obj| ${6:obj.condition?} }}" "vuif" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/ruby-mode/validates_uniqueness_of-if-(vuif).yasnippet" nil nil)
                       ("vu" "validates_uniqueness_of :${1:attribute}${2:, on: :${3:create}, message: \"${4:must be unique}\"}" "vu" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/ruby-mode/validates_uniqueness_of-(vu).yasnippet" nil nil)
                       ("vpif" "validates_presence_of :${1:attribute}${2:, on: :${3:create}, message: \"${4:can't be blank}\"}, if: proc { |obj| ${5:obj.condition?} }}" "vpif" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/ruby-mode/validates_presence_of-if-(vpif)-2.yasnippet" nil nil)
                       ("vp" "validates_presence_of :${1:attribute}${2:, on: :${3:create}, message: \"${4:can't be blank}\"}" "vp" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/ruby-mode/validates_presence_of-(vp).yasnippet" nil nil)
                       ("vn" "validates_numericality_of :${1:attribute}${2:, on: :${3:create}, message: \"${4:is not a number}\"}" "vn" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/ruby-mode/validates_numericality_of.yasnippet" nil nil)
                       ("vnif" "validates_numericality_of :${1:attribute}${2:, on: :${3:create}, message: \"${4:is not a number}\"}, if: proc { |obj| ${5:obj.condition?} }}" "vnif" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/ruby-mode/validates_numericality_of-if.yasnippet" nil nil)
                       ("vlif" "validates_length_of :${1:attribute}, within: ${2:3..20}${3:, on: :${4:create}, message: \"${5:must be present}\"}, if: proc { |obj| ${6:obj.condition?} }}" "vlif" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/ruby-mode/validates_length_of-if.yasnippet" nil nil)
                       ("vl" "validates_length_of :${1:attribute}, within: ${2:3..20}${3:, on: :${4:create}, message: \"${5:must be present}\"}" "vl" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/ruby-mode/validates_length_of-(vl).yasnippet" nil nil)
                       ("vi" "validates_inclusion_of :${1:attribute}${2:, in: ${3:%w( ${4:mov avi} )}, on: :${5:create}, message: \"${6:extension %s is not included in the list}\"}" "vi" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/ruby-mode/validates_inclusion_of.yasnippet" nil nil)
                       ("viif" "validates_inclusion_of :${1:attribute}${2:, in: ${3:%w( ${4:mov avi} )}, on: :${5:create}, message: \"${6:extension %s is not included in the list}\"}, if: proc { |obj| ${7:obj.condition?} }}" "viif" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/ruby-mode/validates_inclusion_of-if.yasnippet" nil nil)
                       ("vf" "validates_format_of :${1:attribute}, with: /${2:^[${3:\\w\\d}]+\\$}/${4:, on: :${5:create}, message: \"${6:is invalid}\"}" "vf" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/ruby-mode/validates_format_of.yasnippet" nil nil)
                       ("vfif" "validates_format_of :${1:attribute}, with: /${2:^[${3:\\w\\d}]+\\$}/${4:, on: :${5:create}, message: \"${6:is invalid}\"}, if: proc { |obj| ${7:obj.condition?} }}" "vfif" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/ruby-mode/validates_format_of-if.yasnippet" nil nil)
                       ("veif" "validates_exclusion_of :${1:attribute}${2:, in: ${3:%w( ${4:mov avi} )}, on: :${5:create}, message: \"${6:extension %s is not allowed}\"}, if: proc { |obj| ${7:obj.condition?} }}" "veif" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/ruby-mode/validates_exclusion_of-if-(veif).yasnippet" nil nil)
                       ("ve" "validates_exclusion_of :${1:attribute}${2:, in: ${3:%w( ${4:mov avi} )}, on: :${5:create}, message: \"${6:extension %s is not allowed}\"}" "ve" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/ruby-mode/validates_exclusion_of-(ve).yasnippet" nil nil)
                       ("vcif" "validates_confirmation_of :${1:attribute}${2:, on: :${3:create}, message: \"${4:should match confirmation}\", if: proc { |obj| ${5:obj.condition?} }}" "vcif" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/ruby-mode/validates_confirmation_of-if-(vcif).yasnippet" nil nil)
                       ("vc" "validates_confirmation_of :${1:attribute}${2:, on: :${3:create}, message: \"${4:should match confirmation}\"}" "vc" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/ruby-mode/validates_confirmation_of-(vc).yasnippet" nil nil)
                       ("vaif" "validates_associated :${1:attribute}${2:, on: :${3:create}, if: proc { |obj| ${5:obj.condition?} }}" "vaif" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/ruby-mode/validates_associated-if-(vaif).yasnippet" nil nil)
                       ("va" "validates_associated :${1:attribute}${2:, on: :${3:create}}" "va" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/ruby-mode/validates_associated-(va).yasnippet" nil nil)
                       ("vao" "validates_acceptance_of :${1:terms}${2:${3:, accept: \"${4:1}\"}${5:, message: \"${6:You must accept the terms of service}\"}}" "vao" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/ruby-mode/validates_acceptance_of.yasnippet" nil nil)
                       ("vaoif" "validates_acceptance_of :${1:terms}${2:${3:, accept: \"${4:1}\"}${5:, message: \"${6:You must accept the terms of service}\"}}, if: proc { |obj| ${7:obj.condition?} }}" "vaoif" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/ruby-mode/validates_acceptance_of-if.yasnippet" nil nil)
                       ("upt" "upto(${n}) { |${i}|\n  $0\n}" "upto(...) { |n| ... }" nil
                        ("control structure")
                        nil "/Users/ok/Dropbox/spacemacs.d/snippets/ruby-mode/upt" nil nil)
                       ("until" "until ${condition}\n  $0\nend" "until ... end" nil
                        ("control structure")
                        nil "/Users/ok/Dropbox/spacemacs.d/snippets/ruby-mode/until" nil nil)
                       ("tu" "require 'test/unit'" "tu" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/ruby-mode/tu" nil nil)
                       ("to_" "def to_s\n    \"${1:string}\"\nend\n$0" "to_" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/ruby-mode/to_" nil nil)
                       ("tim" "times { |${n}| $0 }" "times { |n| ... }" nil
                        ("control structure")
                        nil "/Users/ok/Dropbox/spacemacs.d/snippets/ruby-mode/tim" nil nil)
                       ("tc" "class TC_${1:Class} < Test::Unit::TestCase\n      $0\nend" "test class" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/ruby-mode/test class" nil nil)
                       ("t." "t.timestamps\nt.$0" "t." nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/ruby-mode/t_timestamps-(tctss).yasnippet" nil nil)
                       ("t." "t.timestamp :${1:title}\nt.$0" "t." nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/ruby-mode/t_timestamp-(tcts).yasnippet" nil nil)
                       ("t." "t.time :${1:title}\nt.$0" "t." nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/ruby-mode/t_time-(tcti).yasnippet" nil nil)
                       ("t." "t.text :${1:title}\nt.$0" "t." nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/ruby-mode/t_text-(tct).yasnippet" nil nil)
                       ("t." "t.string :${1:title}\nt.$0" "t." nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/ruby-mode/t_string-(tcs).yasnippet" nil nil)
                       ("t." "t.rename(:${1:old_column_name}, :${2:new_column_name})\nt.$0" "t." nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/ruby-mode/t_rename-(tre).yasnippet" nil nil)
                       ("t." "t.references :${1:taggable}${2:, polymorphic: ${3:{ default: '${4:Photo}' \\}}}\nt.$0" "t." nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/ruby-mode/t_references-(tcr).yasnippet" nil nil)
                       ("t." "t.integer :lock_version, null: false, default: 0\nt.$0" "t." nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/ruby-mode/t_lock_version-(tcl).yasnippet" nil nil)
                       ("t." "t.integer :${1:title}\nt.$0" "t." nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/ruby-mode/t_integer-(tci).yasnippet" nil nil)
                       ("t." "t.float :${1:title}\nt.$0" "t." nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/ruby-mode/t_float-(tcf).yasnippet" nil nil)
                       ("t." "t.decimal :${1:title}${2:${3:, precision: ${4:10}}${5:, scale: ${6:2}}}\nt.$0" "t." nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/ruby-mode/t_decimal-(tcd).yasnippet" nil nil)
                       ("t." "t.datetime :${1:title}\nt.$0" "t." nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/ruby-mode/t_datetime-(tcdt).yasnippet" nil nil)
                       ("t." "t.date :${1:title}\nt.$0" "t." nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/ruby-mode/t_date-(tcda).yasnippet" nil nil)
                       ("t." "t.boolean :${1:title}\nt.$0" "t." nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/ruby-mode/t_boolean-(tcb).yasnippet" nil nil)
                       ("t." "t.binary :${1:title}${2:, limit: ${3:2}.megabytes}\nt.$0" "t." nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/ruby-mode/t_binary-(tcbi).yasnippet" nil nil)
                       ("s" "#{$0}" "str" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/ruby-mode/str" nil nil)
                       ("select" "select { |${1:element}| $0 }" "select { |...| ... }" nil
                        ("collections")
                        nil "/Users/ok/Dropbox/spacemacs.d/snippets/ruby-mode/select" nil nil)
                       ("scar" "scope :${1:name}, ->(${2:arg}){ where(${3:attribute:} $2) }\n" "scar" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/ruby-mode/scope_with_args.yasnippet" nil nil)
                       ("sc" "scope :${1:name}, ->{ where(${2:attr:} ${3:value}) }\n" "sc" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/ruby-mode/scope.yasnippet" nil nil)
                       ("sample_show" "  def show\n    @${2:lowcasemodel}s =${2:Model}.includes(:appadsimage_attachments).order('updated_at DESC').all.limit(3).paginate :page => params[:page]\n    @${2:lowcasemodel}s.each do |${2:lowcasemodel}|\n      ${2:lowcasemodel}.setAttachment\n    end\n    respond_to do |format|\n      format.json { render :json => {\n          data: {\n              ${2:lowcasemodel}s: @${2:lowcasemodel}s.as_json(:include => :appadsimage_attachments),\n              current_page: @${2:lowcasemodel}s.current_page,\n              per_page: @${2:lowcasemodel}s.per_page,\n              total_entries: @${2:lowcasemodel}s.total_entries,\n          },\n          status: 200,\n          result: 'success'} }\n    end\n  end" "sample_show" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/ruby-mode/sample_show" nil nil)
                       ("sample_index" " def index\n    # self.per_page = 10\n    @${2:lowcasemodel}s = ${2:Model}.includes(:${2:lowcasemodel}_attachment_images, :user).order(updated_at: :desc).all.paginate :page => params[:page]\n    # logger.info \"home ============\"\n    # @${2:lowcasemodel}s.each do |${2:lowcasemodel}|\n    #   ${2:lowcasemodel}.setAttachment\n    # end\n    respond_to do |format|\n      format.json { render :json => {\n          data: {\n              ${2:lowcasemodel}s: @${2:lowcasemodel}s.as_json(:methods => :${2:lowcasemodel}_comments_count, :include => [:${2:lowcasemodel}_attachment_images, :user]),\n              current_page: @${2:lowcasemodel}s.current_page,\n              per_page: @${2:lowcasemodel}s.per_page,\n              total_entries: @${2:lowcasemodel}s.total_entries\n          }, status: 200,\n          result: 'success'} }\n    end\n\n  end" "sample_index" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/ruby-mode/sample_index" nil nil)
                       ("sample_create" "  def create\n    # @${2:lowcasemodel} = ${1:Model}.new(${2:lowcasemodel}_params)\n    unless current_user.id == ${2:lowcasemodel}_params[:user_id]\n      render :json => {result: \"fail\",message: \"非法评论\"} and return\n    end\n    @${2:lowcasemodel} = current_user.${2:lowcasemodel}s.new(${2:lowcasemodel}_params) \n    respond_to do |format|\n      if @${2:lowcasemodel}.save\n        format.json {\n          render :json => {\n                   data: {\n                     ${2:lowcasemodel}s: @${2:lowcasemodel}.as_json\n                   }, status: 200,\n                   result: 'success'}\n        }\n      else\n        format.json { render :json => {\n                               data: {\n                                 errors: @${2:lowcasemodel}.errors.messages\n                               }, status: 200,\n                               result: 'fail'} }\n      end\n    end\n  end\n" "sample_create" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/ruby-mode/sample_create" nil nil)
                       ("rw" "attr_accessor :" "attr_accessor ..." nil
                        ("definitions")
                        nil "/Users/ok/Dropbox/spacemacs.d/snippets/ruby-mode/rw" nil nil)
                       ("val" "validates :${1:column}, presence: true, uniqueness: true \n" "val" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/ruby-mode/ruby-validates.yasnippet" nil nil)
                       ("stubs" "stub(:${1:value_key1} => ${2:value_return1},:${3:value_key2} => ${4:value_return2})\n\n" "rspec-stubs" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/ruby-mode/rspec-stubs.yasnippet" nil nil)
                       ("stub" "stub(:${1:value_key}).and_return(${2:return_value})\n" "rspec-stub" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/ruby-mode/rspec-stub.yasnippet" nil nil)
                       ("let" "let(:${1:methodname}){${2:&block}}\n" "rspec-let" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/ruby-mode/rspec-let.yasnippet" nil nil)
                       ("its" "its(:$1) {$2}\n" "its" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/ruby-mode/rspec-its.snippet" nil nil)
                       ("desc" "describe $1 do\n$2\nend\n" "desc" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/ruby-mode/rspec-desc.snippet" nil nil)
                       ("context" "context '${1:describe/Class}' do\n${2:content}\nend" "rspec-context" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/ruby-mode/rspec-context.yasnippet" nil nil)
                       ("resdm" "resources :${1:res_name} do\n  member do\n    ${2:get} :${3:action}\n  end\nend" "resdm" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/ruby-mode/routes_resources_member_block.yasnippet" nil nil)
                       ("resdc" "resources :${1:res_name} do\n  collection do\n    ${2:get} :${3:action}\n  end\nend" "resdc" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/ruby-mode/routes_resources_collection_block.yasnippet" nil nil)
                       ("resd" "resources :${1:res_name} do\n  $2\nend" "resd" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/ruby-mode/routes_resources_block.yasnippet" nil nil)
                       ("res" "resources :${1:res_name}" "res" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/ruby-mode/routes_resources.yasnippet" nil nil)
                       ("reso" "resources :${1:res_name}, only: [:${2:index}]" "reso" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/ruby-mode/routes_resource_only.yasnippet" nil nil)
                       ("returning" "returning ${1:variable} do${2/(^(?<var>\\s*[a-z_][a-zA-Z0-9_]*\\s*)(,\\g<var>)*,?\\s*$)|.*/(?1: |)/}${2:v}${2/(^(?<var>\\s*[a-z_][a-zA-Z0-9_]*\\s*)(,\\g<var>)*,?\\s*$)|.*/(?1:|)/}\n	$0\nend" "returning" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/ruby-mode/returning-do-7Cvariable7C-E280A6-end.yasnippet" nil nil)
                       ("rest" "respond_to do |format|\n	format.${1:html}${2: { $0 \\}}\nend" "rest" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/ruby-mode/respond_to.yasnippet" nil nil)
                       ("req" "require '$0'" "require \"...\"" nil
                        ("general")
                        nil "/Users/ok/Dropbox/spacemacs.d/snippets/ruby-mode/req" nil nil)
                       ("ru" "render :update do |${2:page}|\n	$2.$0\nend" "ru" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/ruby-mode/render-(update).yasnippet" nil nil)
                       ("rts" "render text: \"${1:text to render...}\", status: ${2:401}" "rts" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/ruby-mode/render-(text-status)-(rts).yasnippet" nil nil)
                       ("rtlt" "render text: \"${1:text to render...}\", layout: ${2:true}" "rtlt" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/ruby-mode/render-(text-layout=3Etrue)-(rtlt).yasnippet" nil nil)
                       ("rtl" "render text: \"${1:text to render...}\", layout: \"${2:layoutname}\"" "rtl" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/ruby-mode/render-(text-layout)-(rtl).yasnippet" nil nil)
                       ("rt" "render text: \"${1:text to render...}\"" "rt" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/ruby-mode/render-(text)-(rt).yasnippet" nil nil)
                       ("rtips" "#请在此处按要求添加代码,修改请删除该注释  START\n\n$0\n\n#请在此处按要求添加代码,修改请删除该注释    END\n" "rtips" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/ruby-mode/render-(partial-status)-(rps).yasnippet" nil nil)
                       ("rns" "render nothing: ${1:true}, status: ${2:401}" "rns" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/ruby-mode/render-(nothing-status)-(rns).yasnippet" nil nil)
                       ("rn" "render nothing: ${1:true}" "rn" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/ruby-mode/render-(nothing)-(rn).yasnippet" nil nil)
                       ("rl" "render layout: \"${1:layoutname}\"" "rl" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/ruby-mode/render-(layout)-(rl).yasnippet" nil nil)
                       ("rit" "render inline: \"${1:<%= 'hello' %>}\", type: ${2::rxml}" "rit" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/ruby-mode/render-(inline-type)-(rit).yasnippet" nil nil)
                       ("ril" "render inline: \"${1:<%= 'hello' %>}\", locals: { ${2:name}: \"${3:value}\"$4 }" "ril" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/ruby-mode/render-(inline-locals)-(ril).yasnippet" nil nil)
                       ("ri" "render inline: \"${1:<%= 'hello' %>}\"" "ri" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/ruby-mode/render-(inline)-(ri).yasnippet" nil nil)
                       ("rfu" "render file: \"${1:filepath}\", use_full_path: ${2:false}" "rfu" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/ruby-mode/render-(file-use_full_path)-(rfu).yasnippet" nil nil)
                       ("rf" "render file: \"${1:filepath}\"" "rf" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/ruby-mode/render-(file)-(rf).yasnippet" nil nil)
                       ("ral" "render action: \"${1:action}\", layout: \"${2:layoutname}\"" "ral" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/ruby-mode/render-(action-layout)-(ral).yasnippet" nil nil)
                       ("ra" "render action: \"${1:action}\"" "ra" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/ruby-mode/render-(action)...-(ra).yasnippet" nil nil)
                       ("rel" "require_relative '$0'" "require_relative" nil
                        ("general")
                        nil "/Users/ok/Dropbox/spacemacs.d/snippets/ruby-mode/rel" nil nil)
                       ("reject" "reject { |${1:element}| $0 }" "reject { |...| ... }" nil
                        ("collections")
                        nil "/Users/ok/Dropbox/spacemacs.d/snippets/ruby-mode/reject" nil nil)
                       ("repp" "redirect_to(${2:${10:model}s_path})" "repp" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/ruby-mode/redirect_to-(path-plural).yasnippet" nil nil)
                       ("rep" "redirect_to(${2:${12:model}_path(${13:@}${14:$12})})" "rep" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/ruby-mode/redirect_to-(path).yasnippet" nil nil)
                       ("renpp" "redirect_to(${2:${10:parent}_${11:child}_path(${12:@}${13:$10})})" "renpp" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/ruby-mode/redirect_to-(nested-path-plural).yasnippet" nil nil)
                       ("renp" "redirect_to(${2:${12:parent}_${13:child}_path(${14:@}${15:$12}, ${16:@}${17:$13})})" "renp" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/ruby-mode/redirect_to-(nested-path).yasnippet" nil nil)
                       ("red" "reduce(${1:0}) { |${2:accumulator}, ${3:element}| $0 }\n" "reduce(...) { |...| ... }" nil
                        ("collections")
                        nil "/Users/ok/Dropbox/spacemacs.d/snippets/ruby-mode/red" nil nil)
                       ("recai" "redirect_to controller: \"${1:items}\", action: \"${2:show}\", id: ${0:@item}" "recai" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/ruby-mode/recai.yasnippet" nil nil)
                       ("reca" "redirect_to controller: \"${1:items}\", action: \"${2:list}\"" "reca" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/ruby-mode/reca.yasnippet" nil nil)
                       ("rec" "redirect_to controller: \"${1:items}\"" "rec" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/ruby-mode/rec.yasnippet" nil nil)
                       ("reai" "redirect_to action: \"${1:show}\", id: ${0:@item}" "reai" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/ruby-mode/reai.yasnippet" nil nil)
                       ("rea" "redirect_to action: \"${1:index}\"" "rea" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/ruby-mode/rea.yasnippet" nil nil)
                       ("rb" "#!/usr/bin/ruby -wU\n" "/usr/bin/ruby -wU" nil
                        ("general")
                        nil "/Users/ok/Dropbox/spacemacs.d/snippets/ruby-mode/rb" nil nil)
                       ("flash" "flash[:${1:notice}] = \"${2:Successfully created...}\"$0" "flash" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/ruby-mode/rails-flash.yasnippet" nil nil)
                       ("r" "attr_reader :" "attr_reader ..." nil
                        ("definitions")
                        nil "/Users/ok/Dropbox/spacemacs.d/snippets/ruby-mode/r" nil nil)
                       ("preq" "\n    params.require(:${1:lowcasemodel}).permit(:${2:column}, :${3:column}, :${4:column} )\n" "params.require" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/ruby-mode/preq" nil nil)
                       ("lsc" "scope :name, ->(${1:param}){ ${3:['${4:${5:field} = ?}', ${6:$1}]} }\n" "lsc" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/ruby-mode/named_scope-lambda.yasnippet" nil nil)
                       ("mod" "module ${1:`(let ((fn (capitalize (file-name-nondirectory\n                                 (file-name-sans-extension\n         (or (buffer-file-name)\n             (buffer-name (current-buffer))))))))\n           (while (string-match \"_\" fn)\n             (setq fn (replace-match \"\" nil nil fn)))\n           fn)`}\n  $0\nend" "module ... end" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/ruby-mode/mod" nil nil)
                       ("mm" "def method_missing(method, *args)\n  $0\nend" "def method_missing ... end" nil
                        ("definitions")
                        nil "/Users/ok/Dropbox/spacemacs.d/snippets/ruby-mode/mm" nil nil)
                       ("mrw" "mattr_accessor :${0:attr_names}" "mrw" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/ruby-mode/mattr_accessor.yasnippet" nil nil)
                       ("mp" "map(&:${1:id})" "mp" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/ruby-mode/map(-3Asym_proc).yasnippet" nil nil)
                       ("map" "map { |${e}| $0 }" "map { |...| ... }" nil
                        ("collections")
                        nil "/Users/ok/Dropbox/spacemacs.d/snippets/ruby-mode/map" nil nil)
                       ("logw" "logger.warn { \"${1:message}\" }$0" "logw" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/ruby-mode/logger_warn.yasnippet" nil nil)
                       ("logi" "logger.info { \"${1:message}\" }$0" "logi" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/ruby-mode/logger_info.yasnippet" nil nil)
                       ("logf" "logger.fatal { \"${1:message}\" }$0" "logf" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/ruby-mode/logger_fatal.yasnippet" nil nil)
                       ("loge" "logger.error { \"${1:message}\" }$0" "loge" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/ruby-mode/logger_error.yasnippet" nil nil)
                       ("logd" "logger.debug { \"${1:message}\" }$0" "logd" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/ruby-mode/logger_debug.yasnippet" nil nil)
                       ("inject" "inject(${1:0}) { |${2:injection}, ${3:element}| $0 }" "inject(...) { |...| ... }" nil
                        ("collections")
                        nil "/Users/ok/Dropbox/spacemacs.d/snippets/ruby-mode/inject" nil nil)
                       ("defi" "def initialize(${1:attribute})\n  @$1 = $1\nend" "defi" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/ruby-mode/initializer-method.yasnippet" nil nil)
                       ("init" "def initialize(${1:args})\n    $0\nend" "init" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/ruby-mode/init" nil nil)
                       ("inc" "include ${1:Module}\n$0\n" "include Module" nil
                        ("general")
                        nil "/Users/ok/Dropbox/spacemacs.d/snippets/ruby-mode/inc" nil nil)
                       ("ife" "if ${1:condition}\n  $2\nelse\n  $3\nend" "if ... else ... end" nil
                        ("control structure")
                        nil "/Users/ok/Dropbox/spacemacs.d/snippets/ruby-mode/ife" nil nil)
                       ("if" "if ${1:condition}\n  $0\nend" "if ... end" nil
                        ("control structure")
                        nil "/Users/ok/Dropbox/spacemacs.d/snippets/ruby-mode/if" nil nil)
                       ("hot" "has_one :${1:object}, through: :${2:join_association}${3:, source: :${4:$2_table_foreign_key_to_$1_table}}" "hot" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/ruby-mode/has_one_through-(hot).yasnippet" nil nil)
                       ("ho" "has_one :${1:object}${2:, class_name: \"${3:${1/[[:alpha:]]+|(_)/(?1::\\u$0)/g}}\", foreign_key: \"${4:$1_id}\"}" "ho" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/ruby-mode/has_one-(ho).yasnippet" nil nil)
                       ("hmd" "has_many :${1:object}s${2:, class_name: \"$1\", foreign_key: \"${4:reference}_id\"}, dependent: :destroy$0" "hmd" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/ruby-mode/has_many-dependent-=-destroy.yasnippet" nil nil)
                       ("hmt" "has_many :${1:objects}, through: :${2:join_association}${3:, source: :${4:$2_table_foreign_key_to_$1_table}}" "hmt" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/ruby-mode/has_many-(through).yasnippet" nil nil)
                       ("hm" "has_many :${1:object}s${2:, class_name: \"$1\", foreign_key: \"${4:reference}_id\"}" "hm" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/ruby-mode/has_many-(hm).yasnippet" nil nil)
                       ("habtm" "has_and_belongs_to_many :${1:object}${2:, join_table: \"${3:table_name}\", foreign_key: \"${4:$1_id}\"}" "habtm" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/ruby-mode/has_and_belongs_to_many-(habtm).yasnippet" nil nil)
                       ("form" "require 'formula'\n\nclass ${1:Name} <Formula\n  url '${2:url}'\n  homepage '${3:home}'\n  md5 '${4:md5}'\n\n  def install\n    ${5:system \"./configure\"}\n    $0\n  end\nend\n" "formula" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/ruby-mode/formula" nil nil)
                       ("forin" "for ${1:element} in ${2:collection}\n  $0\nend" "for ... in ...; ... end" nil
                        ("control structure")
                        nil "/Users/ok/Dropbox/spacemacs.d/snippets/ruby-mode/forin" nil nil)
                       ("for" "for ${1:el} in ${2:collection}\n    $0\nend" "for" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/ruby-mode/for" nil nil)
                       ("fp" "find(params[:${1:id}])" "fp" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/ruby-mode/find_params_id_(fp).yasnippet" nil nil)
                       ("fini" "find(${1:id})" "fini" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/ruby-mode/find(id).yasnippet" nil nil)
                       ("eawi" "each_with_index { |${e}, ${i}| $0 }" "each_with_index { |e, i| ... }" nil
                        ("collections")
                        nil "/Users/ok/Dropbox/spacemacs.d/snippets/ruby-mode/eawi" nil nil)
                       ("eav" "each_value { |${val}| $0 }" "each_value { |val| ... }" nil
                        ("collections")
                        nil "/Users/ok/Dropbox/spacemacs.d/snippets/ruby-mode/eav" nil nil)
                       ("eai" "each_index { |${i}| $0 }" "each_index { |i| ... }" nil
                        ("collections")
                        nil "/Users/ok/Dropbox/spacemacs.d/snippets/ruby-mode/eai" nil nil)
                       ("eac" "each_cons(${1:2}) { |${group}| $0 }" "each_cons(...) { |...| ... }" nil
                        ("collections")
                        nil "/Users/ok/Dropbox/spacemacs.d/snippets/ruby-mode/eac" nil nil)
                       ("ea" "each { |${e}| $0 }" "each { |...| ... }" nil
                        ("collections")
                        nil "/Users/ok/Dropbox/spacemacs.d/snippets/ruby-mode/ea" nil nil)
                       ("dow" "downto(${0}) { |${n}|\n  $0\n}" "downto(...) { |n| ... }" nil
                        ("control structure")
                        nil "/Users/ok/Dropbox/spacemacs.d/snippets/ruby-mode/dow" nil nil)
                       ("det" "detect { |${e}| $0 }" "detect { |...| ... }" nil
                        ("collections")
                        nil "/Users/ok/Dropbox/spacemacs.d/snippets/ruby-mode/det" nil nil)
                       ("deli" "delete_if { |${e}| $0 }" "delete_if { |...| ... }" nil
                        ("collections")
                        nil "/Users/ok/Dropbox/spacemacs.d/snippets/ruby-mode/deli" nil nil)
                       ("deftp" "def test_should_post_${1:action}\n	${3:@$2 = ${4:$2s}(:${5:fixture_name})\n	}post :$1${6:, id: @$2.to_param}, ${2:model}: { $0 }\n	assert_response :redirect\n\nend" "deftp" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/ruby-mode/def-post-request.yasnippet" nil nil)
                       ("deftg" "def test_should_get_${1:action}\n	${2:@${3:model} = ${4:$3s}(:${5:fixture_name})\n	}get :$1${6:, id: @$3.to_param}\n	assert_response :success\n	$0\nend" "deftg" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/ruby-mode/def-get-request.yasnippet" nil nil)
                       ("desc" "describe $1 do\n$2\nend" "desc" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/ruby-mode/def-create-resource.yasnippet" nil nil)
                       ("def" "def ${1:method}${2:(${3:args})}\n    $0\nend" "def ... end" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/ruby-mode/def" nil nil)
                       ("dee" "Marshal.load(Marshal.dump($0))" "deep_copy(...)" nil
                        ("general")
                        nil "/Users/ok/Dropbox/spacemacs.d/snippets/ruby-mode/dee" nil nil)
                       ("crud" "\n  def index\n    @$1 = ${1/(.+)/\\u$1/g}.scoped\n  end\n\n  def show\n    @$1 = ${1/(.+)/\\u$1/g}.find(params[:id])\n  end\n\n  def create\n    @$1 = ${1/(.+)/\\u$1/g}.new(params[:$1])\n  end\n\n  def update\n    @$1 = ${1/(.+)/\\u$1/g}.find(params[:id])\n  end\n\n  def edit\n    @$1 = ${1/(.+)/\\u$1/g}.find(params[:id])\n  end\n\n  def destroy\n    $1 = ${1/(.+)/\\u$1/g}.find(params[:id])\n  end" "crud" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/ruby-mode/crud-actions.yasnippet" nil nil)
                       ("collect" "collect { |${e}| $0 }" "collect { |...| ... }" nil
                        ("collections")
                        nil "/Users/ok/Dropbox/spacemacs.d/snippets/ruby-mode/collect" nil nil)
                       ("cls" "class ${1:`(let ((fn (capitalize (file-name-nondirectory\n                                 (file-name-sans-extension\n				 (or (buffer-file-name)\n				     (buffer-name (current-buffer))))))))\n             (replace-regexp-in-string \"_\" \"\" fn t t))`}\n  $0\nend\n" "class ... end" nil
                        ("definitions")
                        nil "/Users/ok/Dropbox/spacemacs.d/snippets/ruby-mode/cls" nil nil)
                       ("class" "class ${1:${TM_FILENAME/(?:\\A|_)([A-Za-z0-9]+)(?:\\.rb)?/(?2::\\u$1)/g}}\n$0\nend" "class" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/ruby-mode/class-end.yasnippet" nil nil)
                       ("cla" "class << ${self}\n  $0\nend" "class << self ... end" nil
                        ("definitions")
                        nil "/Users/ok/Dropbox/spacemacs.d/snippets/ruby-mode/cla" nil nil)
                       ("crw" "cattr_accessor :${0:attr_names}" "crw" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/ruby-mode/cattr_accessor.yasnippet" nil nil)
                       ("case" "case ${1:object}\nwhen ${2:condition}\n  $0\nend" "case ... end" nil
                        ("general")
                        nil "/Users/ok/Dropbox/spacemacs.d/snippets/ruby-mode/case" nil nil)
                       ("bb" "\nbyebug\n" "bb" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/ruby-mode/byebug.yasnippet" nil nil)
                       ("bm" "Benchmark.bmbm(${1:10}) do |x|\n  $0\nend" "Benchmark.bmbm(...) do ... end" nil
                        ("general")
                        nil "/Users/ok/Dropbox/spacemacs.d/snippets/ruby-mode/bm" nil nil)
                       ("bp" "\nbinding.pry\n" "bp" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/ruby-mode/binding_pry.yasnippet" nil nil)
                       ("bench" "require \"benchmark\"\n\nTESTS = ${1:1_000}\nBenchmark.bmbm do |x|\n  x.report(\"${2:var}\") {}\nend\n" "bench" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/ruby-mode/bench" nil nil)
                       ("bt" "belongs_to :${1:object}${2:, class_name: \"${3:${1/[[:alpha:]]+|(_)/(?1::\\u$0)/g}}\", foreign_key: \"${4:$1_id}\"}" "bt" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/ruby-mode/belongs_to-(bt).yasnippet" nil nil)
                       ("befvou" "before_validation ${1:validation_method}, on: :update" "befvou" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/ruby-mode/before_validation_on_update.yasnippet" nil nil)
                       ("befvoc" "before_validation ${1:validation_method}, on: :create" "befvoc" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/ruby-mode/before_validation_on_create.yasnippet" nil nil)
                       ("befv" "before_validation " "befv" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/ruby-mode/before_validation.yasnippet" nil nil)
                       ("befu" "before_update " "befu" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/ruby-mode/before_update.yasnippet" nil nil)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           ;;; Snippet definitions:
;;;
(yas-define-snippets 'snippets
                     '(("textcenter" "class=\"text-center\"" "textcenter" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/web-mode/h/textcenter" nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'snippets
                     '(("bs3icon" "\n<i class=\"fa fa-${1:name}${2:-${3:shape}${4:-${5:o}${6:-${7:direction}}}}\"></i>\n" "bs3-icon" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/web-mode/icons/bs3-icon.yasnippet" nil nil)
                       ("bs3icon:glyphicon" "\n<span class=\"glyphicon glyphicon-${1:icon}\" aria-hidden=\"true\"></span>\n" "bs3-icon:glyphicon" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/web-mode/icons/bs3-icon-glyphicon.yasnippet" nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'snippets
                     '(("bs3thumbnail" "\n<div class=\"col-xs-${1:3} col-sm-${1:3} col-md-${1:3} col-lg-${1:3}\">\n	<a href=\"${2:#}\" class=\"thumbnail\">\n		<img data-src=\"${3:#}\" alt=\"$4\">\n	</a>\n</div>\n" "bs3-thumbnail" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/web-mode/images/bs3-thumbnail.yasnippet" nil nil)
                       ("bs3thumbnail:content" "\n<div class=\"col-xs-${1:3} col-sm-${1:3} col-md-${1:3} col-lg-${1:3}\">\n	<div class=\"thumbnail\">\n		<img data-src=\"${2:#}\" alt=\"$3\">\n		<div class=\"caption\">\n			<h3>${4:Title}</h3>\n			<p>\n				${5:...}\n			</p>\n			<p>\n				<a href=\"${6:#}\" class=\"btn btn-primary\">${7:Action}</a>\n				<a href=\"${8:#}\" class=\"btn btn-default\">${9:Action}</a>\n			</p>\n		</div>\n	</div>\n</div>\n" "bs3-thumbnail:content" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/web-mode/images/bs3-thumbnail-content.yasnippet" nil nil)
                       ("bs3image" "\n<img src=\"<%=asset_path (\"$0\")%>\" ${2:class=\"img-responsive center-block\"} alt=\"${3:Image}\">\n" "bs3-image" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/web-mode/images/bs3-image.yasnippet" nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'snippets
                     '(("bs3input-group" "\n<div class=\"input-group\">\n	$0\n</div>\n" "bs3-input-group" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/web-mode/input-groups/bs3-input-group.yasnippet" nil nil)
                       ("bs3input-group:text:btn" "\n<div class=\"input-group\">\n	<input type=\"text\" class=\"form-control\" id=\"exampleInputAmount\" placeholder=\"Search\">\n	<span class=\"input-group-btn\">\n		<button type=\"button\" class=\"btn btn-default\">Go!</button>\n	</span>\n</div>\n" "bs3-input-group:text:btn" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/web-mode/input-groups/bs3-input-group-text-btn.yasnippet" nil nil)
                       ("bs3input-group-btn" "\n<span class=\"input-group-btn\">\n	<button type=\"button\" class=\"btn btn-default\">Go!</button>\n</span>\n" "bs3-input-group-btn" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/web-mode/input-groups/bs3-input-group-btn.yasnippet" nil nil)
                       ("bs3input-group-addon" "\n<div class=\"input-group-addon\">${1:\\$}</div>\n" "bs3-input-group-addon" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/web-mode/input-groups/bs3-input-group-addon.yasnippet" nil nil)
                       ("bs3input-group:addon:text" "\n<div class=\"input-group\">\n	<div class=\"input-group-addon\">${1:\\$}</div>\n	<input type=\"text\" class=\"form-control\" id=\"exampleInputAmount\" placeholder=\"Amount\">\n</div>\n" "bs3-input-group:addon:text" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/web-mode/input-groups/bs3-input-group-addon-text.yasnippet" nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'snippets
                     '(("bs3jumbotron" "\n<div class=\"jumbotron\">\n	<div class=\"container\">\n		<h1>${1:Hello, world!}</h1>\n		<p>${2:Contents ...}</p>\n		<p>\n			<a class=\"btn btn-primary btn-lg\">${3:Learn more}</a>\n		</p>\n	</div>\n</div>\n" "bs3-jumbotron" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/web-mode/jumbotron/bs3-jumbotron.yasnippet" nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'snippets
                     '(("bs3label" "\n<span class=\"label\">${1:Label}</span>\n" "bs3-label" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/web-mode/labels/bs3-label.yasnippet" nil nil)
                       ("bs3label:warning" "\n<span class=\"label label-warning\">${1:Label}</span>\n" "bs3-label:warning" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/web-mode/labels/bs3-label-warning.yasnippet" nil nil)
                       ("bs3label:success" "\n<span class=\"label label-success\">${1:Label}</span>\n" "bs3-label:success" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/web-mode/labels/bs3-label-success.yasnippet" nil nil)
                       ("bs3label:info" "\n<span class=\"label label-info\">${1:Label}</span>\n" "bs3-label:info" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/web-mode/labels/bs3-label-info.yasnippet" nil nil)
                       ("bs3label:default" "\n<span class=\"label label-default\">${1:Label}</span>\n" "bs3-label:default" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/web-mode/labels/bs3-label-default.yasnippet" nil nil)
                       ("bs3label:danger" "\n<span class=\"label label-danger\">${1:Label}</span>\n" "bs3-label:danger" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/web-mode/labels/bs3-label-danger.yasnippet" nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'snippets
                     '(("bs3sm-link-button" "\n<a class=\"btn btn-sm btn-default\" href=\"#\" role=\"button\">button</a>\n" "bs3-sm-link-button" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/web-mode/link-buttons/bs3-sm-link-button.yasnippet" nil nil)
                       ("bs3sm-link-button:warning" "\n<a class=\"btn btn-sm btn-warning\" href=\"#\" role=\"button\">button</a>\n" "bs3-sm-link-button:warning" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/web-mode/link-buttons/bs3-sm-link-button-warning.yasnippet" nil nil)
                       ("bs3sm-link-button:success" "\n<a class=\"btn btn-sm btn-success\" href=\"#\" role=\"button\">button</a>\n" "bs3-sm-link-button:success" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/web-mode/link-buttons/bs3-sm-link-button-success.yasnippet" nil nil)
                       ("bs3sm-link-button:primary" "\n<a class=\"btn btn-sm btn-primary\" href=\"#\" role=\"button\">button</a>\n" "bs3-sm-link-button:primary" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/web-mode/link-buttons/bs3-sm-link-button-primary.yasnippet" nil nil)
                       ("bs3sm-link-button:info" "\n<a class=\"btn btn-sm btn-info\" href=\"#\" role=\"button\">button</a>\n" "bs3-sm-link-button:info" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/web-mode/link-buttons/bs3-sm-link-button-info.yasnippet" nil nil)
                       ("bs3sm-link-button:disabled" "\n<a class=\"btn btn-sm btn-default disabled\" href=\"#\" role=\"button\">button</a>\n" "bs3-sm-link-button:disabled" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/web-mode/link-buttons/bs3-sm-link-button-disabled.yasnippet" nil nil)
                       ("bs3sm-link-button:default" "\n<a class=\"btn btn-sm btn-default\" href=\"#\" role=\"button\">button</a>\n" "bs3-sm-link-button:default" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/web-mode/link-buttons/bs3-sm-link-button-default.yasnippet" nil nil)
                       ("bs3sm-link-button:danger" "\n<a class=\"btn btn-sm btn-danger\" href=\"#\" role=\"button\">button</a>\n" "bs3-sm-link-button:danger" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/web-mode/link-buttons/bs3-sm-link-button-danger.yasnippet" nil nil)
                       ("bs3xs-link-button" "\n<a class=\"btn btn-xs btn-default\" href=\"#\" role=\"button\">button</a>\n" "bs3-xs-link-button" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/web-mode/link-buttons/bs3-mini-link-button.yasnippet" nil nil)
                       ("bs3xs-link-button:warning" "\n<a class=\"btn btn-xs btn-warning\" href=\"#\" role=\"button\">button</a>\n" "bs3-xs-link-button:warning" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/web-mode/link-buttons/bs3-mini-link-button-warning.yasnippet" nil nil)
                       ("bs3xs-link-button:success" "\n<a class=\"btn btn-xs btn-success\" href=\"#\" role=\"button\">button</a>\n" "bs3-xs-link-button:success" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/web-mode/link-buttons/bs3-mini-link-button-success.yasnippet" nil nil)
                       ("bs3xs-link-button:primary" "\n<a class=\"btn btn-xs btn-primary\" href=\"#\" role=\"button\">button</a>\n" "bs3-xs-link-button:primary" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/web-mode/link-buttons/bs3-mini-link-button-primary.yasnippet" nil nil)
                       ("bs3xs-link-button:info" "\n<a class=\"btn btn-xs btn-info\" href=\"#\" role=\"button\">button</a>\n" "bs3-xs-link-button:info" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/web-mode/link-buttons/bs3-mini-link-button-info.yasnippet" nil nil)
                       ("bs3xs-link-button:disabled" "\n<a class=\"btn btn-xs btn-default disabled\" href=\"#\" role=\"button\">button</a>\n" "bs3-xs-link-button:disabled" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/web-mode/link-buttons/bs3-mini-link-button-disabled.yasnippet" nil nil)
                       ("bs3xs-link-button:default" "\n<a class=\"btn btn-xs btn-default\" href=\"#\" role=\"button\">button</a>\n" "bs3-xs-link-button:default" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/web-mode/link-buttons/bs3-mini-link-button-default.yasnippet" nil nil)
                       ("bs3xs-link-button:danger" "\n<a class=\"btn btn-xs btn-danger\" href=\"#\" role=\"button\">button</a>\n" "bs3-xs-link-button:danger" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/web-mode/link-buttons/bs3-mini-link-button-danger.yasnippet" nil nil)
                       ("bs3link-button" "\n<a class=\"btn btn-default\" href=\"#\" role=\"button\">button</a>\n" "bs3-link-button" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/web-mode/link-buttons/bs3-link-button.yasnippet" nil nil)
                       ("bs3link-button:warning" "\n<a class=\"btn btn-warning\" href=\"#\" role=\"button\">button</a>\n" "bs3-link-button:warning" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/web-mode/link-buttons/bs3-link-button-warning.yasnippet" nil nil)
                       ("bs3link-button:success" "\n<a class=\"btn btn-success\" href=\"#\" role=\"button\">button</a>\n" "bs3-link-button:success" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/web-mode/link-buttons/bs3-link-button-success.yasnippet" nil nil)
                       ("bs3link-button:primary" "\n<a class=\"btn btn-primary\" href=\"#\" role=\"button\">button</a>\n" "bs3-link-button:primary" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/web-mode/link-buttons/bs3-link-button-primary.yasnippet" nil nil)
                       ("bs3link-button:info" "\n<a class=\"btn btn-info\" href=\"#\" role=\"button\">button</a>\n" "bs3-link-button:info" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/web-mode/link-buttons/bs3-link-button-info.yasnippet" nil nil)
                       ("bs3link-group" "\n<div class=\"btn-group\">\n	<a class=\"btn btn-default\" href=\"#\" role=\"button\">Left</a>\n	<a class=\"btn btn-default\" href=\"#\" role=\"button\">Middle</a>\n	<a class=\"btn btn-default\" href=\"#\" role=\"button\">Right</a>\n</div>\n" "bs3-link-group" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/web-mode/link-buttons/bs3-link-button-group.yasnippet" nil nil)
                       ("bs3link-group:vertical" "\n<div class=\"btn-group-vertical\">\n	<a class=\"btn btn-default\" href=\"#\" role=\"button\">Top</a>\n	<a class=\"btn btn-default\" href=\"#\" role=\"button\">Middle</a>\n	<a class=\"btn btn-default\" href=\"#\" role=\"button\">Bottom</a>\n</div>\n" "bs3-link-group:vertical" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/web-mode/link-buttons/bs3-link-button-group-vertical.yasnippet" nil nil)
                       ("bs3link-button:disabled" "\n<a class=\"btn btn-primary disabled\" href=\"#\" role=\"button\">button</a>\n" "bs3-link-button:disabled" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/web-mode/link-buttons/bs3-link-button-disabled.yasnippet" nil nil)
                       ("bs3link-button:default" "\n<a class=\"btn btn-default\" href=\"#\" role=\"button\">button</a>\n" "bs3-link-button:default" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/web-mode/link-buttons/bs3-link-button-default.yasnippet" nil nil)
                       ("bs3link-button:danger" "\n<a class=\"btn btn-danger\" href=\"#\" role=\"button\">button</a>\n" "bs3-link-button:danger" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/web-mode/link-buttons/bs3-link-button-danger.yasnippet" nil nil)
                       ("bs3lg-link-button" "\n<a class=\"btn btn-lg btn-default\" href=\"#\" role=\"button\">button</a>\n" "bs3-lg-link-button" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/web-mode/link-buttons/bs3-lg-link-button.yasnippet" nil nil)
                       ("bs3lg-link-button:warning" "\n<a class=\"btn btn-lg btn-warning\" href=\"#\" role=\"button\">button</a>\n" "bs3-lg-link-button:warning" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/web-mode/link-buttons/bs3-lg-link-button-warning.yasnippet" nil nil)
                       ("bs3lg-link-button:success" "\n<a class=\"btn btn-lg btn-success\" href=\"#\" role=\"button\">button</a>\n" "bs3-lg-link-button:success" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/web-mode/link-buttons/bs3-lg-link-button-success.yasnippet" nil nil)
                       ("bs3lg-link-button:primary" "\n<a class=\"btn btn-lg btn-primary\" href=\"#\" role=\"button\">button</a>\n" "bs3-lg-link-button:primary" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/web-mode/link-buttons/bs3-lg-link-button-primary.yasnippet" nil nil)
                       ("bs3lg-link-button:info" "\n<a class=\"btn btn-lg btn-info\" href=\"#\" role=\"button\">button</a>\n" "bs3-lg-link-button:info" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/web-mode/link-buttons/bs3-lg-link-button-info.yasnippet" nil nil)
                       ("bs3lg-link-button:disabled" "\n<a class=\"btn btn-lg btn-default disabled\" href=\"#\" role=\"button\">button</a>\n" "bs3-lg-link-button:disabled" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/web-mode/link-buttons/bs3-lg-link-button-disabled.yasnippet" nil nil)
                       ("bs3lg-link-button:default" "\n<a class=\"btn btn-lg btn-default\" href=\"#\" role=\"button\">button</a>\n" "bs3-lg-link-button:default" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/web-mode/link-buttons/bs3-lg-link-button-default.yasnippet" nil nil)
                       ("bs3lg-link-button:danger" "\n<a class=\"btn btn-lg btn-danger\" href=\"#\" role=\"button\">button</a>\n" "bs3-lg-link-button:danger" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/web-mode/link-buttons/bs3-lg-link-button-danger.yasnippet" nil nil)
                       ("bs3block-link-button" "\n<a class=\"btn btn-large btn-block btn-default\" href=\"#\" role=\"button\">button</a>\n" "bs3-block-link-button" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/web-mode/link-buttons/bs3-block-link-button.yasnippet" nil nil)
                       ("bs3block-link-button:warning" "\n<a class=\"btn btn-large btn-block btn-warning\" href=\"#\" role=\"button\">button</a>\n" "bs3-block-link-button:warning" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/web-mode/link-buttons/bs3-block-link-button-warning.yasnippet" nil nil)
                       ("bs3block-link-button:success" "\n<a class=\"btn btn-large btn-block btn-success\" href=\"#\" role=\"button\">button</a>\n" "bs3-block-link-button:success" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/web-mode/link-buttons/bs3-block-link-button-success.yasnippet" nil nil)
                       ("bs3block-link-button:primary" "\n<a class=\"btn btn-large btn-block btn-primary\" href=\"#\" role=\"button\">button</a>\n" "bs3-block-link-button:primary" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/web-mode/link-buttons/bs3-block-link-button-primary.yasnippet" nil nil)
                       ("bs3block-link-button:info" "\n<a class=\"btn btn-large btn-block btn-info\" href=\"#\" role=\"button\">button</a>\n" "bs3-block-link-button:info" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/web-mode/link-buttons/bs3-block-link-button-info.yasnippet" nil nil)
                       ("bs3block-link-button:disabled" "\n<a class=\"btn btn-large btn-block btn-default disabled\" href=\"#\" role=\"button\">button</a>\n" "bs3-block-link-button:disabled" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/web-mode/link-buttons/bs3-block-link-button-disabled.yasnippet" nil nil)
                       ("bs3block-link-button:default" "\n<a class=\"btn btn-large btn-block btn-default\" href=\"#\" role=\"button\">button</a>\n" "bs3-block-link-button:default" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/web-mode/link-buttons/bs3-block-link-button-default.yasnippet" nil nil)
                       ("bs3block-link-button:danger" "\n<a class=\"btn btn-large btn-block btn-danger\" href=\"#\" role=\"button\">button</a>\n" "bs3-block-link-button:danger" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/web-mode/link-buttons/bs3-block-link-button-danger.yasnippet" nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'snippets
                     '(("bs3list-group" "\n<ul class=\"list-group\">\n	<li class=\"list-group-item\">Item 1</li>\n	<li class=\"list-group-item\">Item 2</li>\n	<li class=\"list-group-item\">Item 3</li>\n</ul>\n" "bs3-list-group" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/web-mode/list-groups/bs3-list-group.yasnippet" nil nil)
                       ("bs3list-group:linked" "\n<div class=\"list-group\">\n	<a href=\"#\" class=\"list-group-item active\">Item 1</a>\n	<a href=\"#\" class=\"list-group-item\">Item 2</a>\n	<a href=\"#\" class=\"list-group-item\">Item 3</a>\n</div>\n" "bs3-list-group:linked" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/web-mode/list-groups/bs3-list-group-linked.yasnippet" nil nil)
                       ("bs3list-group:content" "\n<div class=\"list-group\">\n	<a href=\"#\" class=\"list-group-item active\">\n		<h4 class=\"list-group-item-heading\">${1:List group item heading}</h4>\n		<p class=\"list-group-item-text\">${2:Content goes here}</p>\n	</a>\n</div>\n" "bs3-list-group:content" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/web-mode/list-groups/bs3-list-group-content.yasnippet" nil nil)
                       ("bs3list-group:badges" "\n<ul class=\"list-group\">\n	<li class=\"list-group-item\">\n		<span class=\"badge\">5</span>\n		Item 1\n	</li>\n	<li class=\"list-group-item\">\n		<span class=\"badge\">10</span>\n		Item 2\n	</li>\n	<li class=\"list-group-item\">\n		<span class=\"badge\">15</span>\n		Item 3\n	</li>\n</ul>\n" "bs3-list-group:badges" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/web-mode/list-groups/bs3-list-group-badges.yasnippet" nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'snippets
                     '(("bs3local" "\n<!-- Local bootstrap CSS & JS -->\n<link rel=\"stylesheet\" media=\"screen\" href=\"${1:bootstrap.min.css}\">\n${2:<script src=\"jquery.js\"></script>}\n<script src=\"${3:bootstrap.min.js}\"></script>\n" "bs3-local" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/web-mode/local/bs3-local.yasnippet" nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'snippets
                     '(("bs3media-object" "\n<div class=\"media\">\n	<a class=\"pull-left\" href=\"${1:#}\">\n		<img class=\"media-object\" src=\"${2:#}\" alt=\"${3:Image}\">\n	</a>\n	<div class=\"media-body\">\n		<h4 class=\"media-heading\">${4:Media heading}</h4>\n		<p>${5:Text goes here...}</p>\n	</div>\n</div>\n" "bs3-media-object" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/web-mode/media/bs3-media-object.yasnippet" nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'snippets
                     '(("bs3modal" "\n${1:<a class=\"btn btn-primary\" data-toggle=\"modal\" href='#${2:modal-id}'>Trigger modal</a>}\n<div class=\"modal fade\" id=\"${2:modal-id}\">\n	<div class=\"modal-dialog\">\n		<div class=\"modal-content\">\n			<div class=\"modal-header\">\n				<button type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-hidden=\"true\">&times;</button>\n				<h4 class=\"modal-title\">${3:Modal title}</h4>\n			</div>\n			<div class=\"modal-body\">\n				$0\n			</div>\n			<div class=\"modal-footer\">\n				<button type=\"button\" class=\"btn btn-default\" data-dismiss=\"modal\">${4:Close}</button>\n				<button type=\"button\" class=\"btn btn-primary\">${5:Save changes}</button>\n			</div>\n		</div>\n	</div>\n</div>\n" "bs3-modal" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/web-mode/modal/bs3-modal.yasnippet" nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'snippets
                     '(("bs3navbar" "\n<nav class=\"navbar navbar-default\" role=\"navigation\">\n	<div class=\"container-fluid\">\n		<!-- Brand and toggle get grouped for better mobile display -->\n		<div class=\"navbar-header\">\n			<button type=\"button\" class=\"navbar-toggle\" data-toggle=\"collapse\" data-target=\".navbar-ex1-collapse\">\n				<span class=\"sr-only\">Toggle navigation</span>\n				<span class=\"icon-bar\"></span>\n				<span class=\"icon-bar\"></span>\n				<span class=\"icon-bar\"></span>\n			</button>\n			<a class=\"navbar-brand\" href=\"${1:#}\">${2:Title}</a>\n		</div>\n\n		<!-- Collect the nav links, forms, and other content for toggling -->\n		<div class=\"collapse navbar-collapse navbar-ex1-collapse\">\n			<ul class=\"nav navbar-nav\">\n				<li class=\"active\"><a href=\"#\">Link</a></li>\n				<li><a href=\"#\">Link</a></li>\n			</ul>\n			<form class=\"navbar-form navbar-left\" role=\"search\">\n				<div class=\"form-group\">\n					<input type=\"text\" class=\"form-control\" placeholder=\"Search\">\n				</div>\n				<button type=\"submit\" class=\"btn btn-default\">Submit</button>\n			</form>\n			<ul class=\"nav navbar-nav navbar-right\">\n				<li><a href=\"#\">Link</a></li>\n				<li class=\"dropdown\">\n					<a href=\"#\" class=\"dropdown-toggle\" data-toggle=\"dropdown\">Dropdown <b class=\"caret\"></b></a>\n					<ul class=\"dropdown-menu\">\n						<li><a href=\"#\">Action</a></li>\n						<li><a href=\"#\">Another action</a></li>\n						<li><a href=\"#\">Something else here</a></li>\n						<li><a href=\"#\">Separated link</a></li>\n					</ul>\n				</li>\n			</ul>\n		</div><!-- /.navbar-collapse -->\n	</div>\n</nav>\n" "bs3-navbar" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/web-mode/navigation/bs3-navbar.yasnippet" nil nil)
                       ("bs3navbar:text" "\n<p class=\"navbar-text\">${1:Navbar text}</p>\n" "bs3-navbar:text" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/web-mode/navigation/bs3-navbar-text.yasnippet" nil nil)
                       ("bs3navbar:static-top" "\n<nav class=\"navbar navbar-default navbar-static-top\" role=\"navigation\">\n	<div class=\"container\">\n		<a class=\"navbar-brand\" href=\"${1:#}\">${2:Title}</a>\n		<ul class=\"nav navbar-nav\">\n			<li class=\"active\">\n				<a href=\"#\">${3:Home}</a>\n			</li>\n			<li>\n				<a href=\"#\">${4:Link}</a>\n			</li>\n		</ul>\n	</div>\n</nav>\n" "bs3-navbar:static-top" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/web-mode/navigation/bs3-navbar-static-top.yasnippet" nil nil)
                       ("bs3navbar:responsive" "\n<nav class=\"navbar navbar-default\" role=\"navigation\">\n	<div class=\"container-fluid\">\n		<!-- Brand and toggle get grouped for better mobile display -->\n		<div class=\"navbar-header\">\n			<button type=\"button\" class=\"navbar-toggle\" data-toggle=\"collapse\" data-target=\".navbar-ex1-collapse\">\n				<span class=\"sr-only\">Toggle navigation</span>\n				<span class=\"icon-bar\"></span>\n				<span class=\"icon-bar\"></span>\n				<span class=\"icon-bar\"></span>\n			</button>\n			<a class=\"navbar-brand\" href=\"${1:#}\">${2:Title}</a>\n		</div>\n\n		<!-- Collect the nav links, forms, and other content for toggling -->\n		<div class=\"collapse navbar-collapse navbar-ex1-collapse\">\n			<ul class=\"nav navbar-nav\">\n				<li class=\"active\"><a href=\"#\">Link</a></li>\n				<li><a href=\"#\">Link</a></li>\n			</ul>\n			<form class=\"navbar-form navbar-left\" role=\"search\">\n				<div class=\"form-group\">\n					<input type=\"text\" class=\"form-control\" placeholder=\"Search\">\n				</div>\n				<button type=\"submit\" class=\"btn btn-default\">Submit</button>\n			</form>\n			<ul class=\"nav navbar-nav navbar-right\">\n				<li><a href=\"#\">Link</a></li>\n				<li class=\"dropdown\">\n					<a href=\"#\" class=\"dropdown-toggle\" data-toggle=\"dropdown\">Dropdown <b class=\"caret\"></b></a>\n					<ul class=\"dropdown-menu\">\n						<li><a href=\"#\">Action</a></li>\n						<li><a href=\"#\">Another action</a></li>\n						<li><a href=\"#\">Something else here</a></li>\n						<li><a href=\"#\">Separated link</a></li>\n					</ul>\n				</li>\n			</ul>\n		</div><!-- /.navbar-collapse -->\n	</div>\n</nav>\n" "bs3-navbar:responsive" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/web-mode/navigation/bs3-navbar-responsive.yasnippet" nil nil)
                       ("bs3navbar:links" "\n<ul class=\"nav navbar-nav\">\n	<li class=\"active\">\n		<a href=\"${1:#}\">${2:Home}</a>\n	</li>\n	<li>\n		<a href=\"${3:#}\">${4:Link}</a>\n	</li>\n</ul>\n" "bs3-navbar:links" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/web-mode/navigation/bs3-navbar-links.yasnippet" nil nil)
                       ("bs3navbar:link" "\n<p class=\"navbar-text pull-${1:right}\">\n	<a href=\"${2:#}\" class=\"navbar-link\">${3:Links}</a>\n</p>\n" "bs3-navbar:link" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/web-mode/navigation/bs3-navbar-link.yasnippet" nil nil)
                       ("bs3navbar:inverse" "\n<nav class=\"navbar navbar-inverse\">\n	<div class=\"container-fluid\">\n		<a class=\"navbar-brand\" href=\"#\">${1:Title}</a>\n		<ul class=\"nav navbar-nav\">\n			<li class=\"active\">\n				<a href=\"#\">${2:Home}</a>\n			</li>\n			<li>\n				<a href=\"#\">${3:Link}</a>\n			</li>\n		</ul>\n	</div>\n</nav>\n" "bs3-navbar:inverse" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/web-mode/navigation/bs3-navbar-inverse.yasnippet" nil nil)
                       ("bs3navbar:form" "\n<form class=\"navbar-form pull-${1:right}\">\n	<input type=\"text\" style=\"width: 200px;\">\n	<button type=\"submit\" class=\"btn btn-${2:default}\">${3:Submit}</button>\n</form>\n" "bs3-navbar:form" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/web-mode/navigation/bs3-navbar-form.yasnippet" nil nil)
                       ("bs3navbar:fixed-top" "\n<nav class=\"navbar navbar-default navbar-fixed-top\" role=\"navigation\">\n	<div class=\"container\">\n		<a class=\"navbar-brand\" href=\"${1:#}\">${2:Title}</a>\n		<ul class=\"nav navbar-nav\">\n			<li class=\"active\">\n				<a href=\"#\">${3:Home}</a>\n			</li>\n			<li>\n				<a href=\"#\">${4:Link}</a>\n			</li>\n		</ul>\n	</div>\n</nav>\n" "bs3-navbar:fixed-top" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/web-mode/navigation/bs3-navbar-fixed-top.yasnippet" nil nil)
                       ("bs3navbar:fixed-bottom" "\n<nav class=\"navbar navbar-default navbar-fixed-bottom\" role=\"navigation\">\n	<div class=\"container\">\n		<a class=\"navbar-brand\" href=\"${1:#}\">${2:Title}</a>\n		<ul class=\"nav navbar-nav\">\n			<li class=\"active\">\n				<a href=\"#\">${3:Home}</a>\n			</li>\n			<li>\n				<a href=\"#\">${4:Link}</a>\n			</li>\n		</ul>\n	</div>\n</nav>\n" "bs3-navbar:fixed-bottom" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/web-mode/navigation/bs3-navbar-fixed-bottom.yasnippet" nil nil)
                       ("bs3navbar:brand" "\n<a class=\"navbar-brand\" href=\"${1:/}\">${2:Title}</a>\n" "bs3-navbar:brand" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/web-mode/navigation/bs3-navbar-brand.yasnippet" nil nil)
                       ("bs3navbar:basic" "\n<div class=\"navbar\">\n	<div class=\"container-fluid\">\n		<a class=\"navbar-brand\" href=\"#\">${1:Title}</a>\n		<ul class=\"nav navbar-nav\">\n			<li class=\"active\">\n				<a href=\"#\">${2:Home}</a>\n			</li>\n			<li>\n				<a href=\"#\">${3:Link}</a>\n			</li>\n		</ul>\n	</div>\n</div>\n" "bs3-navbar:basic" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/web-mode/navigation/bs3-navbar-basic.yasnippet" nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'snippets
                     '(("bs3page-header" "\n<div class=\"page-header\">\n  <h1>${1:title}<small>${2:subtext}</small></h1>\n</div>\n" "bs3-page-header" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/web-mode/pageheader/bs3-page header.yasnippet" nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'snippets
                     '(("bs3pagination" "\n<ul class=\"pagination\">\n	<li><a href=\"#\">&laquo;</a></li>\n	<li><a href=\"#\">1</a></li>\n	<li><a href=\"#\">2</a></li>\n	<li><a href=\"#\">3</a></li>\n	<li><a href=\"#\">4</a></li>\n	<li><a href=\"#\">5</a></li>\n	<li><a href=\"#\">&raquo;</a></li>\n</ul>\n" "bs3-pagination" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/web-mode/pagination/bs3-pagination.yasnippet" nil nil)
                       ("bs3pagination:sm" "\n<ul class=\"pagination pagination-sm\">\n	<li><a href=\"#\">&laquo;</a></li>\n	<li><a href=\"#\">1</a></li>\n	<li><a href=\"#\">2</a></li>\n	<li><a href=\"#\">3</a></li>\n	<li><a href=\"#\">4</a></li>\n	<li><a href=\"#\">5</a></li>\n	<li><a href=\"#\">&raquo;</a></li>\n</ul>\n" "bs3-pagination:sm" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/web-mode/pagination/bs3-pagination-small.yasnippet" nil nil)
                       ("bs3pagination:lg" "\n<ul class=\"pagination pagination-lg\">\n	<li><a href=\"#\">&laquo;</a></li>\n	<li><a href=\"#\">1</a></li>\n	<li><a href=\"#\">2</a></li>\n	<li><a href=\"#\">3</a></li>\n	<li><a href=\"#\">4</a></li>\n	<li><a href=\"#\">5</a></li>\n	<li><a href=\"#\">&raquo;</a></li>\n</ul>\n" "bs3-pagination:lg" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/web-mode/pagination/bs3-pagination-large.yasnippet" nil nil)
                       ("bs3pager" "\n<ul class=\"pager\">\n	<li><a href=\"#\">Previous</a></li>\n	<li><a href=\"#\">Next</a></li>\n</ul>\n" "bs3-pager" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/web-mode/pagination/bs3-pager.yasnippet" nil nil)
                       ("bs3pager:aligned" "\n<ul class=\"pager\">\n	<li class=\"previous\"><a href=\"#\">&larr; Older</a></li>\n	<li class=\"next\"><a href=\"#\">Newer &rarr;</a></li>\n</ul>\n" "bs3-pager:aligned" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/web-mode/pagination/bs3-pager-aligned.yasnippet" nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'snippets
                     '(("bs3panel" "\n<div class=\"panel panel-${1:default}\">\n	<div class=\"panel-body\">\n		${2:Basic panel example}\n	</div>\n</div>\n" "bs3-panel" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/web-mode/panels/bs3-panel.yasnippet" nil nil)
                       ("bs3panel:warning" "\n<div class=\"panel panel-${1:warning}\">\n	<div class=\"panel-heading\">\n		<h3 class=\"panel-title\">Panel title</h3>\n	</div>\n	<div class=\"panel-body\">\n		${2:Panel content}\n	</div>\n</div>\n" "bs3-panel:warning" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/web-mode/panels/bs3-panel-warning.yasnippet" nil nil)
                       ("bs3panel:table" "\n<div class=\"panel panel-${1:default}\">\n	<!-- Default panel contents -->\n	<div class=\"panel-heading\">Panel heading</div>\n	<div class=\"panel-body\">\n		<p>Text goes here...</p>\n	</div>\n\n	<!-- Table -->\n	<table class=\"table\">\n		<thead>\n			<tr>\n				<th>${2:Heading 1}</th>\n			</tr>\n			<tr>\n				<th>${3:Heading 2}</th>\n			</tr>\n		</thead>\n		<tbody>\n			<tr>\n				<td>${4:Content 1}</td>\n			</tr>\n			<tr>\n				<td>${5:Content 2}</td>\n			</tr>\n		</tbody>\n	</table>\n</div>\n" "bs3-panel:table" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/web-mode/panels/bs3-panel-table.yasnippet" nil nil)
                       ("bs3panel:success" "\n<div class=\"panel panel-${1:success}\">\n	<div class=\"panel-heading\">\n		<h3 class=\"panel-title\">Panel title</h3>\n	</div>\n	<div class=\"panel-body\">\n		${2:Panel content}\n	</div>\n</div>\n" "bs3-panel:success" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/web-mode/panels/bs3-panel-success.yasnippet" nil nil)
                       ("bs3panel:primary" "\n<div class=\"panel panel-${1:primary}\">\n	<div class=\"panel-heading\">\n		<h3 class=\"panel-title\">Panel title</h3>\n	</div>\n	<div class=\"panel-body\">\n		${2:Panel content}\n	</div>\n</div>\n" "bs3-panel:primary" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/web-mode/panels/bs3-panel-primary.yasnippet" nil nil)
                       ("bs3panel:info" "\n<div class=\"panel panel-${1:info}\">\n	<div class=\"panel-heading\">\n		<h3 class=\"panel-title\">Panel title</h3>\n	</div>\n	<div class=\"panel-body\">\n		${2:Panel content}\n	</div>\n</div>\n" "bs3-panel:info" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/web-mode/panels/bs3-panel-info.yasnippet" nil nil)
                       ("bs3panel:heading" "\n<div class=\"panel panel-${1:default}\">\n	<div class=\"panel-heading\">\n		<h3 class=\"panel-title\">Panel title</h3>\n	</div>\n	<div class=\"panel-body\">\n		${2:Panel content}\n	</div>\n</div>\n" "bs3-panel:heading" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/web-mode/panels/bs3-panel-heading.yasnippet" nil nil)
                       ("bs3panel:footer" "\n<div class=\"panel panel-default\">\n	<div class=\"panel-body\">\n		${1:Panel content}\n	</div>\n	<div class=\"panel-footer\">\n		${2:Panel footer}\n	</div>\n</div>\n" "bs3-panel:footer" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/web-mode/panels/bs3-panel-footer.yasnippet" nil nil)
                       ("bs3panel:danger" "\n<div class=\"panel panel-${1:danger}\">\n	<div class=\"panel-heading\">\n		<h3 class=\"panel-title\">Panel title</h3>\n	</div>\n	<div class=\"panel-body\">\n		${2:Panel content}\n	</div>\n</div>\n" "bs3-panel:danger" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/web-mode/panels/bs3-panel-danger.yasnippet" nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'snippets
                     '(("bs3table" "\n<table class=\"table${1: table-hover}\">\n	<thead>\n		<tr>\n			<th></th>\n		</tr>\n	</thead>\n	<tbody>\n		<tr>\n			<td></td>\n		</tr>\n	</tbody>\n</table>\n" "bs3-table" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/web-mode/table/bs3-table.yasnippet" nil nil)
                       ("bs3table:striped" "\n<table class=\"table table-striped ${1:table-hover}\">\n	<thead>\n		<tr>\n			<th></th>\n		</tr>\n	</thead>\n	<tbody>\n		<tr>\n			<td></td>\n		</tr>\n	</tbody>\n</table>\n" "bs3-table:striped" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/web-mode/table/bs3-table-striped.yasnippet" nil nil)
                       ("bs3table:responsive" "\n<div class=\"table-responsive\">\n	<table class=\"table${1: table-hover}\">\n		<thead>\n			<tr>\n				<th></th>\n			</tr>\n		</thead>\n		<tbody>\n			<tr>\n				<td></td>\n			</tr>\n		</tbody>\n	</table>\n</div>\n" "bs3-table:responsive" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/web-mode/table/bs3-table-responsive.yasnippet" nil nil)
                       ("bs3table:hover" "\n<table class=\"table table-hover\">\n	<thead>\n		<tr>\n			<th></th>\n		</tr>\n	</thead>\n	<tbody>\n		<tr>\n			<td></td>\n		</tr>\n	</tbody>\n</table>\n" "bs3-table:hover" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/web-mode/table/bs3-table-hover.yasnippet" nil nil)
                       ("bs3table:condensed" "\n<table class=\"table table-condensed ${1:table-hover}\">\n	<thead>\n		<tr>\n			<th></th>\n		</tr>\n	</thead>\n	<tbody>\n		<tr>\n			<td></td>\n		</tr>\n	</tbody>\n</table>\n" "bs3-table:condensed" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/web-mode/table/bs3-table-condensed.yasnippet" nil nil)
                       ("bs3table:bordered" "\n<table class=\"table table-bordered ${1:table-hover}\">\n	<thead>\n		<tr>\n			<th></th>\n		</tr>\n	</thead>\n	<tbody>\n		<tr>\n			<td></td>\n		</tr>\n	</tbody>\n</table>\n" "bs3-table:bordered" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/web-mode/table/bs3-table-bordered.yasnippet" nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'snippets
                     '(("bs3tabs" "\n<div role=\"tabpanel\">\n	<!-- Nav tabs -->\n	<ul class=\"nav nav-tabs\" role=\"tablist\">\n		<li role=\"presentation\" class=\"active\">\n			<a href=\"#${1:home}\" aria-controls=\"${1:home}\" role=\"tab\" data-toggle=\"tab\">${1:home}</a>\n		</li>\n		<li role=\"presentation\">\n			<a href=\"#${2:tab}\" aria-controls=\"${2:tab}\" role=\"tab\" data-toggle=\"tab\">${2:tab}</a>\n		</li>\n	</ul>\n\n	<!-- Tab panes -->\n	<div class=\"tab-content\">\n		<div role=\"tabpanel\" class=\"tab-pane active\" id=\"${1:home}\">...</div>\n		<div role=\"tabpanel\" class=\"tab-pane\" id=\"${2:tab}\">...</div>\n	</div>\n</div>\n" "bs3-tabs" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/web-mode/tabs/bs3-tabs.yasnippet" nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'snippets
                     '(("bs3template:starter" "\n\n<!DOCTYPE html>\n<html lang=\"en\">\n  <head>\n    <meta charset=\"utf-8\">\n    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->\n    <meta name=\"description\" content=\"\">\n    <meta name=\"author\" content=\"\">\n    <link rel=\"icon\" href=\"${Path To Your Fav Icon}/favicon.ico\">\n\n    <title>Starter Template for Bootstrap</title>\n\n    <!-- Bootstrap core CSS -->\n    <link href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css\" rel=\"stylesheet\">\n\n    <!-- Custom styles for this template -->\n    <link href=\"starter-template.css\" rel=\"stylesheet\">\n\n    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->\n    <!--[if lt IE 9]><script src=\"../../assets/js/ie8-responsive-file-warning.js\"></script><![endif]-->\n    <script src=\"../../assets/js/ie-emulation-modes-warning.js\"></script>\n\n    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->\n    <!--[if lt IE 9]>\n      <script src=\"https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js\"></script>\n      <script src=\"https://oss.maxcdn.com/respond/1.4.2/respond.min.js\"></script>\n    <![endif]-->\n  </head>\n\n  <body>\n\n    <nav class=\"navbar navbar-inverse navbar-fixed-top\">\n      <div class=\"container\">\n        <div class=\"navbar-header\">\n          <button type=\"button\" class=\"navbar-toggle collapsed\" data-toggle=\"collapse\" data-target=\"#navbar\" aria-expanded=\"false\" aria-controls=\"navbar\">\n            <span class=\"sr-only\">Toggle navigation</span>\n            <span class=\"icon-bar\"></span>\n            <span class=\"icon-bar\"></span>\n            <span class=\"icon-bar\"></span>\n          </button>\n          <a class=\"navbar-brand\" href=\"#\">Project name</a>\n        </div>\n        <div id=\"navbar\" class=\"collapse navbar-collapse\">\n          <ul class=\"nav navbar-nav\">\n            <li class=\"active\"><a href=\"#\">Home</a></li>\n            <li><a href=\"#about\">About</a></li>\n            <li><a href=\"#contact\">Contact</a></li>\n          </ul>\n        </div><!--/.nav-collapse -->\n      </div>\n    </nav>\n\n    <div class=\"container\">\n\n      <div class=\"starter-template\">\n        <h1>Bootstrap starter template</h1>\n        <p class=\"lead\">Use this document as a way to quickly start any new project.<br> All you get is this text and a mostly barebones HTML document.</p>\n      </div>\n\n    </div><!-- /.container -->\n\n\n    <!-- Bootstrap core JavaScript\n    ================================================== -->\n    <!-- Placed at the end of the document so the pages load faster -->\n    <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js\"></script>\n    <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js\"></script>\n    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->\n    <script src=\"http://getbootstrap.com/assets/js/ie10-viewport-bug-workaround.js\"></script>\n  </body>\n</html>\n\n" "bs3-template:starter" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/web-mode/template/bs3-template.starter.yasnippet" nil nil)
                       ("bs3template:html5" "\n<!DOCTYPE html>\n<html lang=\"$1\">\n	<head>\n		<meta charset=\"utf-8\">\n		<meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n		<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n		<title>${2:Title Page}</title>\n\n		<!-- Bootstrap CSS -->\n		<link href=\"${3://netdna.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css}\" rel=\"stylesheet\">\n\n		<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->\n		<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->\n		<!--[if lt IE 9]>\n			<script src=\"https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js\"></script>\n			<script src=\"https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js\"></script>\n		<![endif]-->\n	</head>\n	<body>\n		<h1 class=\"text-center\">${6:Hello World}</h1>\n\n		<!-- jQuery -->\n		<script src=\"${4://code.jquery.com/jquery.js}\"></script>\n		<!-- Bootstrap JavaScript -->\n		<script src=\"${5://netdna.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js}\"></script>\n	</body>\n</html>\n" "bs3-template:html5" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/web-mode/template/bs3-html5-template.yasnippet" nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'snippets
                     '(("bs3well" "\n<div class=\"well\">\n	$0\n</div>\n" "bs3-well" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/web-mode/wells/bs3-well.yasnippet" nil nil)
                       ("bs3well:sm" "\n<div class=\"well well-sm\">\n	$0\n</div>\n" "bs3-well:sm" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/web-mode/wells/bs3-well-sm.yasnippet" nil nil)
                       ("bs3well:lg" "\n<div class=\"well well-lg\">\n	$0\n</div>\n" "bs3-well:lg" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/web-mode/wells/bs3-well-lg.yasnippet" nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'snippets
                     '(("--" "--- # ${1:section}\n$0" "section" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/yaml-mode/section" nil nil)
                       ("list" "[$1]\n$0" "list" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/yaml-mode/list" nil nil)
                       ("entry" "${1:entry}: ${2:value}\n$0" "entry" nil nil nil "/Users/ok/Dropbox/spacemacs.d/snippets/yaml-mode/entry" nil nil)))


;;; Do not edit! File generated at Tue Sep  5 11:58:29 2017
