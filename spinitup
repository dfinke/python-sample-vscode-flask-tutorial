az group create -l eastus -n myflaskapp-rg
az appservice plan create -g myflaskapp-rg -n myflaskappsp --is-linux --sku B1
az webapp create -g myflaskapp-rg -p myflaskappsp -n dcfflaskapp --runtime "Python|3.6"

az webapp config set -g myflaskapp-rg -n dcfflaskapp --startup-file startup.txt

az webapp up -n dcfflaskapp

# http://dcfflaskapp.azurewebsites.net