Magento Base
============

Installation
------------

### Clone repo and provision with vagrant:

    git clone --recursive git@github.com:zhibek/magento-base.git
    cd magento-base
    vagrant up
    vagrant provision ## run this if the initial "vagrant up" had any fatal error preventing it completing


### Add the IP to your hosts file:

    10.1.1.60     magento-base.local


### Access the box:

To access the vagrant environment from the terminal, change to the vagrant directory and type 

    vagrant ssh


### View the site:

Visit [http://magento-base.local/](http://magento-base.local/) to view the site.