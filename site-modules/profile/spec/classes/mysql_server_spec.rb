# frozen_string_literal: true

require 'spec_helper'

describe 'profile::mysql_server' do
  on_supported_os.each do |os, os_facts|
    context "on #{os}" do
      let(:facts) { os_facts }
      let(:params) { { mysql_root_password: 'password' } }

      it { is_expected.to compile.with_all_deps }

      it 'accepts mysql configuration parameters' do
        is_expected.to contain_class('profile::mysql_server')
          .with_mysql_root_password('password')
      end

      it 'configures a mysql server' do
        is_expected.to contain_class('mysql::server')
          .with_remove_default_accounts(true)
          .with_restart(true)
      end

      it 'creates a mysql conf file' do
        is_expected.to contain_file('/etc/my.cnf')
        .with_ensure('file')
        .with_owner('root')
        .with_group('root')
        .with_notify('Class[Mysql::Server::Service]')
      end
    end
  end
end
