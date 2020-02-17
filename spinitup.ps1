az group create -l eastus -n deleteme-myflaskapp-rg
az appservice plan create -g deleteme-myflaskapp-rg -n myflaskappsp123 --is-linux --sku B1
az webapp create -g deleteme-myflaskapp-rg -p myflaskappsp123 -n dcfflaskapp123 --runtime "Python|3.6"

az webapp config set -g deleteme-myflaskapp-rg -n dcfflaskapp123 --startup-file startup.txt

az webapp up -n dcfflaskapp123

# http://dcfflaskapp123.azurewebsites.net