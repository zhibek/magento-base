# Installs redis from packages

pkg = value_for_platform( [:ubuntu, :debian] => {:default => "redis-server"},
                         [:centos, :redhat] => {:default => "redis"},
                         :default => "redis")
package pkg

# disable service from package
service "redis-server" do
  action [:disable, :stop]
end

ruby_block "set redis path and version" do
  extend Chef::Mixin::ShellOut
  block do
    node.default["redis2"]["daemon"] = node["redis2"]["package"]["paths"].find { |path| File.exists? path } unless node["redis2"]["daemon"]
    node.default["redis2"]["version"] = shell_out("#{node["redis2"]["daemon"]} -v").stdout[/(version |v=)([0-9.]+)/,2]
  end
end

