;;; Compiled snippets and support files for `ruby-mode'
;;; Snippet definitions:
;;;
(yas-define-snippets 'ruby-mode
                     '(("zip" "zip(${enums}) { |${row}| $0 }" "zip(...) { |...| ... }" nil
                        ("collections")
                        nil "/Users/ok/.spacemacs.d/snippets/ruby-mode/zip" nil nil)
                       ("y" ":yields: $0" ":yields: arguments (rdoc)" nil
                        ("general")
                        nil "/Users/ok/.spacemacs.d/snippets/ruby-mode/y" nil nil)
                       ("while" "while ${condition}\n  $0\nend" "while ... end" nil
                        ("control structure")
                        nil "/Users/ok/.spacemacs.d/snippets/ruby-mode/while" nil nil)
                       ("when" "when ${condition}\n  $0\nend" "when ... end" nil
                        ("control structure")
                        nil "/Users/ok/.spacemacs.d/snippets/ruby-mode/when" nil nil)
                       ("w" "attr_writer :" "attr_writer ..." nil
                        ("definitions")
                        nil "/Users/ok/.spacemacs.d/snippets/ruby-mode/w" nil nil)
                       ("upt" "upto(${n}) { |${i}|\n  $0\n}" "upto(...) { |n| ... }" nil
                        ("control structure")
                        nil "/Users/ok/.spacemacs.d/snippets/ruby-mode/upt" nil nil)
                       ("until" "until ${condition}\n  $0\nend" "until ... end" nil
                        ("control structure")
                        nil "/Users/ok/.spacemacs.d/snippets/ruby-mode/until" nil nil)
                       ("tu" "require 'test/unit'" "tu" nil nil nil "/Users/ok/.spacemacs.d/snippets/ruby-mode/tu" nil nil)
                       ("to_" "def to_s\n    \"${1:string}\"\nend\n$0" "to_" nil nil nil "/Users/ok/.spacemacs.d/snippets/ruby-mode/to_" nil nil)
                       ("tim" "times { |${n}| $0 }" "times { |n| ... }" nil
                        ("control structure")
                        nil "/Users/ok/.spacemacs.d/snippets/ruby-mode/tim" nil nil)
                       ("tc" "class TC_${1:Class} < Test::Unit::TestCase\n      $0\nend" "test class" nil nil nil "/Users/ok/.spacemacs.d/snippets/ruby-mode/test class" nil nil)
                       ("s" "#{$0}" "str" nil nil nil "/Users/ok/.spacemacs.d/snippets/ruby-mode/str" nil nil)
                       ("select" "select { |${1:element}| $0 }" "select { |...| ... }" nil
                        ("collections")
                        nil "/Users/ok/.spacemacs.d/snippets/ruby-mode/select" nil nil)
                       ("scar" "scope :${1:name}, ->(${2:arg}){ where(${3:attribute:} $2) }\n" "scar" nil nil nil "/Users/ok/.spacemacs.d/snippets/ruby-mode/scope_with_args.yasnippet" nil nil)
                       ("sc" "scope :${1:name}, ->{ where(${2:attr:} ${3:value}) }\n" "sc" nil nil nil "/Users/ok/.spacemacs.d/snippets/ruby-mode/scope.yasnippet" nil nil)
                       ("rw" "attr_accessor :" "attr_accessor ..." nil
                        ("definitions")
                        nil "/Users/ok/.spacemacs.d/snippets/ruby-mode/rw" nil nil)
                       ("stubs" "stub(:${1:value_key1} => ${2:value_return1},:${3:value_key2} => ${4:value_return2})\n\n" "rspec-stubs" nil nil nil "/Users/ok/.spacemacs.d/snippets/ruby-mode/rspec-stubs.yasnippet" nil nil)
                       ("stub" "stub(:${1:value_key}).and_return(${2:return_value})\n" "rspec-stub" nil nil nil "/Users/ok/.spacemacs.d/snippets/ruby-mode/rspec-stub.yasnippet" nil nil)
                       ("let" "let(:${1:methodname}){${2:&block}}\n" "rspec-let" nil nil nil "/Users/ok/.spacemacs.d/snippets/ruby-mode/rspec-let.yasnippet" nil nil)
                       ("its" "its(:$1) {$2}\n" "its" nil nil nil "/Users/ok/.spacemacs.d/snippets/ruby-mode/rspec-its.snippet" nil nil)
                       ("desc" "describe $1 do\n$2\nend\n" "desc" nil nil nil "/Users/ok/.spacemacs.d/snippets/ruby-mode/rspec-desc.snippet" nil nil)
                       ("context" "context '${1:describe/Class}' do\n${2:content}\nend" "rspec-context" nil nil nil "/Users/ok/.spacemacs.d/snippets/ruby-mode/rspec-context.yasnippet" nil nil)
                       ("rest" "respond_to do |format|\n	format.${1:html}${2: { $0 \\}}\nend" "rest" nil nil nil "/Users/ok/.spacemacs.d/snippets/ruby-mode/respond_to.yasnippet" nil nil)
                       ("req" "require '$0'" "require \"...\"" nil
                        ("general")
                        nil "/Users/ok/.spacemacs.d/snippets/ruby-mode/req" nil nil)
                       ("rel" "require_relative '$0'" "require_relative" nil
                        ("general")
                        nil "/Users/ok/.spacemacs.d/snippets/ruby-mode/rel" nil nil)
                       ("reject" "reject { |${1:element}| $0 }" "reject { |...| ... }" nil
                        ("collections")
                        nil "/Users/ok/.spacemacs.d/snippets/ruby-mode/reject" nil nil)
                       ("red" "reduce(${1:0}) { |${2:accumulator}, ${3:element}| $0 }\n" "reduce(...) { |...| ... }" nil
                        ("collections")
                        nil "/Users/ok/.spacemacs.d/snippets/ruby-mode/red" nil nil)
                       ("rb" "#!/usr/bin/ruby -wU\n" "/usr/bin/ruby -wU" nil
                        ("general")
                        nil "/Users/ok/.spacemacs.d/snippets/ruby-mode/rb" nil nil)
                       ("r" "attr_reader :" "attr_reader ..." nil
                        ("definitions")
                        nil "/Users/ok/.spacemacs.d/snippets/ruby-mode/r" nil nil)
                       ("mod" "module ${1:`(let ((fn (capitalize (file-name-nondirectory\n                                 (file-name-sans-extension\n         (or (buffer-file-name)\n             (buffer-name (current-buffer))))))))\n           (while (string-match \"_\" fn)\n             (setq fn (replace-match \"\" nil nil fn)))\n           fn)`}\n  $0\nend" "module ... end" nil nil nil "/Users/ok/.spacemacs.d/snippets/ruby-mode/mod" nil nil)
                       ("mm" "def method_missing(method, *args)\n  $0\nend" "def method_missing ... end" nil
                        ("definitions")
                        nil "/Users/ok/.spacemacs.d/snippets/ruby-mode/mm" nil nil)
                       ("map" "map { |${e}| $0 }" "map { |...| ... }" nil
                        ("collections")
                        nil "/Users/ok/.spacemacs.d/snippets/ruby-mode/map" nil nil)
                       ("logw" "logger.warn { \"${1:message}\" }$0" "logw" nil nil nil "/Users/ok/.spacemacs.d/snippets/ruby-mode/logger_warn.yasnippet" nil nil)
                       ("logi" "logger.info { \"${1:message}\" }$0" "logi" nil nil nil "/Users/ok/.spacemacs.d/snippets/ruby-mode/logger_info.yasnippet" nil nil)
                       ("logf" "logger.fatal { \"${1:message}\" }$0" "logf" nil nil nil "/Users/ok/.spacemacs.d/snippets/ruby-mode/logger_fatal.yasnippet" nil nil)
                       ("loge" "logger.error { \"${1:message}\" }$0" "loge" nil nil nil "/Users/ok/.spacemacs.d/snippets/ruby-mode/logger_error.yasnippet" nil nil)
                       ("logd" "logger.debug { \"${1:message}\" }$0" "logd" nil nil nil "/Users/ok/.spacemacs.d/snippets/ruby-mode/logger_debug.yasnippet" nil nil)
                       ("lim" "<%= link_to ${1:model}.${2:name}, ${3:${4:$1}_path(${14:$1})} %>" "lim" nil nil nil "/Users/ok/.spacemacs.d/snippets/ruby-mode/link_to-model.yasnippet" nil nil)
                       ("lipp" "<%= link_to ${1:\"${2:link text...}\"}, ${3:${4:model}s_path} %>" "lipp" nil nil nil "/Users/ok/.spacemacs.d/snippets/ruby-mode/link_to-(path-plural).yasnippet" nil nil)
                       ("lip" "<%= link_to ${1:\"${2:link text...}\"}, ${3:${12:model}_path(${13:@}${14:$12})} %>" "lip" nil nil nil "/Users/ok/.spacemacs.d/snippets/ruby-mode/link_to-(path).yasnippet" nil nil)
                       ("linpp" "<%= link_to ${1:\"${2:link text...}\"}, ${3:${10:parent}_${11:child}_path(${12:@}${13:$10})} %>" "linpp" nil nil nil "/Users/ok/.spacemacs.d/snippets/ruby-mode/link_to-(nested-path-plural).yasnippet" nil nil)
                       ("linp" "<%= link_to ${1:\"${2:link text...}\"}, ${3:${12:parent}_${13:child}_path(${14:@}${15:$12}, ${16:@}${17:$13})} %>" "linp" nil nil nil "/Users/ok/.spacemacs.d/snippets/ruby-mode/link_to-(nested-path).yasnippet" nil nil)
                       ("licai" "<%= link_to \"${1:link text...}\", controller: \"${2:items}\", action: \"${3:edit}\", id: ${4:@item} %>" "licai" nil nil nil "/Users/ok/.spacemacs.d/snippets/ruby-mode/licai.yasnippet" nil nil)
                       ("lica" "<%= link_to \"${1:link text...}\", controller: \"${2:items}\", action: \"${3:index}\" %>" "lica" nil nil nil "/Users/ok/.spacemacs.d/snippets/ruby-mode/lica.yasnippet" nil nil)
                       ("lic" "<%= link_to \"${1:link text...}\", controller: \"${2:items}\" %>" "lic" nil nil nil "/Users/ok/.spacemacs.d/snippets/ruby-mode/lic.yasnippet" nil nil)
                       ("liai" "<%= link_to \"${1:link text...}\", action: \"${2:edit}\", id: ${3:@item} %>" "liai" nil nil nil "/Users/ok/.spacemacs.d/snippets/ruby-mode/liai.yasnippet" nil nil)
                       ("lia" "<%= link_to \"${1:link text...}\", action: \"${2:index}\" %>" "lia" nil nil nil "/Users/ok/.spacemacs.d/snippets/ruby-mode/lia.yasnippet" nil nil)
                       ("inject" "inject(${1:0}) { |${2:injection}, ${3:element}| $0 }" "inject(...) { |...| ... }" nil
                        ("collections")
                        nil "/Users/ok/.spacemacs.d/snippets/ruby-mode/inject" nil nil)
                       ("defi" "def initialize(${1:attribute})\n  @$1 = $1\nend" "defi" nil nil nil "/Users/ok/.spacemacs.d/snippets/ruby-mode/initializer-method.yasnippet" nil nil)
                       ("init" "def initialize(${1:args})\n    $0\nend" "init" nil nil nil "/Users/ok/.spacemacs.d/snippets/ruby-mode/init" nil nil)
                       ("inc" "include ${1:Module}\n$0\n" "include Module" nil
                        ("general")
                        nil "/Users/ok/.spacemacs.d/snippets/ruby-mode/inc" nil nil)
                       ("ist" "<%= image_submit_tag(\"${1:agree.png}\"${2:${3:, id: \"${4:${1/^(\\w+)(\\.\\w*)?$/$1/}}\"}${5:, name: \"${6:${1/^(\\w+)(\\.\\w*)?$/$1/}}\"}${7:, class: \"${8:${1/^(\\w+)(\\.\\w*)?$/$1/}-button}\"}${9:, disabled: ${10:false}}}) %>" "ist" nil nil nil "/Users/ok/.spacemacs.d/snippets/ruby-mode/image_submit_tag.yasnippet" nil nil)
                       ("ife" "if ${1:condition}\n  $2\nelse\n  $3\nend" "if ... else ... end" nil
                        ("control structure")
                        nil "/Users/ok/.spacemacs.d/snippets/ruby-mode/ife" nil nil)
                       ("if" "if ${1:condition}\n  $0\nend" "if ... end" nil
                        ("control structure")
                        nil "/Users/ok/.spacemacs.d/snippets/ruby-mode/if" nil nil)
                       ("hot" "has_one :${1:object}, through: :${2:join_association}${3:, source: :${4:$2_table_foreign_key_to_$1_table}}" "hot" nil nil nil "/Users/ok/.spacemacs.d/snippets/ruby-mode/has_one_through-(hot).yasnippet" nil nil)
                       ("ho" "has_one :${1:object}${2:, class_name: \"${3:${1/[[:alpha:]]+|(_)/(?1::\\u$0)/g}}\", foreign_key: \"${4:$1_id}\"}" "ho" nil nil nil "/Users/ok/.spacemacs.d/snippets/ruby-mode/has_one-(ho).yasnippet" nil nil)
                       ("hmd" "has_many :${1:object}s${2:, class_name: \"$1\", foreign_key: \"${4:reference}_id\"}, dependent: :destroy$0" "hmd" nil nil nil "/Users/ok/.spacemacs.d/snippets/ruby-mode/has_many-dependent-=-destroy.yasnippet" nil nil)
                       ("hmt" "has_many :${1:objects}, through: :${2:join_association}${3:, source: :${4:$2_table_foreign_key_to_$1_table}}" "hmt" nil nil nil "/Users/ok/.spacemacs.d/snippets/ruby-mode/has_many-(through).yasnippet" nil nil)
                       ("hm" "has_many :${1:object}s${2:, class_name: \"$1\", foreign_key: \"${4:reference}_id\"}" "hm" nil nil nil "/Users/ok/.spacemacs.d/snippets/ruby-mode/has_many-(hm).yasnippet" nil nil)
                       ("habtm" "has_and_belongs_to_many :${1:object}${2:, join_table: \"${3:table_name}\", foreign_key: \"${4:$1_id}\"}" "habtm" nil nil nil "/Users/ok/.spacemacs.d/snippets/ruby-mode/has_and_belongs_to_many-(habtm).yasnippet" nil nil)
                       ("form" "require 'formula'\n\nclass ${1:Name} <Formula\n  url '${2:url}'\n  homepage '${3:home}'\n  md5 '${4:md5}'\n\n  def install\n    ${5:system \"./configure\"}\n    $0\n  end\nend\n" "formula" nil nil nil "/Users/ok/.spacemacs.d/snippets/ruby-mode/formula" nil nil)
                       ("ff" "<%= form_for @${1:model} do |f| %>\n  $0\nend" "ff" nil nil nil "/Users/ok/.spacemacs.d/snippets/ruby-mode/form_for.yasnippet" nil nil)
                       ("ffe" "<%= error_messages_for :${1:model} %>\n\n<% form_for @${2:$1} do |f| -%>\n  $0\nend" "ffe" nil nil nil "/Users/ok/.spacemacs.d/snippets/ruby-mode/form_for-with-errors.yasnippet" nil nil)
                       ("f." "<%= f.text_field :${1:attribute} %>" "f." nil nil nil "/Users/ok/.spacemacs.d/snippets/ruby-mode/form_for-text_field.yasnippet" nil nil)
                       ("fftf" "<%= f.text_field :${1:attribute} %>" "fftf" nil nil nil "/Users/ok/.spacemacs.d/snippets/ruby-mode/form_for-text_field-2.yasnippet" nil nil)
                       ("f." "<%= f.text_area :${1:attribute} %>" "f." nil nil nil "/Users/ok/.spacemacs.d/snippets/ruby-mode/form_for-text_area.yasnippet" nil nil)
                       ("ffta" "<%= f.text_area :${1:attribute} %>" "ffta" nil nil nil "/Users/ok/.spacemacs.d/snippets/ruby-mode/form_for-text_area-2.yasnippet" nil nil)
                       ("f." "<%= f.submit \"${1:Submit}\"${2:, disable_with: '${3:$1ing...}'} %>" "f." nil nil nil "/Users/ok/.spacemacs.d/snippets/ruby-mode/form_for-submit.yasnippet" nil nil)
                       ("ffs" "<%= f.submit \"${1:Submit}\"${2:, disable_with: '${3:$1ing...}'} %>" "ffs" nil nil nil "/Users/ok/.spacemacs.d/snippets/ruby-mode/form_for-submit-2.yasnippet" nil nil)
                       ("f." "<%= f.radio_box :${1:attribute}, :${2:tag_value} %>" "f." nil nil nil "/Users/ok/.spacemacs.d/snippets/ruby-mode/form_for-radio_box.yasnippet" nil nil)
                       ("ffrb" "<%= f.radio_box :${1:attribute}, :${2:tag_value} %>" "ffrb" nil nil nil "/Users/ok/.spacemacs.d/snippets/ruby-mode/form_for-radio_box-2.yasnippet" nil nil)
                       ("f." "<%= f.password_field :${1:attribute} %>" "f." nil nil nil "/Users/ok/.spacemacs.d/snippets/ruby-mode/form_for-password_field.yasnippet" nil nil)
                       ("ffpf" "<%= f.password_field :${1:attribute} %>" "ffpf" nil nil nil "/Users/ok/.spacemacs.d/snippets/ruby-mode/form_for-password_field-2.yasnippet" nil nil)
                       ("f." "<%= f.label :${1:attribute}${2:, \"${3:${1/[[:alpha:]]+|(_)/(?1: :\\u$0)/g}}\"} %>" "f." nil nil nil "/Users/ok/.spacemacs.d/snippets/ruby-mode/form_for-label.yasnippet" nil nil)
                       ("ffl" "<%= f.label :${1:attribute}${2:, \"${3:${1/[[:alpha:]]+|(_)/(?1: :\\u$0)/g}}\"} %>" "ffl" nil nil nil "/Users/ok/.spacemacs.d/snippets/ruby-mode/form_for-label-2.yasnippet" nil nil)
                       ("f." "<%= f.hidden_field :${1:attribute} %>" "f." nil nil nil "/Users/ok/.spacemacs.d/snippets/ruby-mode/form_for-hidden_field.yasnippet" nil nil)
                       ("ffhf" "<%= f.hidden_field :${1:attribute} %>" "ffhf" nil nil nil "/Users/ok/.spacemacs.d/snippets/ruby-mode/form_for-hidden_field-2.yasnippet" nil nil)
                       ("f." "<%= f.file_field :${1:attribute} %>" "f." nil nil nil "/Users/ok/.spacemacs.d/snippets/ruby-mode/form_for-file_field.yasnippet" nil nil)
                       ("ffff" "<%= f.file_field :${1:attribute} %>" "ffff" nil nil nil "/Users/ok/.spacemacs.d/snippets/ruby-mode/form_for-file_field-2.yasnippet" nil nil)
                       ("f." "<%= f.check_box :${1:attribute} %>" "f." nil nil nil "/Users/ok/.spacemacs.d/snippets/ruby-mode/form_for-checkbox.yasnippet" nil nil)
                       ("ffcb" "<%= f.check_box :${1:attribute} %>" "ffcb" nil nil nil "/Users/ok/.spacemacs.d/snippets/ruby-mode/form_for-check_box.yasnippet" nil nil)
                       ("forin" "for ${1:element} in ${2:collection}\n  $0\nend" "for ... in ...; ... end" nil
                        ("control structure")
                        nil "/Users/ok/.spacemacs.d/snippets/ruby-mode/forin" nil nil)
                       ("for" "<% if !${1:list}.blank? %>\n  <% for ${2:item} in $1 %>\n    $3\n  <% end %>\n<% else %>\n  $4\n<% end %>\n" "for" nil nil nil "/Users/ok/.spacemacs.d/snippets/ruby-mode/for-loop-erb.yasnippet" nil nil)
                       ("for" "for ${1:el} in ${2:collection}\n    $0\nend" "for" nil nil nil "/Users/ok/.spacemacs.d/snippets/ruby-mode/for" nil nil)
                       ("fp" "find(params[:${1:id}])" "fp" nil nil nil "/Users/ok/.spacemacs.d/snippets/ruby-mode/find_params_id_(fp).yasnippet" nil nil)
                       ("fini" "find(${1:id})" "fini" nil nil nil "/Users/ok/.spacemacs.d/snippets/ruby-mode/find(id).yasnippet" nil nil)
                       ("end" "<% end %>" "end" nil nil nil "/Users/ok/.spacemacs.d/snippets/ruby-mode/end.yasnippet" nil nil)
                       ("eawi" "each_with_index { |${e}, ${i}| $0 }" "each_with_index { |e, i| ... }" nil
                        ("collections")
                        nil "/Users/ok/.spacemacs.d/snippets/ruby-mode/eawi" nil nil)
                       ("eav" "each_value { |${val}| $0 }" "each_value { |val| ... }" nil
                        ("collections")
                        nil "/Users/ok/.spacemacs.d/snippets/ruby-mode/eav" nil nil)
                       ("eai" "each_index { |${i}| $0 }" "each_index { |i| ... }" nil
                        ("collections")
                        nil "/Users/ok/.spacemacs.d/snippets/ruby-mode/eai" nil nil)
                       ("eac" "each_cons(${1:2}) { |${group}| $0 }" "each_cons(...) { |...| ... }" nil
                        ("collections")
                        nil "/Users/ok/.spacemacs.d/snippets/ruby-mode/eac" nil nil)
                       ("ea" "each { |${e}| $0 }" "each { |...| ... }" nil
                        ("collections")
                        nil "/Users/ok/.spacemacs.d/snippets/ruby-mode/ea" nil nil)
                       ("dow" "downto(${0}) { |${n}|\n  $0\n}" "downto(...) { |n| ... }" nil
                        ("control structure")
                        nil "/Users/ok/.spacemacs.d/snippets/ruby-mode/dow" nil nil)
                       ("det" "detect { |${e}| $0 }" "detect { |...| ... }" nil
                        ("collections")
                        nil "/Users/ok/.spacemacs.d/snippets/ruby-mode/det" nil nil)
                       ("deli" "delete_if { |${e}| $0 }" "delete_if { |...| ... }" nil
                        ("collections")
                        nil "/Users/ok/.spacemacs.d/snippets/ruby-mode/deli" nil nil)
                       ("deftp" "def test_should_post_${1:action}\n	${3:@$2 = ${4:$2s}(:${5:fixture_name})\n	}post :$1${6:, id: @$2.to_param}, ${2:model}: { $0 }\n	assert_response :redirect\n\nend" "deftp" nil nil nil "/Users/ok/.spacemacs.d/snippets/ruby-mode/def-post-request.yasnippet" nil nil)
                       ("deftg" "def test_should_get_${1:action}\n	${2:@${3:model} = ${4:$3s}(:${5:fixture_name})\n	}get :$1${6:, id: @$3.to_param}\n	assert_response :success\n	$0\nend" "deftg" nil nil nil "/Users/ok/.spacemacs.d/snippets/ruby-mode/def-get-request.yasnippet" nil nil)
                       ("desc" "describe $1 do\n$2\nend" "desc" nil nil nil "/Users/ok/.spacemacs.d/snippets/ruby-mode/def-create-resource.yasnippet" nil nil)
                       ("def" "def ${1:method}${2:(${3:args})}\n    $0\nend" "def ... end" nil nil nil "/Users/ok/.spacemacs.d/snippets/ruby-mode/def" nil nil)
                       ("dee" "Marshal.load(Marshal.dump($0))" "deep_copy(...)" nil
                        ("general")
                        nil "/Users/ok/.spacemacs.d/snippets/ruby-mode/dee" nil nil)
                       ("crud" "\n  def index\n    @$1 = ${1/(.+)/\\u$1/g}.scoped\n  end\n\n  def show\n    @$1 = ${1/(.+)/\\u$1/g}.find(params[:id])\n  end\n\n  def create\n    @$1 = ${1/(.+)/\\u$1/g}.new(params[:$1])\n  end\n\n  def update\n    @$1 = ${1/(.+)/\\u$1/g}.find(params[:id])\n  end\n\n  def edit\n    @$1 = ${1/(.+)/\\u$1/g}.find(params[:id])\n  end\n\n  def destroy\n    $1 = ${1/(.+)/\\u$1/g}.find(params[:id])\n  end" "crud" nil nil nil "/Users/ok/.spacemacs.d/snippets/ruby-mode/crud-actions.yasnippet" nil nil)
                       ("collect" "collect { |${e}| $0 }" "collect { |...| ... }" nil
                        ("collections")
                        nil "/Users/ok/.spacemacs.d/snippets/ruby-mode/collect" nil nil)
                       ("cls" "class ${1:`(let ((fn (capitalize (file-name-nondirectory\n                                 (file-name-sans-extension\n				 (or (buffer-file-name)\n				     (buffer-name (current-buffer))))))))\n             (replace-regexp-in-string \"_\" \"\" fn t t))`}\n  $0\nend\n" "class ... end" nil
                        ("definitions")
                        nil "/Users/ok/.spacemacs.d/snippets/ruby-mode/cls" nil nil)
                       ("class" "class ${1:${TM_FILENAME/(?:\\A|_)([A-Za-z0-9]+)(?:\\.rb)?/(?2::\\u$1)/g}}\n$0\nend" "class" nil nil nil "/Users/ok/.spacemacs.d/snippets/ruby-mode/class-end.yasnippet" nil nil)
                       ("cla" "class << ${self}\n  $0\nend" "class << self ... end" nil
                        ("definitions")
                        nil "/Users/ok/.spacemacs.d/snippets/ruby-mode/cla" nil nil)
                       ("crw" "cattr_accessor :${0:attr_names}" "crw" nil nil nil "/Users/ok/.spacemacs.d/snippets/ruby-mode/cattr_accessor.yasnippet" nil nil)
                       ("case" "case ${1:object}\nwhen ${2:condition}\n  $0\nend" "case ... end" nil
                        ("general")
                        nil "/Users/ok/.spacemacs.d/snippets/ruby-mode/case" nil nil)
                       ("bb" "\nbyebug\n" "bb" nil nil nil "/Users/ok/.spacemacs.d/snippets/ruby-mode/byebug.yasnippet" nil nil)
                       ("bm" "Benchmark.bmbm(${1:10}) do |x|\n  $0\nend" "Benchmark.bmbm(...) do ... end" nil
                        ("general")
                        nil "/Users/ok/.spacemacs.d/snippets/ruby-mode/bm" nil nil)
                       ("bp" "\nbinding.pry\n" "bp" nil nil nil "/Users/ok/.spacemacs.d/snippets/ruby-mode/binding_pry.yasnippet" nil nil)
                       ("bench" "require \"benchmark\"\n\nTESTS = ${1:1_000}\nBenchmark.bmbm do |x|\n  x.report(\"${2:var}\") {}\nend\n" "bench" nil nil nil "/Users/ok/.spacemacs.d/snippets/ruby-mode/bench" nil nil)
                       ("@" "@${1:attr} = $0" "attribute" nil nil nil "/Users/ok/.spacemacs.d/snippets/ruby-mode/attribute" nil nil)
                       ("app" "if __FILE__ == $PROGRAM_NAME\n  $0\nend" "if __FILE__ == $PROGRAM_NAME ... end" nil
                        ("general")
                        nil "/Users/ok/.spacemacs.d/snippets/ruby-mode/app" nil nil)
                       ("any" "any? { |${e}| $0 }" "any? { |...| ... }" nil
                        ("collections")
                        nil "/Users/ok/.spacemacs.d/snippets/ruby-mode/any" nil nil)
                       ("am" "alias_method :${new_name}, :${old_name}" "alias_method new, old" nil
                        ("definitions")
                        nil "/Users/ok/.spacemacs.d/snippets/ruby-mode/am" nil nil)
                       ("all" "all? { |${e}| $0 }" "all? { |...| ... }" nil
                        ("collections")
                        nil "/Users/ok/.spacemacs.d/snippets/ruby-mode/all" nil nil)
                       ("$L" "\\$LABEL" "$L" nil nil nil "/Users/ok/.spacemacs.d/snippets/ruby-mode/LABEL.yasnippet" nil nil)
                       ("$" "$${1:GLOBAL} = $0" "GLOB" nil nil nil "/Users/ok/.spacemacs.d/snippets/ruby-mode/GLOB" nil nil)
                       ("Enum" "include Enumerable\n\ndef each${1:(&block)}\n  $0\nend\n" "include Enumerable" nil
                        ("collections")
                        nil "/Users/ok/.spacemacs.d/snippets/ruby-mode/Enum" nil nil)
                       ("Comp" "include Comparable\n\ndef <=> other\n  $0\nend" "include Comparable; def <=> ... end" nil
                        ("definitions")
                        nil "/Users/ok/.spacemacs.d/snippets/ruby-mode/Comp" nil nil)
                       ("=b" "=begin rdoc\n  $0\n=end" "=begin rdoc ... =end" nil
                        ("general")
                        nil "/Users/ok/.spacemacs.d/snippets/ruby-mode/=b" nil nil)
                       ("#" "# => " "# =>" nil
                        ("general")
                        nil "/Users/ok/.spacemacs.d/snippets/ruby-mode/#" nil nil)))


;;; Do not edit! File generated at Tue Aug 30 20:43:40 2016
