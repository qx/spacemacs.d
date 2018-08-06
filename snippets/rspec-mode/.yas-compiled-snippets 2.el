;;; Compiled snippets and support files for `rspec-mode'
;;; Snippet definitions:
;;;
(yas-define-snippets 'rspec-mode
                     '(("subject" "subject {${1:object_create}}" "subject" nil nil nil "/Users/ok/.spacemacs.d/snippets/rspec-mode/subject.yasnippet" nil nil)
                       ("specify" "specify { $0 }" "specify" nil nil nil "/Users/ok/.spacemacs.d/snippets/rspec-mode/specify.yasnippet" nil nil)
                       ("sce" "scenario '${1:does something}' do\n  $0\nend" "sce" nil nil nil "/Users/ok/.spacemacs.d/snippets/rspec-mode/scenario.yasnippet" nil nil)
                       ("itd" "it '${1:describe}' do\n${2:content}\nend" "rspec-it-do" nil nil nil "/Users/ok/.spacemacs.d/snippets/rspec-mode/rspec-it-do" nil nil)
                       ("pending" "pending${1: '${2:reason}'}" "pending" nil nil nil "/Users/ok/.spacemacs.d/snippets/rspec-mode/pending.yasnippet" nil nil)
                       ("letb" "let!(:${1:object}) { $0 }" "letb" nil nil nil "/Users/ok/.spacemacs.d/snippets/rspec-mode/let_bang-memoized_helper-(let).yasnippet" nil nil)
                       ("let" "let(:${1:object}) { $0 }" "let" nil nil nil "/Users/ok/.spacemacs.d/snippets/rspec-mode/let-memoized_helper-(let).yasnippet" nil nil)
                       ("itsbl" "it_should_behave_like ${2:'$1'}$0" "itsbl" nil nil nil "/Users/ok/.spacemacs.d/snippets/rspec-mode/it-should-behave-like.yasnippet" nil nil)
                       ("iti" "it { ${2:should ${1:matcher}} }$0" "iti" nil nil nil "/Users/ok/.spacemacs.d/snippets/rspec-mode/it-one-line.yasnippet" nil nil)
                       ("itie" "it { ${2:is_expected.to ${1:matcher}} }$0" "itie" nil nil nil "/Users/ok/.spacemacs.d/snippets/rspec-mode/it-is-expected.yasnippet" nil nil)
                       ("it" "it '${1:does something}' do\n	$0\nend" "it" nil nil nil "/Users/ok/.spacemacs.d/snippets/rspec-mode/it-block.yasnippet" nil nil)
                       ("idou" "instance_double('${1:ClassName}'${2:, ${3:method: nil}}) $0" "idou" nil nil nil "/Users/ok/.spacemacs.d/snippets/rspec-mode/instance_double.yasnippet" nil nil)
                       ("fea" "feature '${1:description}' do\n  $0\nend" "fea" nil nil nil "/Users/ok/.spacemacs.d/snippets/rspec-mode/feature.yasnippet" nil nil)
                       ("exprec" "expect(${1:collaborator}).to receive(:${2:message})${3:.with(${4:args})}$0" "exprec" nil nil nil "/Users/ok/.spacemacs.d/snippets/rspec-mode/expect-to-receive.yasnippet" nil nil)
                       ("expraise" "expect { ${1:action} }.to raise_error(${2:Error})$0" "expraise" nil nil nil "/Users/ok/.spacemacs.d/snippets/rspec-mode/expect-to-raise.yasnippet" nil nil)
                       ("expmatch" "expect(${1:subject}).to match(/${2:regexp}/)$0" "expmatch" nil nil nil "/Users/ok/.spacemacs.d/snippets/rspec-mode/expect-to-match.yasnippet" nil nil)
                       ("expinclude" "expect(${1:subject}).to include(${2:element})$0" "expinclude" nil nil nil "/Users/ok/.spacemacs.d/snippets/rspec-mode/expect-to-include.yasnippet" nil nil)
                       ("exprec" "expect(${1:collaborator}).to have_received(:${2:message})${3:.with(${4:args})}$0" "exprec" nil nil nil "/Users/ok/.spacemacs.d/snippets/rspec-mode/expect-to-have_received.yasnippet" nil nil)
                       ("exphave" "expect(${1:subject}).to have(${2:num}).${3:items}$0" "exphave" nil nil nil "/Users/ok/.spacemacs.d/snippets/rspec-mode/expect-to-have.yasnippet" nil nil)
                       ("expexist" "expect(${1:subject}).to exist$0" "expexist" nil nil nil "/Users/ok/.spacemacs.d/snippets/rspec-mode/expect-to-exist.yasnippet" nil nil)
                       ("expeql" "expect(${1:subject}).to eql(${2:value})$0" "expeql" nil nil nil "/Users/ok/.spacemacs.d/snippets/rspec-mode/expect-to-eql.yasnippet" nil nil)
                       ("expeq" "expect(${1:subject}).to eq(${2:value})$0" "expeq" nil nil nil "/Users/ok/.spacemacs.d/snippets/rspec-mode/expect-to-eq.yasnippet" nil nil)
                       ("expdo" "expect do\n  ${1:action}\nend.to ${2:matcher}$0\n" "expdo" nil nil nil "/Users/ok/.spacemacs.d/snippets/rspec-mode/expect-to-block.yasnippet" nil nil)
                       ("expbe" "expect(${1:subject}).to be$0" "expbe" nil nil nil "/Users/ok/.spacemacs.d/snippets/rspec-mode/expect-to-be.yasnippet" nil nil)
                       ("expbn" "expect(${1:subject}).to be_nil$0" "expbn" nil nil nil "/Users/ok/.spacemacs.d/snippets/rspec-mode/expect-to-be-nil.yasnippet" nil nil)
                       ("expbc" "expect(${1:subject}).to be_close(${2:result}, ${3:tolerance})$0" "expbc" nil nil nil "/Users/ok/.spacemacs.d/snippets/rspec-mode/expect-to-be-close.yasnippet" nil nil)
                       ("exp" "expect(${1:subject}).to ${2:matcher}$0" "exp" nil nil nil "/Users/ok/.spacemacs.d/snippets/rspec-mode/expect-one-line.yasnippet" nil nil)
                       ("expto" "expect {${2: ${1:expression} }}.to ${3:matcher}" "expto" nil nil nil "/Users/ok/.spacemacs.d/snippets/rspec-mode/expect-block-to.yasnippet" nil nil)
                       ("descl" "described_class" "descl" nil nil nil "/Users/ok/.spacemacs.d/snippets/rspec-mode/described_class.yasnippet" nil nil)
                       ("descln" "described_class.new${1:($2)}" "descln" nil nil nil "/Users/ok/.spacemacs.d/snippets/rspec-mode/described_class-new.yasnippet" nil nil)
                       ("des" "describe '${1:description}' do\n  $0\nend" "des" nil nil nil "/Users/ok/.spacemacs.d/snippets/rspec-mode/describe-block.yasnippet" nil nil)
                       ("con" "context '${1:description}' do\n	$0\nend" "con" nil nil nil "/Users/ok/.spacemacs.d/snippets/rspec-mode/context.yasnippet" nil nil)
                       ("befa" "before(:all) do\n  $0\nend" "befa" nil nil nil "/Users/ok/.spacemacs.d/snippets/rspec-mode/before_all.yasnippet" nil nil)
                       ("allrec" "allow(${1:collaborator}).to receive(:${2:message})${3:.with(${4:args})}${5:.and_return(${6:result})}$0" "allrec" nil nil nil "/Users/ok/.spacemacs.d/snippets/rspec-mode/allow-to-receive.yasnippet" nil nil)
                       ("afta" "after(:all) do\n  $0\nend" "afta" nil nil nil "/Users/ok/.spacemacs.d/snippets/rspec-mode/after_all.yasnippet" nil nil)))


;;; Do not edit! File generated at Sun Sep 18 15:46:41 2016