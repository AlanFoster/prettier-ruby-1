# frozen_string_literal: true

# rubocop:disable Lint/UnneededCopDisableDirective
# rubocop:disable Lint/Void, Layout/IndentHeredoc, Lint/UselessAssignment
# rubocop:disable Layout/SpaceInsideStringInterpolation
# rubocop:disable Lint/LiteralInInterpolation, Layout/ClosingHeredocIndentation
# rubocop:disable Layout/ClosingParenthesisIndentation
# rubocop:disable Style/StringLiteralsInInterpolation
# rubocop:disable Style/UnneededInterpolation
# rubocop:disable Lint/InterpolationCheck

?a # these are CHARs
?\C-a
?\M-a
?\M-\C-a

''

'abc'

"abc's"

"abc"

"abc\n"

'\n'
"\n"
'\x0'
"\x0"
'#{"\n"}'
"#{"\n"}"
"#{'\n'}"
"#{'\n'}#{"\n"}"
"#{"\n#{'\n'}#{"\n"}\n"}#{'\n'}"

"\M-\C-a"

"abc #{super} abc"

"#{abc} abc"

"{\"abc\": \"foo\nbar\"}"

# rubocop:disable Style/Semicolon
"abc #{foo; bar} abc"
# rubocop:enable Style/Semicolon

"abc #{de} fghi #{jkl} mno"

'abc' \
  'def' \
  'ghi'

"abc #{"abc #{abc} abc"} abc"

{ 'a' => 1 }

{ "a #{a}" => 1 }

:"abc#{abc}abc"

%x[abc]

%x[super_super_super_super_super_super_super_super_super_super_super_super_s_long]

<<-HERE
This is a straight heredoc!
HERE

<<-HERE
This is another straight heredoc, this time with interpolation!
#{interpolation}
So interpolated right now.
HERE

abc = <<-HERE
This is a straight heredoc on an assign!
HERE

<<-PARENT
This is a straight heredoc!
#{
<<-CHILD
Why do I do this
CHILD
}
PARENT

<<~HERE
  This is a squiggly heredoc!
HERE

<<~HERE
    This is another squiggly heredoc, this time with interpolation!
    #{interpolation}
    So interpolated right now.
HERE

abc = <<~HERE
  This is a squiggly heredoc on an assign!
HERE

<<~PARENT
  This is a squiggly heredoc!
  #{
    <<~CHILD
      Why do I do this
    CHILD
  }
PARENT

<<-GRAND
#{'interpolated'}
<<~PARENT
  #{'more interpolated'}
    <<-CHILD
      #{'what is going on'}
    CHILD
  #{'more interpolated'}
PARENT
#{'interpolated'}
GRAND

'abc "abc" abc'

# rubocop:enable Lint/Void, Layout/IndentHeredoc, Lint/UselessAssignment
# rubocop:enable Layout/SpaceInsideStringInterpolation
# rubocop:enable Lint/LiteralInInterpolation, Layout/ClosingHeredocIndentation
# rubocop:enable Layout/ClosingParenthesisIndentation
# rubocop:enable Style/StringLiteralsInInterpolation
# rubocop:enable Lint/UnneededCopDisableDirective
# rubocop:enable Style/UnneededInterpolation
# rubocop:enable Lint/InterpolationCheck
