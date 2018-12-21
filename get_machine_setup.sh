wget https://github.com/jlovick/machine_image_files/raw/master/std-files.tar
tar -xvf ./std-files.tar
curl -O https://raw.githubusercontent.com/rockymadden/slack-cli/master/src/slack
chmod a+x ./slack
mv ./slack ./.local/bin/

echo "go to this website and follow instructions to get slack token"
echo "https://github.com/rockymadden/slack-cli"

echo "take slack token and add it to this file ~/.slack-token"

