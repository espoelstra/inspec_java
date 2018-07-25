# encoding: utf-8
# copyright: 2016, awim / mtaqwim
# license: All rights reserved

java_path = '/usr/lib/jvm/default-java'

title 'which(UNIX)/where(Windows) java installed'
control 'java-2.0' do
  impact 1.0
  title 'run java from specific path'
  desc 'run java from specific path'

  describe java_info(java_path) do
    it{ should exist }
    its(:version){ should cmp >'1.7'}
    its(:version){ should cmp >='1.8'}
    its(:version){ should cmp <'1.9'}
  end
end
