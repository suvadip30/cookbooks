#
# Author:: Seth Chisamore (<schisamo@chef.io>)
# Cookbook Name:: sql_server
# Attribute:: server
#
# Copyright:: Copyright (c) 2011-2016 Chef Software, Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

default['sql_server']['install_dir']    = 'C:\Program Files\Microsoft SQL Server'
default['sql_server']['port']           = 1433

default['sql_server']['instance_name']  = 'SQLEXPRESS'
default['sql_server']['instance_dir']   = 'C:\Program Files\Microsoft SQL Server'
default['sql_server']['shared_wow_dir'] = 'C:\Program Files (x86)\Microsoft SQL Server'
default['sql_server']['feature_list'] = 'SQLENGINE,REPLICATION,SNAC_SDK'
default['sql_server']['agent_account'] =  'NT AUTHORITY\NETWORK SERVICE'
default['sql_server']['agent_startup'] =  'Disabled'
default['sql_server']['rs_mode'] = 'FilesOnlyMode'
default['sql_server']['rs_account'] = 'NT AUTHORITY\NETWORK SERVICE'
default['sql_server']['rs_startup'] = 'Automatic'
default['sql_server']['browser_startup'] = 'Disabled'
default['sql_server']['sysadmins'] = ['Administrator']
default['sql_server']['sql_account'] = 'NT AUTHORITY\NETWORK SERVICE'
default['sql_server']['update_enabled'] = true # applies to SQL Server 2012 and later
default['sql_server']['filestream_level'] = 0
default['sql_server']['filestream_share_name'] = 'MSSQLSERVER'

default['sql_server']['server']['installer_timeout'] = 1500

# Set these to specify the URL, checksum, and package name. Otherwise, the cookbook will
# use default values based on the value of node['sql_server']['version'] and the
# server architecture (x86 or x64).
default['sql_server']['server']['url'] = 'http://automation.snp.com/packages/en_sql_server_2014_developer_edition_with_service_pack_2_x86_dvd_8966063'
default['sql_server']['server']['checksum'] = 'd06f043a051c691b97cf707cdb9598c1cf33dc6d'# '8ebf6bdd805f33265b9a35a129afe99fca64ac0cfe0ffc66311dfe09'
default['sql_server']['server']['package_name'] = 'en_sql_server_2014_developer_edition_with_service_pack_2_x86_dvd_8966063'
default['sql_server']['server_sa_password'] = 'Password@123'
