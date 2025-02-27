# frozen_string_literal: true

require 'spec_helper'

describe 'profile::gitea_server' do
  on_supported_os.each do |os, os_facts|
    context "on #{os}" do
      let(:facts) { os_facts }

      it { is_expected.to compile.with_all_deps }
      it { is_expected.to contain_class('gitea')}

      it do
        is_expected.to create_user('git').with(
          ensure: 'present',
          home: '/home/git',
        )
      end
      
    end
  end
end
