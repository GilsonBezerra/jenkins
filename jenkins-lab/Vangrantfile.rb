Vagrant.configure("2") do |config|

    config.vm.box = 'centos/7'
    config.vm.hostname = 'jenkins'
    config.network 'forwarded_port', guest:80, host: 8080, hostip: '127.0.0.1'
    config.vm.provision 'shell', path: 'provision.sh'
    config.vm.provider 'virtualbox' do |v|
        v.memory =1024
    end
end