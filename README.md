Description
===========
[capybara-webkit](https://github.com/thoughtbot/capybara-webkit)をインストールします。  
ヘッドレスで実行するために、headlessをインストールします。

* yum_key "RPM-GPG-KEY-atrpms"
* yum_repository "atrpms"  
capybara-webkitが依存するライブラリqtのyumリポジトリを追加する。

* qt47-webkit qt47-webkit-devel qt47-devel  
qtをインストールする。

* execute "ln qmake"  
qmakeコマンドのリンクをcapybara-webkitが見える場所に作成する。

* gcc ruby-devel libxml2 libxml2-devel libxslt libxslt-devel   
capybaraの依存パッケージをインストールする。

* gcc-c++  
capybara-webkitをコンパイルするためにインストールする。

* gem_package "capybara-webkit"  
capybara-webkitをインストールする。

* xorg-x11-server-Xvfb  
headlessで使用する。

* headless  
headlessをインストールする。

* ImageMagick  
headlessでスクリーンショットを撮るために必要。
