# Copyright 2025. Puppet, Inc., a Perforce company.  
#
# frozen_string_literal: true

require 'spec_helper'

describe 'profile::apache_server' do
  on_supported_os.each do |os, os_facts|
    context "on #{os}" do
      let(:facts) { os_facts }

      it { is_expected.to compile.with_all_deps }
      it { is_expected.to contain_class('apache') }
    end
  end
end
