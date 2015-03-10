cd ~/.vim/plugin
ls > ../InstalledPlugins.txt
cd ~/.vim/bundle
ls >> ../InstalledPlugins.txt
for i in `ls`; do
  cd "$i"
  git submodule update --recursive
  cd ..
done
