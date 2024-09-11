# frozen_string_literal: true

require 'spec_helper'

describe 'profile::mysql_server' do
  on_supported_os.each do |os, os_facts|
    context "on #{os}" do
      let(:facts) { os_facts }

      it { is_expected.to compile.with_all_deps }
      
      it "accepts mysql configuration parameters" do
        is_expected.to contain_profile__mysql_server
      end

      it "configures a mysql server" do
        is_expected.to contain_class('mysql::server')
          .with_remove_default_accounts(true)
          .with_restart(true)
      end

    end
  end
end
