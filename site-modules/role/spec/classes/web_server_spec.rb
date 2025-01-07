# Copyright 2025. Puppet, Inc., a Perforce company.  
#
# frozen_string_literal: true

require 'spec_helper'

describe 'role::web_server' do
  on_supported_os.each do |os, os_facts|
    context "on #{os}" do
      let(:facts) { os_facts }

      it { is_expected.to compile.with_all_deps }
      it { is_expected.to contain_class('role::web_server') }
      it { is_expected.to contain_class('profile::base') }
      it { is_expected.to contain_class('profile::apache_server') }
    end
  end
end
