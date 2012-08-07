include_recipe "haskell-platform"

execute "install yesod" do
  command "cabal install yesod-platform"
  not_if "/home/vagrant/.cabal/bin/yesod version", :user => "vagrant"
  user "vagrant"
  environment({'HOME' => '/home/vagrant'})
end
