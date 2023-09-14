# Syncs the current git repository
git pull

# Runs 'npm i' to install any necessary npm packages
npm i

# Runs 'npm run build' to build your project
npm run build

# Runs 'npm run preview' to preview your project in a new window
Start-Process cmd.exe -ArgumentList '/c', 'npm run preview'

# Waits for a few seconds to ensure the preview server has time to start
Start-Sleep -Seconds 10

# Starts Firefox at the specified URL
Start-Process -FilePath "C:\Program Files\Mozilla Firefox\firefox.exe" -ArgumentList "http://localhost:4173/"
