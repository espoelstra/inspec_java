# encoding: utf-8
# copyright: 2016, awim / mtaqwim
# license: All rights reserved

title 'which(UNIX)/where(Windows) java installed'
control 'java-1.0' do
  impact 0.3
  title 'identify java in system'
  desc 'identify java in PATH system'

  describe java_info do
    it{ should exist }
    its(:version){ should cmp >'1.7'}
    its(:version){ should cmp >='1.8'}
    its(:version){ should cmp <'1.9'}
  end
end
