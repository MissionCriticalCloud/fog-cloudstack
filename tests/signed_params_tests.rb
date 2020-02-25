# encoding: utf-8

Shindo.tests('Cosmic | escape', ['cosmic']) do
  returns( Fog::Cosmic.escape( "'Stöp!' said Fred_-~." ) ) { "%27St%C3%B6p%21%27%20said%20Fred_-%7E." }
end

Shindo.tests('Cosmic | signed_params', ['cosmic']) do
  returns( Fog::Cosmic.signed_params( 'abcdefg', 'account' => 'Lorem Ipsum', 'domainid' => 42, 'q' => 'keywords' ) ) { "V2CxRU4zQQtox1DZsH/66GDdzhg=" }
  returns( Fog::Cosmic.signed_params( 'abcdefg', 'account' => 'Lorem Ipsum', 'domainid' => '42', 'q' => 'keywords' ) ) { "V2CxRU4zQQtox1DZsH/66GDdzhg=" }
  returns( Fog::Cosmic.signed_params( 'abcdefg', 'account' => 'Lorem Ipsum', 'domainid' => 42, 'q' => nil ) ) { "5bsDirm5pPgVoreQ6vquKRN+4HI=" }
  returns( Fog::Cosmic.signed_params( 'abcdefg', 'account' => 'Lorem Ipsum', 'domainid' => 42, 'q' => '' ) ) { "5bsDirm5pPgVoreQ6vquKRN+4HI=" }
end
