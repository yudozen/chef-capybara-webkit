#
# Cookbook Name:: qt
# Recipe:: default
#
# Copyright 2012, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
yum_key "RPM-GPG-KEY-atrpms" do
	url "http://ATrpms.net/RPM-GPG-KEY.atrpms"
	action :add
end

yum_repository "atrpms" do
        url "http://dl.atrpms.net/el5-$basearch/atrpms/testing/"
        action :add
	key "RPM-GPG-KEY-atrpms"
end

# for qt
%w{qt47-webkit qt47-webkit-devel qt47-devel}.each do |pkg|
	package pkg do
		action :install
	end
end

# for capybara-webkit install
execute "ln qmake" do
	command "sudo ln -s /usr/bin/qmake-qt47 /usr/bin/qmake"
	creates "/usr/bin/qmake"
	action :run
end

# for nokogiri capybaraの依存
%w{gcc ruby-devel libxml2 libxml2-devel libxslt libxslt-devel}.each do |pkg|
        package pkg do
                action :install
        end
end

# for capybara-webkit
package "gcc-c++" do
	action :install
end

gem_package "capybara-webkit" do
	action :install
	options "--no-rdoc --no-ri"
end

# Xvfb 仮想ディスプレイ
package "xorg-x11-server-Xvfb" do
	action :install
end

# Ruby interface for Xvfb
gem_package "headless" do
        action :install
        options "--no-rdoc --no-ri"
end

# for headless take_screenshot
package "ImageMagick" do
	action :install
	
end

